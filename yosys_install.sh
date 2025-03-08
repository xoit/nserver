mkdir ~/.local/repo/yosys ;
cd ~/.local/repo/yosys ;
wget https://github.com/YosysHQ/oss-cad-suite-build/releases/download/2025-03-07/oss-cad-suite-linux-x64-20250307.tgz
tar xzf oss-cad-suite-linux-x64-20250307.tgz
rm -fr oss-cad-suite-linux-x64-20250307.tgz ;
setenv PATH $HOME/.local/repo/yosys/oss-cad-suite/bin

yosys --version

wget https://github.com/YosysHQ/oss-cad-suite-build/archive/refs/tags/2025-03-07.tar.gz
tar xzf 2025-03-07.tar.gz
cd oss-cad-suite-build-2025-03-07

