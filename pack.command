cd `dirname $0`

rm -rf Packages.bz2

# 扫名当前目录下的 .deb 文件，生成 Packages 文件
dpkg-scanpackages -m . /dev/null > Packages
# 压缩 Packages 文件
bzip2 Packages