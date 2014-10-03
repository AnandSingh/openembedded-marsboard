#!/bin/bash
echo -e ""
echo -e ""
echo -e "\033[41;33m**********************************\033[0m"
echo -e "\033[41;33m*  MarsBoard Android Build Tools *\033[0m"
echo -e "\033[41;33m*        MarsBoard-A20 Version   *\033[0m"
echo -e "\033[41;33m**********************************\033[0m"
echo -e ""

echo -e "\033[41;33m                  \033[0m"
echo -e "\033[41;33m   Build Android  \033[0m"
echo -e "\033[41;33m                  \033[0m"
echo -e ""
echo -e "\033[41;33mNow Clean Old Build.\033[0m"
sleep 1s
cd android4.2
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
