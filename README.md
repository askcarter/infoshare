## Get the code
```
mkdir -p ~/gopath/src/github.com/askcarter
cd ~/gopath/src/github.com/askcarter
git clone https://github.com/askcarter/infoshare
```

## Test it out
```
cd infoshare
go get google.golang.org/grpc
go run client.go 
go run client.go list
```

## Run the node server
```
npm install grpc
node server.js &
```

## Run the go client
```
go run client.go
go run client.go list
go run client.go insert 2 "The Three Musketeers" "Alexandre Dumas"
go run client.go get 2
go run client.go delete 2
```

## Dockerize the server
docker build -t <your-dockerhub-username>/infoshare-server-node:1.0.0 .
docker run -d <your-dockerhub-username>/infoshare-server-node:1.0.0
docker ps 
docker inspect <ContainerID> | grep IPAd
go run client.go --address <IPAddress>:50051 <commands>

## [Optional] Upload your server image to a repository
docker login
docker push <your-dockerhub-username>infoshare-server-node:1.0.0

## Cleanup 
### Docker images
docker ps -a
docker stop <ContainerID>
docker rm <ContainerID>
docker images
docker rmi <ImageID>

### Local Server Process
jobs
kill <JobID>
