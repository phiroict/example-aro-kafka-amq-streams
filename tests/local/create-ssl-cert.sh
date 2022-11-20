mkdir -p ./certs
cd ./certs
openssl req -x509 -newkey rsa:4096 -keyout key.pem -out ca.crt -sha256 -nodes -days 365 -subj '/C=NZ/ST=Auckland/L=Auckland/O=phiroict/OU=Org/CN=localhost'
keytool -import -alias kafka -file ca.crt -storetype PKCS12 -keystore client.truststore.jks
openssl pkcs12 -export -inkey key.pem -in ca.crt -out key.p12
keytool -importkeystore  -destkeystore client.keystore.jks -srckeystore key.p12 -srcstoretype PKCS12
cd -