#!/bin/bash

model=$1

if [ -z "$1" ]; then
	echo "Please enter the detector model."
	exit 1
fi

dir=/hsm/ilc/users/yokugawa/preset_N_run/${model}
prefix=IsoLepTagged.eL.pR

if [ ! -d "$dir" ]; then
	echo "The directory does not exist."
	exit 1
else
	hadd -f ${dir}/electron_muon/QQbarProcessor_out/IsoLepTagged.eL.pR_electron_muon_QQbar_MethodAll_082119.root ${dir}/electron/QQbarProcessor_out/root_merge/${prefix}_electron_QQbar.root ${dir}/muon/QQbarProcessor_out/root_merge/${prefix}_muon_QQbar.root
	#hadd -f ${dir}/electron_muon/TrashRecoProcessor_out/before_vtx_recovery/IsoLepTagged.eL.pR_electron_muon_TRP_before_Chi15_NoMethod.root ${dir}/electron/TrashRecoProcessor_out/before_vtx_recovery/root_merge/IsoLepTagged.eL.pR_electron_TRP_before.root ${dir}/muon/TrashRecoProcessor_out/before_vtx_recovery/root_merge/IsoLepTagged.eL.pR_muon_TRP_before.root
	#hadd -f ${dir}/electron_muon/TrashRecoProcessor_out/after_vtx_recovery/IsoLepTagged.eL.pR_electron_muon_TRP_after_Chi15_NoMethod.root ${dir}/electron/TrashRecoProcessor_out/after_vtx_recovery/root_merge/${prefix}_electron_TRP_after.root ${dir}/muon/TrashRecoProcessor_out/after_vtx_recovery/root_merge/${prefix}_muon_TRP_after.root
	#hadd -f ${dir}/electron_muon/particle_tagger_out/IsoLepTagged.eL.pR_electron_muon_PT_Chi15_NoMethod.root ${dir}/electron/particle_tagger_out/root_merge/IsoLepTagged.eL.pR_electron_PT.root ${dir}/muon/particle_tagger_out/root_merge/IsoLepTagged.eL.pR_muon_PT.root
	#hadd -f ${dir}/electron_muon/truth_vertex_finder_out/IsoLepTagged.eL.pR_electron_muon_TVF_Chi15_NoMethod.root ${dir}/electron/truth_vertex_finder_out/root_merge/IsoLepTagged.eL.pR_electron_TVF.root ${dir}/muon/truth_vertex_finder_out/root_merge/IsoLepTagged.eL.pR_muon_TVF.root
	#hadd -f ${dir}/electron_muon/vertex_restorer_out/IsoLepTagged.eL.pR_electron_muon_VR_Chi15_NoMethod.root ${dir}/electron/vertex_restorer_out/root_merge/IsoLepTagged.eL.pR_electron_VR.root ${dir}/muon/vertex_restorer_out/root_merge/IsoLepTagged.eL.pR_muon_VR.root
fi
