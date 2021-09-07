#/bin/bash

sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get -y dist-upgrade
sudo apt-get -y autoclean
sudo apt-get -y autoremove
sudo apt-get -y clean

apt_soft=$1

echo -n Installing "$apt_soft"

dpkg -s $apt_soft &> /dev/null  

if [ $? -ne 0 ]
   then
       echo "  - Not installed, installing it"  
echo ""
echo "Why waste time say lot word when few word do trick - Kevin Malone"
echo "-"
echo " -"
echo "  -"
echo "   -"
echo "    -"
echo "     -"
echo "     -"
echo "     -"
echo "     -"
echo "     -"
echo "     -"
echo "START-"

sudo apt-get remove docker docker-engine docker.io containerd runc

sudo apt-get update
 sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

echo "installing arm4 docker, press cancel now if you don't want this"
sleep 5

 echo \
  "deb [arch=arm64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt-get update

sudo apt-get install docker-ce docker-ce-cli containerd.io

sudo apt-get install docker-ce=5:20.10.8~3-0~ubuntu-focal docker-ce-cli=5:20.10.8~3-0~ubuntu-focal containerd.io

echo "docker done; update..."

sudo apt-get update -y

sudo apt-get upgrade -y

echo "gunna be awhile, boss"

sudo apt install build-essential gcc-8 g++-8 gcc-9 g++-9 gcc-10 g++-10 *dev*tools* clang-10-doc liblapack-doc libboost-chrono1.71-dev libboost-contract1.71-dev libboost-date-time1.71-dev libboost-filesystem1.71-dev libboost-graph-parallel1.71-dev libboost-locale1.71-dev libboost-mpi1.71-dev libboost-program-options1.71-dev libboost-random1.71-dev libboost-serialization1.71-dev libboost-system1.71-dev libboost-timer1.71-dev libboost1.71-tools-dev libmpfr-dev libomp-10-doc qt5-qmltooling-plugins gstreamer1.0-libav ttf-mscorefonts-installer texlive-xetex wkhtmltopdf python-pygments-doc texlive-plain-generic texlive-extra-utils r-cran-shinyjs r-cran-zoo r-cran-rpostgresql r-cran-multcomp r-bioc-affy r-cran-webshot r-cran-rcurl r-cran-dygraphs r-cran-zeallot playonlinux wine64-development-preloader nodejs nginx libgconf-2-4 cmake libuv1-dev libssl-dev libhwloc-dev automake libtool autoconf libcurl4-openssl-dev pandoc-* libclang-dev libxml2-dev libv8-dev libgit2-dev libreoffice ffmpeg keepass2 git okular hunspell-pt-br htop default-jdk default-jre libglpk-dev obs-studio texstudio libmagick++-dev qpdf screen nano mc software-properties-common zsh zstd snap pkg-config cmake-qt-gui ninja-build valgrind  mingw-w64 mingw-w64-tools binutils-mingw-w64 crossbuild-essential-armel crossbuild-essential-armhf crossbuild-essential-arm64 binutils-multiarch binutils-arm-none-eabi binutils-arm-linux-gnueabi binutils-arm-linux-gnueabihf binutils-aarch64-linux-gnu libgl1-mesa-dev openjdk-8-jre openjdk-8-jdk libstdc++6 libncurses5 libsdl1.2debian curl wget uget unzip tar gimp kdiff3

echo "snakes! hopefully pip won't freak out :)"

python3 -m venv ~/venv/tfcpu
source ~/venv/tfcpu/bin/activate
pip install --upgrade pip setuptools wheel
echo "ML software CPU"
pip install --upgrade opencv-python opencv-contrib-python
pip install --upgrade tensorflow-cpu tensorboard keras
deactivate
echo "more python stuff"
pip install mkdocs mkdocs-material
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
chmod +x Miniconda3-latest-Linux-x86_64.sh
./Miniconda3-latest-Linux-x86_64.sh
source ~/miniconda3/bin/activate 
conda config --set auto_activate_base false
conda deactivate
conda activate
conda deactivate
conda info
conda update conda 
sleep 2 &> /dev/null

   else
       echo    "  - already installed"
fi

