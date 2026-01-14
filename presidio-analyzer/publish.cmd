
@echo off


SET BUILD=0
SET PUBLISH=1


echo -------------------------------------------------------------------------------
echo Running Container Publish Script for Presidio Analyzer
echo -------------------------------------------------------------------------------
echo 


if %BUILD%==1 (
echo Building Docker Container presidio-analyzer-de
docker build -f Dockerfile -t biobscontainers.azurecr.io/biobs/presidio-analyzer-de:latest . 
)

IF %PUBLISH%==1 (
echo Publishing Docker Container presidio-analyzer-de
docker push biobscontainers.azurecr.io/biobs/presidio-analyzer-de:latest
)
echo
echo -------------------------------------------------------------------------------
echo Finished!
echo -------------------------------------------------------------------------------