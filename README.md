# voerr



## Setup

* Build the docker image with the `scripts/build.bat` script 
* Run the docker image with the `scripts/run.bat` script
* Execute `foreman start` inside the image to run flask, webpack and livereload

### Setup docker

1. Download and install [Docker Toolbox](https://www.docker.com/toolbox)  
2. Run `Docker Quickstart Terminal` to setup a default docker machine (this may take a while)  
3. Open powershell  
4. execute `docker-machine ls` to see the status and ip of the default machine  
5. execute `docker-machine env default --shell=powershell | Invoke-Expression`  
6. execute `./scripts/build.bat` to build the docker image named `voerr-dev`  
7. execute `./scripts/run.bat` to run the docker  
8. open `http://<machine_ip>:5000` to view the website. (default ip is `192.168.99.100`, use `docker-machine ls` to check)
