#! /bin/bash

RAND=$[RANDOM+1]
mkdir /isilon/data/users/mstamenk/triple-h-mc/gridpacks/condor-test/job_$RAND
cp /isilon/data/users/mstamenk/triple-h-mc/gridpacks/condor-test/GF_HHH_SM_c3_0_d4_0_slc7_amd64_gcc700_CMSSW_10_6_19_tarball.tar.xz /isilon/data/users/mstamenk/triple-h-mc/gridpacks/condor-test/job_$RAND
cd /isilon/data/users/mstamenk/triple-h-mc/gridpacks/condor-test/job_$RAND
tar -xavf GF_HHH_SM_c3_0_d4_0_slc7_amd64_gcc700_CMSSW_10_6_19_tarball.tar.xz
./runcmsgrid.sh 1000 $RAND 1

