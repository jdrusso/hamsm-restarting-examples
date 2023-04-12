#!/bin/bash
set -x
cd $WEST_STRUCT_DATA_REF
cat pcoord.init > $WEST_PCOORD_RETURN 

cp $WEST_SIM_ROOT/common_files/bstate.pdb $WEST_TRAJECTORY_RETURN
cp $WEST_STRUCT_DATA_REF/basis.xml $WEST_TRAJECTORY_RETURN

cp $WEST_SIM_ROOT/common_files/bstate.pdb $WEST_RESTART_RETURN
cp $WEST_STRUCT_DATA_REF/basis.xml $WEST_RESTART_RETURN/parent.xml

#cd $WEST_SIM_ROOT/common_files || exit 1
#ln -sfv $WEST_STRUCT_DATA_REF ./basis.xml

#Calculate pcoord with MDAnalysis
#python $WEST_SIM_ROOT/common_files/get_init.py &&

# Clean up
#rm -f dist.dat
