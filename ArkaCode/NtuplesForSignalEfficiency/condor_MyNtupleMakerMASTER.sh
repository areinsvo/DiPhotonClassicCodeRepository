#! /bin/bash
source /cvmfs/cms.cern.ch/cmsset_default.csh
export SCRAM_ARCH=slc6_amd64_gcc481
cd /uscms_data/d3/asantra4/Thesis/ggNtuples/Phys14/Package27Oct2015/CMSSW_7_4_14/src/
eval `scramv1 runtime -sh`
cd -
root -l -b << EOF
gSystem->Load("MyNtupleMaker0_C.so") 
TChain chain("ggNtuplizer/EventTree")
chain.Add("GGGGG")
MyNtupleMaker0 Ka(&chain)
Ka.Loop("OOOOO", WWWWW)
.q
EOF
