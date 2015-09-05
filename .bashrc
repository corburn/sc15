# .bashrc

# Source global definitions
#if [ -f /etc/bashrc ]; then
#	. /etc/bashrc
#fi

# User specific aliases and functions
#PS1="[\u@\h:\w]\\$ "

#newgrp sc15
#cd /data/omor1

export WORKSPACE=$HOME/workspace
mkdir $WORKSPACE
export LOCAL=$HOME/local
mkdir $LOCAL

export PATH=$LOCAL/bin:${PATH}
export LD_LIBRARY_PATH=$LOCAL/lib
export LDFLAGS="-L${LOCAL}/lib"
export CPPFLAGS="-I${LOCAL}/include"

# https://software.intel.com/en-us/articles/performance-tools-for-software-developers-building-netcdf-with-the-intel-compilers
export CC=icc
export CFLAGS='-O3 -xHost -ip -no-prec-div'
#export CFLAGS='-O3 -xHost -ip -no-prec-div -static-intel'
#export CXXFLAGS="$CFLAGS $CXXFLAGS"
export F77=ifort
export FC=ifort
export F90=ifort
export FFLAGS=""
export CXX='icpc -E'
export CPP='icc -E'
export CXXCPP='icpc -E'

export AR=`which xiar`
export LD=`which xild`
export CMAKE_PREFIX_PATH=${LOCAL}
export CMAKE_INSTALL_PREFIX=${LOCAL}


# Package libevent was not found in the pkg-config search path.
# Perhaps you should add the directory containing `libevent.pc'
# to the PKG_CONFIG_PATH environment variable
export PKG_CONFIG_PATH=${LOCAL}/lib/pkgconfig


#alias gcc="echo 'bashrc gcc alias'; exit 1"

#export MAKEFLAGS=-j8

module load intel-mpi/5.0 

