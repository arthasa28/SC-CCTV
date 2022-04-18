#!/bin/bash
#///////////////////////////////////////////////////////////////////////////////
#///////////////////////////////////////////////////////////////////////////////
#////                       _            _  __                              ////
#////                      | |          (_)/ _|                             ////
#////                   ___| |_   _  ___ _| |_ ___ _ __                     ////
#////                  |_  / | | | |/ __| |  _/ _ \ '__|                    ////
#////                   / /| | |_| | (__| | ||  __/ |                       ////
#////                  /___|_|\__,_|\___|_|_| \___|_|                       ////
#////                                                                       ////
#///////////////////////////////////////////////////////////////////////////////
#///////////////////////////////////////////////////////////////////////////////
eye(){
    echo "   ..  ...  ...  ...  ..      .          ..  ....."
    sleep 0.03
    echo "  ...  .... .... ....     %/\      .. ..  .....  ."
    sleep 0.03
    echo " .  ...  ...  ... ..     %/  &.     ..  ......  .."
    sleep 0.03
    echo " ..  ....  ..  ...     .%/     \        ...  ....."
    sleep 0.03
    echo " ....  ....  ..      .%*/       &.     ...  ..... "
    sleep 0.03
    echo " ......  .... .    .%.*/  ArthA_  \      . ....  ."
    sleep 0.03
    echo "   .......       .%***/ -'       '.&.     ...  ..."
    sleep 0.03
    echo " ..     ..     .%****/  ._.   '~::,  \      . . .."
    sleep 0.03
    echo " .......     .%*****/._'  .' ^':,  :.,&.     . .. "
    sleep 0.03
    echo " ...       .%******/',_-^{  ( )  }    :.\       .."
    sleep 0.03
    echo "   ..     .%******/%^    '.     .'    ;.&.       "
    sleep 0.03
    echo " .     .%********/;        ".,."        ;#. \     "
    sleep 0.03
    echo "      .%********/  ~'.,,.          ,.-'^  &.      "
    sleep 0.03
    echo "    .%*********/         ""-.,.-""~          \    "
    sleep 0.03
    echo "  .%**********/                              &.  "
    sleep 0.03
    echo " %***********/                                 \ "
    sleep 0.03
    echo " ************************************************"
    sleep 0.03
    echo " ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"
}
load(){
    echo -e "\n"
    bar=" >>>>>>>>>>>>>>>>>>>"
    barlength=${#bar}
    i=0
    while((i<100)); do
        n=$((i*barlength / 100))
        printf "\e[00;32m\r[%-${barlength}s]\e[00m" "${bar:0:n}"
        ((i += RANDOM%5+2))
        sleep 3.0
    done
}

#
clear
echo "Memulai Eye of All Seeing Project.."
load
clear
echo Masukan ER-SI Cctv? #tulisan keluar
read nick #membaca yang ditulis
clear
eye
echo " ================================================"
sleep 2
echo " ==          Eye Of All Seeing Project         =="
sleep 0.7
echo " ================================================"
echo ER-SI Cctv $nick
echo
echo "Mulai scanning cctv?"
echo "y/n"
read confirm
if [ $confirm = "y" ]; then
    clear
    echo "Melakukan Scanning Data ER-SI"
    load
    clear
    eye
    curl -s https://github.com/nathan242/ipcam-cctv/blob/master/cctv.php
    echo
    echo
    echo "    Account CCTV"
    echo "====================="
    echo " User     : admin"
    echo " Password : artha911"
    echo " No ER-SI : 38001219"
    echo "====================="
    echo
    echo
    echo
    echo " Scaning CCTV Telah Selesai"
    echo
    echo " Done! "
    echo " By: Artha_sa*Porject"
    echo "======================================="
    echo
    echo
else
    echo "Kesalahan"
fi
