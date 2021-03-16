# GET /README.md

echo "# Node.js Docker image major versions"

wget -q https://registry.hub.docker.com/v1/repositories/node/tags -O - | jq ".[].name" | perl -nle 'print "* $1" if /^"(\d+\.[\d+\.?]+)"/'