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

#°°°°°° FolderName °°°°°°#

arr=
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

#PiconFun(){
#    
#}

#SkinFun(){
#    
#    
#}
EmuFun(){
    gitpro="https://github.com/ismail9875/Enigma2_Personnal_files/raw/main/emulators/"
    msgEmu="Please wait download & install Emu ..."
    #°°°°°°°°°°°°°°° Plugins Links °°°°°°°°°°°°°
    oscam="enigma2-softcams-oscam-all-images_11.725-emu-r798-arm+mips_all.ipk"
    ncam="enigma2-plugin-softcams-ncam_13.8-r0_all.ipk"
    ospwr="enigma2-plugin-softcams-powercam-oscam_11725-emu-r798_all.ipk"
    npwr="enigma2-plugin-softcams-powercam-ncam_13.8-r0_all.ipk"
    nUltra="enigma2-plugin-softcams-ultracam-ncam_13.8-r0_all.ipk"
    oUltra="enigma2-plugin-softcams-ultracam-oscam_11725-emu-r798_all.ipk"
    goscam="enigma2-plugin-softcams-gosatplus-oscam_11725-emu-r798_all.ipk"
    gncam="enigma2-plugin-softcams-gosatplus-ncam_13.8-r0_all.ipk"
    suOs="enigma2-plugin-softcams-supcam-oscam_11725-emu-r798_all.ipk"
    sunc="enigma2-plugin-softcams-ultracam-ncam_13.8-r0_all.ipk"
    echo """
    Choice a cam to install 
    •••••••••••••••••••••••••••••••••••••••••••••
    •   [01] OSCam                              •
    •   [02] NCam                               •
    •   [03] OSCam-PowerCam                     •
    •   [04] NCam-PowerCam                      •
    •   [05] OSCam-UltraCam                     •
    •   [06] NCam-UltraCam                      •
    •   [07] gosat-oscam                        •
    •   [08] gosat-ncam                         •
    •   [09] SupCam-OSCam                       •
    •   [10] SupCam-NCam                        •
    •••••••••••••••••••••••••••••••••••••••••••••
    """
    read Emu
    if [[ ${Emu} -eq 1 ]]; then
    echo ${msgEmu}
        ${cmd} ${gitpro}${oscam} && ${cmd1} ${oscam}
    elif [[ ${Emu} -eq 2 ]]; then
    echo ${msgEmu}
        ${cmd} ${gitpro}${ncam} && ${cmd1} ${oscam}
    elif [[ ${Emu} -eq 3 ]]; then
    echo ${msgEmu}
        ${cmd} ${gitpro}${ospwr} && ${cmd1} ${ospwr}
    elif [[ ${Emu} -eq 4 ]]; then
    echo ${msgEmu}
        ${cmd} ${gitpro}${npwr} && ${cmd1} ${npwr}
    elif [[ ${Emu} -eq 5 ]]; then
    echo ${msgEmu}
        ${cmd} ${gitpro}${oUltra} && ${cmd1} ${oUltra}
    elif [[ ${Emu} -eq 6 ]]; then
    echo ${msgEmu}
        ${cmd} ${gitpro}${nUltra} && ${cmd1} ${nUltra}
    elif [[ ${Emu} -eq 7 ]]; then
    echo ${msgEmu}
        ${cmd} ${gitpro}${goscam} && ${cmd1} ${goscam}
    elif [[ ${Emu} -eq 8 ]]; then
    echo ${msgEmu}
        ${cmd} ${gitpro}${gncam} && ${cmd1} ${gncam}
    elif [[ ${Emu} -eq 9 ]]; then
    echo ${msgEmu}
        ${cmd} ${gitpro}${suOs} && ${cmd1} ${suOs}
    elif [[ ${Emu} -eq 10 ]]; then
    echo ${msgEmu}
        ${cmd} ${gitpro}${sunc} && ${cmd1} $sunc}
    else 
        echo "Invalide Choice"
    fi
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
EmuFun
fi
echo """
•••••••••••••••••••••••••••••
•       Restaring GUI       •
•••••••••••••••••••••••••••••
"""
exit 0