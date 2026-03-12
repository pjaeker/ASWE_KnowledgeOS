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
  let privateKeyObject;
  let publicKeyObject;

  if (config.oauth.jwtPrivateKey) {
    privateKeyObject = crypto.createPrivateKey(config.oauth.jwtPrivateKey);
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
  header = {}
}) {
  return jwt.sign(payload, keyMaterial.privateKeyPem, {
    algorithm: keyMaterial.algorithm,
    keyid: keyMaterial.kid,
    issuer,
    audience,
    subject,
    expiresIn,
    header
  });
}

export function verifyJwt({ token, keyMaterial, issuer, audience }) {
  return jwt.verify(token, keyMaterial.publicKeyPem, {
    algorithms: [keyMaterial.algorithm],
    issuer,
    audience
  });
}
