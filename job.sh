#! /bin/bash

RAND=$[RANDOM+1]
mkdir /isilon/data/users/mstamenk/triple-h-mc/gridpacks/condor-test/job_$RAND
cp /isilon/data/users/mstamenk/triple-h-mc/gridpacks/condor-test/*_tarball.tar.xz /isilon/data/users/mstamenk/triple-h-mc/gridpacks/condor-test/job_$RAND
cd /isilon/data/users/mstamenk/triple-h-mc/gridpacks/condor-test/job_$RAND
tar -xavf *_tarball.tar.xz
./runcmsgrid.sh 1000 $RAND 1

