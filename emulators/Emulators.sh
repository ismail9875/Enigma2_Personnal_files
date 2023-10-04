#!/bin/sh
#≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈#
#≈≈≈≈≈≈≈≈≈≈≈≈ Emulators Installer ≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈#
#≈≈≈≈≈≈≈≈≈≈≈≈  github/ismail9875  ≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈#
#≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈#
OpenAtvFix="wget -O - -q http://updates.mynonpublic.com/oea/feed | bash"
MYMSG="Please Wait Emulator will download & install."

if [[ $STB_IMAGE = 'openatv' ]]; then
    ${OpenAtvFix}
else


    #---- Commands ----#
    CMD="curl"
    cmd="opkg install"
    subcmd="-O - | /bin/sh"

    #----° Links °----#
oscam=http://download1322.mediafire.com/th8sdpbj77sgj3L8JsOBnjdb14hgB6ldwZjtfyHh8CH2Wq56F0k9nsrk0jHlQS1K8YudP9V8wyY99GRlNliIhngc38si1Wbd8ohGsS-HT0wlM-Pzg22PNz1XhT61dPFi2_btC8rzLfBTZ-I8yqQpl6U2aFi94NiM6LzGkl_J7qnAd3E/2aq3en5y5tsygh6/enigma2-plugin-softcams-gosatplus-ncam_all.ipk
    #oscam=http://178.63.156.75/paneladdons/OSCamEmus/11725/enigma2-softcams-oscam-all-images_11.725-emu-r798-arm+mips_all.ipk
    ncam=http://178.63.156.75/paneladdons/ARMbasedEMU/ncam/13.8/enigma2-plugin-softcams-ncam_V13.8-r0_all.ipk
    cccam=http://178.63.156.75/paneladdons/ARMbasedEMU/cccam/CCcam2.3.9/enigma2-softcams-cccam-all-images_2.3.9-r2-RAED_OE2.0_all.ipk
    PowerArmP2=http://files.powercam.me/powercam_v2-icam-arm.sh
    PowerArmP3=http://files.powercam.me/powercam_v2-icam-arm_py3.sh
    PowerMipsP2=http://files.powercam.me/powercam_v2-icam-mipsel.sh
    PowerMipsP3=http://files.powercam.me/powercam_v2-icam-mipsel.sh

  # ---° Cheking Python °---#
 # [ PYTHON_VERSION > 2 ]

#----° MainScript °----#

printf "Choice a Emulator To Install : "
echo """
[1] Oscam   [2] NCam    [3] CCcam
[4] PowerCam
"""; read Answer

    if [[ ${Answer} -eq 1 ]]; then
        echo $MYMSG ...
      echo pwd
      					mkdir Oscam
        sleep 2
      cd /oscam
        ${CMD} ${oscam} --output /oscam/oscam.ipk
     cd ../
    elif [[ ${Answer} -eq 2 ]]; then
        echo $MYMSG ...
        sleep 2
        ${cmd} ${ncam}
    elif [[ ${Answer} -eq 3 ]]; then
        echo $MYMSG ...
        sleep 2
        ${cmd} ${cccam}
    
    #elif [[ ${Answer} -eq 4 ]]
        #cheking Python version & Processor type
        if [[ $PYTHON_VERSION -gt 3 ]]; then
            if [[ ${HOSTNAME} = 'arm' ]]; then
                ${CMD} ${PowerArmP4} ${subcmd}
            elif [[ ${HOSTNAME} = 'SH4' ]]; then
                ${CMD} ${PowerMipsP3}
            #elif [[  ]]; then
            fi
        fi
    fi
fi
exit 0