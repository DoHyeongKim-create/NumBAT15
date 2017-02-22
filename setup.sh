#!/bin/bash

function makeBAT() {
## install dependencies
  sudo apt-get update
  sudo apt-get upgrade
  sudo apt-get install -y python-numpy python-scipy python-matplotlib python-nose gfortran make gmsh libatlas-dev libblas-dev liblapack-dev libsuitesparse-dev
## compile Fortran routines
  cd backend/fortran/
  make
## run tests
  cd ../../tests/
  nosetests

##
  echo ''
  echo '#####################################################################'
  echo '        NumBAT and its dependencies have been installed        '
  echo '               and its test cases calculated.  '
  echo '        Tests outputs are: . passed; E errors; F failed. '
  echo ''
  echo 'NumBAT is brought to you by Bjorn Sturmberg, Kokou Dossou,'
  echo 'Chris Poulton and Michael Steel, with support from CUDOS'
  echo '#####################################################################'
  echo ''

}

makeBAT
