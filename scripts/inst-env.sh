#!/bin/bash

export PRJHOME=$PWD

# RISCV 
export CHIPYARD_TOOLCHAIN_SOURCED=1
export RISCV=/home/ff/eecs251b/sp22-workspace/riscv-tools-install
export PATH=${RISCV}/bin:${PATH}
export LD_LIBRARY_PATH=${RISCV}/lib${LD_LIBRARY_PATH:+":${LD_LIBRARY_PATH}"}

# Hammer
#export LANG=en_US.UTF-8
#export LC_ALL=en_US.UTF-8
#export HAMMER_HOME=$PWD/vlsi/hammer
#source $HAMMER_HOME/sourceme.sh

# VCS
export SNPSLMD_LICENSE_FILE=27005@license-srv.eecs.berkeley.edu
export LM_PROJECT=eecs251b
export SYNOPSYS_ROOT=/share/instsww/synopsys-new
export VCS_HOME=/share/instsww/synopsys-new/vcs/P-2019.06
export VCS_PATH=${VCS_HOME}/bin
export PATH=${VCS_PATH}:$PATH

# PEX
export PDK_DIR=/home/ff/eecs251b/sp22-workspace/asap7/asap7PDK_r1p7
export MGC_HOME=/share/instsww/mgc/calibre2017/aoi_cal_2017.4_35.25
export CALIBRE_HOME=/share/instsww/mgc/calibre2017/aoi_cal_2017.4_35.25
export PATH=$CALIBRE_HOME/bin:$PATH
export MGLS_LICENSE_FILE="1717@license-srv.eecs.berkeley.edu"

# HSPICE
export HSPICE_HOME=/home/ff/ee241/tools/hspice/G-2012.06-SP1
export PATH=$HSPICE_HOME/hspice/bin:$PATH

# LIBERATE
export ALTOSHOME=/share/instsww/cadence/LIBERATE
export PATH=$ALTOSHOME/bin:$ALTOSHOME/tools.lnx86/spectre/bin:$PATH
export CDS_AUTO_64BIT=ALL

# JOULES
export JLSHOME=/share/instsww/cadence/JLS191
export PATH=$JLSHOME/bin:$PATH

# Simvision
export PATH=/share/instsww/cadence/INCISIVE/tools/simvision/bin:$PATH

# Cadence Install with HSPICE integration
export CDS_Netlisting_Mode=Analog
export CDS_LOAD_ENV=CSF
export SKIP_CDS_DIALOG
export CDS_INST_DIR="/share/instsww/cadence/IC617"
export CDSHOME=$CDS_INST_DIR
export CDS_ROOT=$CDS_INST_DIR
export CDS=$CDS_INST_DIR
export OA_HOME=$CDS_INST_DIR/share/oa/
export PATH=$CDS_INST_DIR/tools/dfII/bin:$CDS_INST_DIR/tools/bin:$CDS_INST_DIR/bin/cdsdoc:$PATH

# Hot fix for servers returning "unknown" when sysname called
export OA_UNSUPPORTED_PLAT=linux_rhel50_gcc48x
