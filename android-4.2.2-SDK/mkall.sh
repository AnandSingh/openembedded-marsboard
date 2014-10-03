#!/bin/bash
echo -e ""
echo -e ""
echo -e "\033[41;33m**********************************\033[0m"
echo -e "\033[41;33m*  MarsBoard Android Build Tools *\033[0m"
echo -e "\033[41;33m*        MarsBoard-A20 Version   *\033[0m"
echo -e "\033[41;33m**********************************\033[0m"
echo -e ""
echo -e ""
echo -e "\033[41;33m                 \033[0m"
echo -e "\033[41;33m   Build Kernel  \033[0m"
echo -e "\033[41;33m                 \033[0m"
echo -e ""
echo -e "\033[41;33mNow Clean Old Build.\033[0m"
sleep 1s
cd ./lichee/linux-3.3
cp marsboard_defconfig .config
make clean
echo -e ""
echo -e "\033[41;33mNow Build Kernel for Android.\033[0m"
sleep 3s
cd ../
./build.sh -p sun7i_android
echo -e ""
echo -e "\033[41;33m                  \033[0m"
echo -e "\033[41;33m    Kernel Done   \033[0m"
echo -e "\033[41;33m                  \033[0m"
echo -e ""
echo -e "\033[41;33m                  \033[0m"
echo -e "\033[41;33m   Build Android  \033[0m"
echo -e "\033[41;33m                  \033[0m"
echo -e ""
echo -e "\033[41;33mNow Clean Old Build.\033[0m"
sleep 1s
cd ../android4.2
make clean
echo -e "\033[41;33mNow Config Build ENV.\033[0m"
sleep 3s
source build/envsetup.sh
echo -e ""
echo -e "\033[41;33mNow Select Build Model.\033[0m"
sleep 3s
lunch wing_marsboard-eng
echo -e ""
echo -e "\033[41;33mNow Copy BSP.\033[0m"
extract_bsp
echo -e ""
echo -e "\033[41;33mNow Begin Make.\033[0m"
sleep 3s
make
echo -e ""
echo -e "\033[41;33mNow Pack to Image.\033[0m"
sleep 3s
pack
echo -e ""
echo -e ""
echo -e "\033[41;33mAll Done.\033[0m"
