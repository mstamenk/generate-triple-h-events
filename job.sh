#! /bin/bash

RAND=$[RANDOM+1]
DIRPATH=/isilon/data/users/mstamenk/triple-h-mc/gridpacks/condor-run/GF_HHH_SM/generate-triple-h-events/

mkdir $DIRPATH/job_$RAND
cp $DIRPATH/*_tarball.tar.xz $DIRPATH/job_$RAND
cd $DIRPATH/job_$RAND
tar -xavf *_tarball.tar.xz
./runcmsgrid.sh 1000 $RAND 1

