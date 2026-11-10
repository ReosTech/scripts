#!/bin/sh
clear
echo "proot installer"
echo "starting install..."
sleep 1.5
echo "installing proot..."
pkg install proot -y
clear
echo "installing distro manager..."
pkg install proot-distro -y
clear
echo "connecting..."
mkdir proot_installed_by_reos_installer
cd proot_installed_by_reos_installer
cat <<'EOF'>> installed.txt
The proot app is installed by Reos
the fowllowing apps/scripts were installed
proot
proot-distro
git
python-pip
python
ca-certificates
openssl

Tank you for using reos installer
EOF
cd ..
clear
echo "installing dependencies..."
pkg install python -y
pkg install python-pip -y
pkg install ca-certificates -y
pkg install openssl -y
clear
cd ..
cd ..
echo "__________Proot Setup__________"
read -p "enter the name of your linux distro: " distro
echo "setting up..."
proot-distro install $distro
clear
echo "loading..."
proot-distro login $distro
./clear_ins.sh

