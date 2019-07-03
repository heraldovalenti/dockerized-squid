# Build it
`docker build -t squid .`

# Run it
`docker-compose up -d`

# Test it
Without authentication: `curl -x http://<squid-proxy-server-IP>:3128  -L http://google.com`  
With authentication: `curl -x http://<squid-proxy-server-IP>:3129 --proxy-user <user> -L http://google.com`

# Reference
https://devopscube.com/setup-and-configure-proxy-server/
