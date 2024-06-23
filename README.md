
docker build . -t xpra:latest

docker run --name xpra --rm -it -p 10000:10000 xpra

then open http://localhost:10000 in a browser
