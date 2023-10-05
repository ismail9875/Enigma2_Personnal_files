#!/bin/sh
#•••••••••••••••••••••••••••••••••••••••••••••••••••••••••#
#•••••••••      Ismail Enigma2 plugins store      ••••••••#
#•••••••••          GitHub/ismail9875             ••••••••#
#•••••••••             05/Oct/2023                ••••••••#
#•••••••••••••••••••••••••••••••••••••••••••••••••••••••••#

echo """
°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°
°°                                                             °°
°°    #####   ####    #####   #####    ###    ####    #####    °°
°°    #           #   #         #     #   #   #   #   #        °°
°°    ####     ###    #####     #     #   #   ####    ####     °°
°°    #       #           #     #     #   #   #   #   #        °°
°°    #####    ####   #####     #      ###    #    #  #####    °°
°°                                                             °°
°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°
"""
cmd="wget "
cmd1="opkg install "
msg="Please Wait ..."
#°°°°°° Functions
plugFun(){
    ajpanel=
    drmpanel=
    satvenus=
    Ipaudio=
    ipaudiopro=
    ip2sat=
    MultiStalker=
    grabber=
    clearmem=
    Xtreamity=
    Jedimaker=
    Flush=
    QuickS=
    Free=
    addons=
  echo """
  ••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••
  • [01] AjPanel       | [02] DreamSatPanel     | [03] SatVenus   ••
  • [04] IpAudio       | [05] IpAudioPro        | [06] Ip2Sat     ••
  • [07] MultiStalker  | [08] EpgGrabber        | [09] Clearmem   ••
  • [10] Xtreamity     | [11] JediMakerXtrm     | [12] CacheFlush ••
  • [13] QuickSignal   | [14] FreeCCcam         | [15] TvAddons   ••
  • [16] Permanetclock | [17] XtraEvent         | [18] ••
  ••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••
  """; read PlugAns
  if [[ ${PlugAns} -eq 1 ]]; then
    echo ${msg}
    ${cmd} ${ajpanel}
  elif [[ ${PlugAns} -eq 2 ]]; then
    echo ${msg}
    ${cmd} ${drmpanel}
  fi
}

PiconFun(){
    
}

SkinFun(){
    
    
}

echo """
    •••••••••••••••••••••••••••••••••••••••
    •                                     •
    • [1] Plugins         | [2] Picons    •
    • [3] Skins           | [4] Channels  •
    •           [5] Emulators             •
    •                                     •
    •••••••••••••••••••••••••••••••••••••••
"""; read ChoiceSh

if [[ ${ChoiceSh} -eq 1 ]]; then
plugFun
elif [[ ${ChoiceSh} -eq 2 ]]; then
PiconFun
elif [[ ${ChoiceSh} -eq 3 ]]; then
Skins 
elif [[ ${ChoiceSh} -eq 4 ]]; then
Settings
elif [[ ${ChoiceSh} -eq 5 ]]; then
Cams
fi
exit 0