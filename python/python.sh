#!/bin/sh
clear
echo "python installer"
echo "starting..."
sleep 1.5
echo "installing..."
apt install python -y
apt install python-pip -y
mkdir python_installed_by_reos_installer
cd python_installed_by_reos_installer
cat <<'EOF'>> installed.txt
python was installed by reos installer
the following apps/scripts were installed
python
python-pip
EOF

cd ..
clear
