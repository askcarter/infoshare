## Get the code
```
git clone https://github.com/askcarter/infoshare
go version
go get google.golang.org/grpc
```

## Test it out
```
cd infoshare
go run client.go 
go run client.go list
```

## Run the node server
```
npm install grpc
node server.js 
```

## Run the go client
```
go run client.go
go run client.go list
```

## Dockerize the server
docker build -t <your-dockerhub-username>/infoshare-server-node:1.0.0 .
docker run -d <your-dockerhub-username>/infoshare-server-node:1.0.0 .
docker ps <CID> | grep IPAd
go run client.go --address <IPAddress>:50051 <commands>


