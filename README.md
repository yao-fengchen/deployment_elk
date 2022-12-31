# deployment_elk
deployment_elk shows use yao-fengchen/collector, yao-fengchen/processor and elasticsearch, kibana to monitor, process, storage, diaplay potentially malicious activity in container environments.
# setup
```
git clone https://github.com/yao-fengchen/deployment_elk.git
```
# build
deployment_elk use make to control building, running, stopping and cleaning up the repository. The main Makefile resides in root of the working directory. There are dedicated Makefiles in all sub-directories. Every Makefile supports five targets:

- **build** for compiling code and fetching and building docker images
- **run** for running the demonstrator
- **stop** for stopping the containers
- **clean** for deleting the containers and removing the docker images