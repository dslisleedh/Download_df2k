RED='\033[0;31m'
NC='\033[0m'

mkdir -p LSDIR
mkdir -p LSDIR/Train
mkdir -p LSDIR/Train/HR
mkdir -p LSDIR/Train/LR
mkdir -p LSDIR/Train/LR/X2
mkdir -p LSDIR/Train/LR/X3
mkdir -p LSDIR/Train/LR/X4
mkdir -p LSDIR/Valid
mkdir -p LSDIR/Valid/HR
mkdir -p LSDIR/Valid/LR
mkdir -p LSDIR/Valid/LR/X2
mkdir -p LSDIR/Valid/LR/X3
mkdir -p LSDIR/Valid/LR/X4

echo "${RED}Downloading LSDIR Train HR dataset...${NC}"
wget https://data.vision.ee.ethz.ch/yawli/shard-00.tar.gz
wget https://data.vision.ee.ethz.ch/yawli/shard-01.tar.gz
wget https://data.vision.ee.ethz.ch/yawli/shard-02.tar.gz
wget https://data.vision.ee.ethz.ch/yawli/shard-03.tar.gz
wget https://data.vision.ee.ethz.ch/yawli/shard-04.tar.gz
wget https://data.vision.ee.ethz.ch/yawli/shard-05.tar.gz
wget https://data.vision.ee.ethz.ch/yawli/shard-06.tar.gz
wget https://data.vision.ee.ethz.ch/yawli/shard-07.tar.gz
wget https://data.vision.ee.ethz.ch/yawli/shard-08.tar.gz
wget https://data.vision.ee.ethz.ch/yawli/shard-09.tar.gz
wget https://data.vision.ee.ethz.ch/yawli/shard-10.tar.gz
wget https://data.vision.ee.ethz.ch/yawli/shard-11.tar.gz
wget https://data.vision.ee.ethz.ch/yawli/shard-12.tar.gz
wget https://data.vision.ee.ethz.ch/yawli/shard-13.tar.gz
wget https://data.vision.ee.ethz.ch/yawli/shard-14.tar.gz
wget https://data.vision.ee.ethz.ch/yawli/shard-15.tar.gz
wget https://data.vision.ee.ethz.ch/yawli/shard-16.tar.gz

echo "${RED}Downloading LSDIR Train LR dataset...${NC}"
wget https://data.vision.ee.ethz.ch/yawli/train_x2.tar.gz
wget https://data.vision.ee.ethz.ch/yawli/train_x3.tar.gz
wget https://data.vision.ee.ethz.ch/yawli/train_x4.tar.gz

echo "${RED}Downloading LSDIR VALID dataset...${NC}"
wget https://data.vision.ee.ethz.ch/yawli/val1.tar.gz

echo "${RED}Unzipping LSDIR Train HR dataset...${NC}"

echo "${RED}... 1/17${NC}"
tar -xf shard-00.tar.gz -C LSDIR/Train/HR
echo "${RED}... 2/17${NC}"
tar -xf shard-01.tar.gz -C LSDIR/Train/HR
echo "${RED}... 3/17${NC}"
tar -xf shard-02.tar.gz -C LSDIR/Train/HR
echo "${RED}... 4/17${NC}"
tar -xf shard-03.tar.gz -C LSDIR/Train/HR
echo "${RED}... 5/17${NC}"
tar -xf shard-04.tar.gz -C LSDIR/Train/HR
echo "${RED}... 6/17${NC}"
tar -xf shard-05.tar.gz -C LSDIR/Train/HR
echo "${RED}... 7/17${NC}"
tar -xf shard-06.tar.gz -C LSDIR/Train/HR
echo "${RED}... 8/17${NC}"
tar -xf shard-07.tar.gz -C LSDIR/Train/HR
echo "${RED}... 9/17${NC}"
tar -xf shard-08.tar.gz -C LSDIR/Train/HR
echo "${RED}... 10/17${NC}"
tar -xf shard-09.tar.gz -C LSDIR/Train/HR
echo "${RED}... 11/17${NC}"
tar -xf shard-10.tar.gz -C LSDIR/Train/HR
echo "${RED}... 12/17${NC}"
tar -xf shard-11.tar.gz -C LSDIR/Train/HR
echo "${RED}... 13/17${NC}"
tar -xf shard-12.tar.gz -C LSDIR/Train/HR
echo "${RED}... 14/17${NC}"
tar -xf shard-13.tar.gz -C LSDIR/Train/HR
echo "${RED}... 15/17${NC}"
tar -xf shard-14.tar.gz -C LSDIR/Train/HR
echo "${RED}... 16/17${NC}"
tar -xf shard-15.tar.gz -C LSDIR/Train/HR
echo "${RED}... 17/17${NC}"
tar -xf shard-16.tar.gz -C LSDIR/Train/HR

find ./LSDIR/Train/HR/*/ -name '*.png' -exec mv {} ./LSDIR/Train/HR/ \;
find ./LSDIR/Train/HR/ -mindepth 1 -type d -not -name '.' -exec rm -rf {} \;

echo "${RED}Unzipping LSDIR Train LR dataset...${NC}"
echo "${RED}... 1/3${NC}"
tar -xf train_x2.tar.gz -C LSDIR/Train/LR/X2
find ./LSDIR/Train/LR/X2/train/*/ -name '*.png' -exec mv {} ./LSDIR/Train/LR/X2/ \;
rm -rf ./LSDIR/Train/LR/X2/train

echo "${RED}... 2/3${NC}"
tar -xf train_x3.tar.gz -C LSDIR/Train/LR/X3
find ./LSDIR/Train/LR/X3/train/*/ -name '*.png' -exec mv {} ./LSDIR/Train/LR/X3/ \;
rm -rf ./LSDIR/Train/LR/X3/train

echo "${RED}... 3/3${NC}"
tar -xf train_x4.tar.gz -C LSDIR/Train/LR/X4
find ./LSDIR/Train/LR/X4/train/*/ -name '*.png' -exec mv {} ./LSDIR/Train/LR/X4/ \;
rm -rf ./LSDIR/Train/LR/X4/train

echo "${RED}Unzipping LSDIR VALID dataset...${NC}"
tar -xf val1.tar.gz -C LSDIR/Valid/
find ./LSDIR/Valid/val1/HR/val/ -name '*.png' -exec mv {} ./LSDIR/Valid/HR/ \;
find ./LSDIR/Valid/val1/X2/val/ -name '*.png' -exec mv {} ./LSDIR/Valid/LR/X2/ \;
find ./LSDIR/Valid/val1/X3/val/ -name '*.png' -exec mv {} ./LSDIR/Valid/LR/X3/ \;
find ./LSDIR/Valid/val1/X4/val/ -name '*.png' -exec mv {} ./LSDIR/Valid/LR/X4/ \;
rm -rf ./LSDIR/Valid/val1

echo "${RED}Removing tar.gz files...${NC}"
rm -rf *.tar.gz
