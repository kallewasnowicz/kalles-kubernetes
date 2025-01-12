# Creating Sealed-Secrets

## Converting Plain Password to Base64
``echo -n "plain-secret-password" | base64``

## Converting Base64-Secret-File to Sealed-Secret
``kubeseal --format yaml < cert_base64.yaml > cert-sealed.yaml``

## Fetch Publickey (optional)
``kubeseal --fetch-cert > public-key-cert.pem``
