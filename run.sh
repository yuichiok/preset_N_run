#!/bin/bash

inputxml=preset_N_run.xml

# small or large
#model=l5
model=s5

gearxml=gear_ILD_${model}_v02.xml

# yyxyev
#processID=108670
# yyxylv
#processID=108675

# eLpR
#processID=eL.pR
#processID=I108670

# type isolated lepton
isolep=electron
#isolep=muon
#isolep=tau
#isolep=muon_tau


##===== New sample (large, new vertexing) =====##

dirin=/hsm/ilc/users/yokugawa/
processID=default

if [ "$model" == "l5" ]; then
	if [ "$isolep" == "electron" ]; then
		dirin=/hsm/ilc/users/yonamine/physics/lcfiplus/vertexing_6f_ttbar/
		#processID=I108668
		processID=I108670
	else
		dirin=/home/ilc/yonamine/work/Yuichi/test20190328/run/slcio/
		processID=eL.pR
	fi
elif [ "$model" == "s5" ]; then
	if [ "$isolep" == "electron" ]; then
		dirin=/hsm/ilc/users/yonamine/physics/lcfiplus/vertexing_6f_ttbar_s5/
		#processID=I108668
		processID=I108670
	else
		dirin=/home/ilc/yonamine/work/Yuichi/test20190328/run_s5/slcio/
		processID=eL.pR
	fi
fi


# electron sample
#dirin=/hsm/ilc/users/yonamine/physics/lcfiplus/vertexing_6f_ttbar/

# muon and tau sample
#dirin=/home/ilc/yonamine/work/Yuichi/test20190328/run/slcio/

nfile=-1
#nfile=12
#nfile=1
#nperjob=50
nperjob=3
./submit2 $dirin $processID 1 $nfile $nperjob $inputxml $gearxml $isolep $model
