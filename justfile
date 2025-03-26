up:
  docker build -t cidr-visualiser .
  docker rm -f local-cidr-visualiser || true
  docker run -it --name local-cidr-visualiser -p 19090:80 -d cidr-visualiser
  echo "http://localhost:19090"
