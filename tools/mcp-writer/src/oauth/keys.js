import crypto from "crypto";
import jwt from "jsonwebtoken";

function createKid(publicJwk) {
  const digest = crypto
    .createHash("sha256")
    .update(`${publicJwk.n}.${publicJwk.e}`)
    .digest("base64url");

  return digest.slice(0, 16);
}

function exportPrivateKeyPem(keyObject) {
  return keyObject.export({
    type: "pkcs8",
    format: "pem"
  }).toString();
}

function exportPublicKeyPem(keyObject) {
  return keyObject.export({
    type: "spki",
    format: "pem"
  }).toString();
}

export function createSigningKeyMaterial(config) {
  const oauthJwtPrivateKey = String(config.oauth?.jwtPrivateKey || "").trim();
  const githubPrivateKey = String(config.github?.privateKey || "").trim();
  let privateKeyObject;
  let publicKeyObject;
  let source = "generated_ephemeral";

  if (oauthJwtPrivateKey) {
    privateKeyObject = crypto.createPrivateKey(oauthJwtPrivateKey);
    source = "oauth_jwt_private_key";
    publicKeyObject = crypto.createPublicKey(privateKeyObject);
  } else if (githubPrivateKey) {
    // Reuse the existing stable GitHub App key when no dedicated OAuth key is configured.
    privateKeyObject = crypto.createPrivateKey(githubPrivateKey);
    source = "github_private_key_fallback";
    publicKeyObject = crypto.createPublicKey(privateKeyObject);
  } else {
    const generatedPair = crypto.generateKeyPairSync("rsa", {
      modulusLength: 2048
    });

    privateKeyObject = generatedPair.privateKey;
    publicKeyObject = generatedPair.publicKey;
  }

  const publicJwk = publicKeyObject.export({ format: "jwk" });
  const kid = createKid(publicJwk);

  return {
    algorithm: "RS256",
    kid,
    source,
    privateKeyPem: exportPrivateKeyPem(privateKeyObject),
    publicKeyPem: exportPublicKeyPem(publicKeyObject),
    jwks: {
      keys: [
        {
          ...publicJwk,
          use: "sig",
          alg: "RS256",
          kid
        }
      ]
    }
  };
}

export function signJwt({
  payload,
  keyMaterial,
  issuer,
  audience,
  subject,
  expiresIn,
  header = {},
  noTimestamp = false
}) {
  const signOptions = {
    algorithm: keyMaterial.algorithm,
    keyid: keyMaterial.kid,
    issuer,
    audience,
    header,
    noTimestamp
  };

  if (subject) {
    signOptions.subject = subject;
  }

  if (expiresIn !== undefined && expiresIn !== null && expiresIn !== "") {
    signOptions.expiresIn = expiresIn;
  }

  return jwt.sign(payload, keyMaterial.privateKeyPem, signOptions);
}

export function verifyJwt({ token, keyMaterial, issuer, audience }) {
  return jwt.verify(token, keyMaterial.publicKeyPem, {
    algorithms: [keyMaterial.algorithm],
    issuer,
    audience
  });
}
