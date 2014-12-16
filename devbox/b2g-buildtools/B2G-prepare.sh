dpkg --add-architecture i386
apt-get update

apt-get install -y --no-install-recommends autoconf2.13 bison bzip2 ccache curl flex gawk gcc g++ g++-multilib gcc-4.6 g++-4.6 g++-4.6-multilib git lib32ncurses5-dev lib32z1-dev zlib1g:amd64 zlib1g-dev:amd64 zlib1g:i386 zlib1g-dev:i386 libgl1-mesa-dev libx11-dev make zip libxml2-utils 

update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-4.6 1 

update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-4.8 2 

update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-4.6 1 

update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-4.8 2 

update-alternatives --set gcc "/usr/bin/gcc-4.6" 

update-alternatives --set g++ "/usr/bin/g++-4.6" 
