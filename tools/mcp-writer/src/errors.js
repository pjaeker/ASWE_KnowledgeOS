export class HttpError extends Error {
  constructor(statusCode, message, details = null) {
    super(message);
    this.name = "HttpError";
    this.statusCode = statusCode;
    this.details = details;
  }
}

export function toErrorPayload(error) {
  if (error instanceof HttpError) {
    return {
      ok: false,
      error: {
        type: error.name,
        message: error.message,
        details: error.details
      }
    };
  }

  return {
    ok: false,
    error: {
      type: error?.name || "Error",
      message: error?.message || "Unknown error"
    }
  };
}
