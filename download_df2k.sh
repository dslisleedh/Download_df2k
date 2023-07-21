RED='\033[0;31m'
NC='\033[0m' # No Color

mkdir -p ./datasets
cd ./datasets

echo "${RED}Downloading datasets... 1 / 8: Flickr2K${NC}"
wget https://cv.snu.ac.kr/research/EDSR/Flickr2K.tar

echo "${RED}Downloading datasets... 2 / 8: DIV2K Train HR${NC}"
wget http://data.vision.ee.ethz.ch/cvl/DIV2K/DIV2K_train_HR.zip
wget http://data.vision.ee.ethz.ch/cvl/DIV2K/DIV2K_valid_HR.zip

echo "${RED}Downloading datasets... 3 / 8: DIV2K bicubic LR x2${NC}"
wget http://data.vision.ee.ethz.ch/cvl/DIV2K/DIV2K_train_LR_bicubic_X2.zip
wget http://data.vision.ee.ethz.ch/cvl/DIV2K/DIV2K_valid_LR_bicubic_X2.zip

echo "${RED}Downloading datasets... 4 / 8: DIV2K bicubic LR x3${NC}"
wget http://data.vision.ee.ethz.ch/cvl/DIV2K/DIV2K_train_LR_bicubic_X3.zip
wget http://data.vision.ee.ethz.ch/cvl/DIV2K/DIV2K_valid_LR_bicubic_X3.zip

echo "${RED}Downloading datasets... 5 / 8: DIV2K bicubic LR x4${NC}"
wget http://data.vision.ee.ethz.ch/cvl/DIV2K/DIV2K_train_LR_bicubic_X4.zip
wget http://data.vision.ee.ethz.ch/cvl/DIV2K/DIV2K_valid_LR_bicubic_X4.zip

echo "${RED}Downloading datasets... 6 / 8: DIV2K unknown LR x2${NC}"
wget http://data.vision.ee.ethz.ch/cvl/DIV2K/DIV2K_train_LR_unknown_X2.zip
wget http://data.vision.ee.ethz.ch/cvl/DIV2K/DIV2K_valid_LR_unknown_X2.zip

echo "${RED}Downloading datasets... 7 / 8: DIV2K unknown LR x3${NC}"
wget http://data.vision.ee.ethz.ch/cvl/DIV2K/DIV2K_train_LR_unknown_X3.zip
wget http://data.vision.ee.ethz.ch/cvl/DIV2K/DIV2K_valid_LR_unknown_X3.zip

echo "${RED}Downloading datasets... 8 / 8: DIV2K unknown LR x4${NC}"
wget http://data.vision.ee.ethz.ch/cvl/DIV2K/DIV2K_train_LR_unknown_X4.zip
wget http://data.vision.ee.ethz.ch/cvl/DIV2K/DIV2K_valid_LR_unknown_X4.zip

echo "${RED}Unzipping datasets...${NC}"
echo "${RED}Flickr2K 1 / 8${NC}"
tar -xvf Flickr2K.tar
echo "${RED}DIV2K HR 2 / 8${NC}"
unzip DIV2K_train_HR.zip
unzip DIV2K_valid_HR.zip
echo "${RED}DIV2K bicubic LR x2 3 / 8${NC}"
unzip DIV2K_train_LR_bicubic_X2.zip
unzip DIV2K_valid_LR_bicubic_X2.zip
echo "${RED}DIV2K bicubic LR x3 4 / 8${NC}"
unzip DIV2K_train_LR_bicubic_X3.zip
unzip DIV2K_valid_LR_bicubic_X3.zip
echo "${RED}DIV2K bicubic LR x4 5 / 8${NC}"
unzip DIV2K_train_LR_bicubic_X4.zip
unzip DIV2K_valid_LR_bicubic_X4.zip
echo "${RED}DIV2K unknown LR x2 6 / 8${NC}"
unzip DIV2K_train_LR_unknown_X2.zip
unzip DIV2K_valid_LR_unknown_X2.zip
echo "${RED}DIV2K unknown LR x3 7 / 8${NC}"
unzip DIV2K_train_LR_unknown_X3.zip
unzip DIV2K_valid_LR_unknown_X3.zip
echo "${RED}DIV2K unknown LR x4 8 / 8${NC}"
unzip DIV2K_train_LR_unknown_X4.zip
unzip DIV2K_valid_LR_unknown_X4.zip

mkdir -p DF2K
mkdir -p DF2K/DF2K_train_HR
mkdir -p DF2K/DF2K_train_LR_bicubic
mkdir -p DF2K/DF2K_train_LR_unknown
mkdir -p DF2K/DF2K_train_LR_bicubic/X2
mkdir -p DF2K/DF2K_train_LR_bicubic/X3
mkdir -p DF2K/DF2K_train_LR_bicubic/X4
mkdir -p DF2K/DF2K_train_LR_unknown/X2
mkdir -p DF2K/DF2K_train_LR_unknown/X3
mkdir -p DF2K/DF2K_train_LR_unknown/X4

echo "${RED}Moving datasets...${NC}"
cp -r ./DIV2K_train_HR/* ./DF2K/DF2K_train_HR
cp -r ./Flickr2K/Flickr2K_HR/* ./DF2K/DF2K_train_HR
cp -r ./DIV2K_train_LR_bicubic/X2/ ./DF2K/DF2K_train_LR_bicubic
cp -r ./DIV2K_train_LR_bicubic/X3/ ./DF2K/DF2K_train_LR_bicubic
cp -r ./DIV2K_train_LR_bicubic/X4/ ./DF2K/DF2K_train_LR_bicubic
cp -r ./DIV2K_train_LR_unknown/X2/ ./DF2K/DF2K_train_LR_unknown
cp -r ./DIV2K_train_LR_unknown/X3/ ./DF2K/DF2K_train_LR_unknown
cp -r ./DIV2K_train_LR_unknown/X4/ ./DF2K/DF2K_train_LR_unknown
cp -r ./Flickr2K/Flickr2K_LR_bicubic/X2/ ./DF2K/DF2K_train_LR_bicubic
cp -r ./Flickr2K/Flickr2K_LR_bicubic/X3/ ./DF2K/DF2K_train_LR_bicubic
cp -r ./Flickr2K/Flickr2K_LR_bicubic/X4/ ./DF2K/DF2K_train_LR_bicubic

echo "${RED}Removing zips ...${NC}"
rm -rf ./*.zip
rm -rf ./*.tar
