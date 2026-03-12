import http from "node:http";

function normalizePath(value) {
  const path = String(value || "/");
  if (!path || path === "/") {
    return "/";
  }
  return path.startsWith("/") ? path : `/${path}`;
}

function matchMount(pathname, mountPath) {
  const mount = normalizePath(mountPath);
  if (mount === "/") {
    return pathname;
  }
  if (pathname === mount) {
    return "/";
  }
  if (pathname.startsWith(`${mount}/`)) {
    return pathname.slice(mount.length) || "/";
  }
  return null;
}

function decorateResponse(res) {
  if (res.__decorated) {
    return res;
  }

  res.__decorated = true;
  res.set = function set(name, value) {
    res.setHeader(name, value);
    return res;
  };
  res.status = function status(code) {
    res.statusCode = code;
    return res;
  };
  res.json = function json(payload) {
    if (!res.headersSent) {
      res.setHeader("Content-Type", "application/json; charset=utf-8");
    }
    res.end(JSON.stringify(payload));
    return res;
  };

  return res;
}

async function runHandlers(handlers, req, res) {
  let index = 0;

  async function next(error) {
    if (error) {
      throw error;
    }

    const handler = handlers[index++];
    if (!handler) {
      return;
    }

    if (handler && handler.kind === "json-middleware") {
      return next();
    }

    await handler(req, res, next);
  }

  await next();
}

async function dispatch(container, req, res, pathname) {
  for (const route of container.__routes) {
    if (route.method === "USE") {
      if (route.path === null) {
        continue;
      }

      const subPath = matchMount(pathname, route.path);
      if (subPath === null) {
        continue;
      }

      for (const handler of route.handlers) {
        if (handler && handler.__routes) {
          const handled = await dispatch(handler, req, res, subPath);
          if (handled || res.writableEnded) {
            return true;
          }
        }
      }

      continue;
    }

    if (route.method !== req.method) {
      continue;
    }

    if (normalizePath(route.path) !== pathname) {
      continue;
    }

    await runHandlers(route.handlers, req, res);
    return true;
  }

  return false;
}

function createContainer() {
  return {
    __routes: [],
    use(pathOrHandler, ...handlers) {
      if (typeof pathOrHandler === "string") {
        this.__routes.push({ method: "USE", path: pathOrHandler, handlers });
      } else {
        this.__routes.push({ method: "USE", path: null, handlers: [pathOrHandler, ...handlers] });
      }
      return this;
    },
    get(path, ...handlers) {
      this.__routes.push({ method: "GET", path, handlers });
      return this;
    },
    post(path, ...handlers) {
      this.__routes.push({ method: "POST", path, handlers });
      return this;
    },
    listen(port, callback) {
      const server = http.createServer(async (req, res) => {
        const url = new URL(req.url, `http://127.0.0.1:${port}`);
        const pathname = normalizePath(url.pathname);
        req.protocol = "http";
        req.path = pathname;
        req.body = {};
        decorateResponse(res);

        try {
          const handled = await dispatch(this, req, res, pathname);
          if (!handled && !res.writableEnded) {
            res.statusCode = 404;
            res.end("Not Found");
          }
        } catch (error) {
          if (!res.writableEnded) {
            res.statusCode = 500;
            res.end(String(error && error.stack ? error.stack : error));
          }
        }
      });

      return server.listen(port, callback);
    }
  };
}

function express() {
  return createContainer();
}

express.json = function json(options) {
  return { kind: "json-middleware", options };
};

export function Router() {
  return createContainer();
}

export default express;
