#!/bin/bash

# set the number of nodes and processes per node
#PBS -l select=24:mpiprocs=8

# set max wallclock time
#PBS -l walltime=100:00:00

# set name of job
#PBS -N se256-beta

# mail alert at (b)eginning, (e)nd and (a)bortion of execution
#PBS -m bea

# send mail to the following address
#PBS -M krish2100@gmail.com

# use submission environment
#PBS -V

# start job from the directory it was submitted
#cd $PBS_O_WORKDIR

# define MPI host details
#. enable_hal_mpi.sh

# run through the mpirun launcher


./preprocess.sh $1 $3
./init.sh $1 $2 $3
./train.sh $1 $2 $3
./test.sh $1 $2 $3

