# Running Robot Framework inside a container

## Prerequisite
- Docker 24.0.7
- [ppodgorsek/robot-framework](https://hub.docker.com/r/ppodgorsek/robot-framework) [github](https://github.com/ppodgorsek/docker-robot-framework)

## To Run Test Case
docker run -v ./output:/opt/robotframework/reports:Z  -v ./test:/opt/robotframework/tests:Z ppodgorsek/robot-framework:6.1.0

### Test Report would be generated in output folder

