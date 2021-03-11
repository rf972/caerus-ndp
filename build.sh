#! /bin/bash
set -e

printf "\nBuilding dockers\n"
cd spark/docker
./build_docker.sh || (echo "*** docker build failed with $?" ; exit 1)
cd ../..
printf "\nBuilding dockers complete\n"

printf "\nBuilding benchmark\n"
cd benchmark
./build.sh || (echo "*** benchmark build failed with $?" ; exit 1)
cd ..
printf "\nBuilding benchmark complete\n"


printf "\nBuilding datasource\n"
cd datasource
./build.sh || (echo "*** datasource build failed with $?" ; exit 1)
cd ..
printf "\nBuilding datasource complete\n"

printf "\nBuild of ndp complete\n"