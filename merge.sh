#!/bin/bash

if [ -z "$1" ] || [ -z "$2" ]; then
	echo "Please enter isolated lepton type."
	exit 1
fi

model=$1
isolep=$2
dir=/hsm/ilc/users/yokugawa/preset_N_run/${model}/${isolep}

if [ ! -d "$dir" ]; then
	echo "The directory does not exist."
	exit 1
else
	echo ${dir}
	hadd -f ${dir}/QQbarProcessor_out/root_merge/IsoLepTagged.eL.pR_${isolep}_QQbar.root ${dir}/QQbarProcessor_out/*.root
#	hadd -f ${dir}/TrashRecoProcessor_out/before_vtx_recovery/root_merge/IsoLepTagged.eL.pR_${isolep}_TRP_before.root ${dir}/TrashRecoProcessor_out/before_vtx_recovery/*.root
#	hadd -f ${dir}/TrashRecoProcessor_out/after_vtx_recovery/root_merge/IsoLepTagged.eL.pR_${isolep}_TRP_after.root ${dir}/TrashRecoProcessor_out/after_vtx_recovery/*.root
#	hadd -f ${dir}/particle_tagger_out/root_merge/IsoLepTagged.eL.pR_${isolep}_PT.root ${dir}/particle_tagger_out/*.root
#	hadd -f ${dir}/truth_vertex_finder_out/root_merge/IsoLepTagged.eL.pR_${isolep}_TVF.root ${dir}/truth_vertex_finder_out/*.root
#	hadd -f ${dir}/vertex_restorer_out/root_merge/IsoLepTagged.eL.pR_${isolep}_VR.root ${dir}/vertex_restorer_out/*.root
fi

