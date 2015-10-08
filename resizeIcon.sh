#! /bin/bash
read -p "请将需要调整的图片文件拖到终端:" filePath
echo "文件的路径是: $filePath"
fileName=`basename $filePath`
echo "文件的名字是: $fileName"

echo "重新调整大小后的文件目录为：~/Desktop/resize_icon/"
cd ~/Desktop;
rm -rf resize_icon;
mkdir resize_icon;

cp $filePath resize_icon;

cd resize_icon;
sips -Z 58 $fileName --out icon-29@2x.png;
sips -Z 87 $fileName --out icon-29@3x.png;

sips -Z 80 $fileName --out icon-40@2x.png;
sips -Z 120 $fileName --out icon-40@3x.png;

sips -Z 120 $fileName --out icon-60@2x.png;
sips -Z 180 $fileName --out icon-60@3x.png;

rm -r $fileName;
