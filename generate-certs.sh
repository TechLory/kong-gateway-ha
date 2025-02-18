# RUN BEFORE THE DOCER-COMPOSE UP!
# This script generates a certificates for the domain in /certs directory.
# The /certs directory will be created if it does not exist.

if [ -d "certs" ]; then
  rm -rf certs/*
else
  mkdir -p certs
fi

cd certs
DOMAIN=localhost
openssl genpkey -algorithm RSA -out $DOMAIN.key
#If you run this command in Windows Git Bash you need to use a double slash (//) in the -subj option, instead of the single one (/). Check it based on your environment.
openssl req -new -key $DOMAIN.key -out $DOMAIN.csr -subj "//CN=$DOMAIN" 
openssl req -x509 -in $DOMAIN.csr -key $DOMAIN.key -out $DOMAIN.crt -days 365
