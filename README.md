# ffserver_demo

#Build using command
docker build -t nas2docker/ffserver_demo --build-arg http_proxy=$http_proxy --build-arg https_proxy=$https_proxy .

#Run using command 
docker run -p 554:554 -p 555:555 -ti --net=host nas2docker/ffserver_demo