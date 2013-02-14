echo $1
rootdirectory="$PWD"
# ---------------------------------


cd $rootdirectory
cd bionic
echo "Applying bionic patches..."
git apply $rootdirectory/device/lge/p500/patches/bionic/*.patch
echo " "

cd $rootdirectory
cd external/webkit/
echo "Applying external/webkit/ patches..."
git apply $rootdirectory/device/lge/p500/patches/external/webkit/*.patch
echo " "

cd $rootdirectory
cd packages/apps/Apollo/
echo "Applying packages/apps/Apollo/ patches..."
git apply $rootdirectory/device/lge/p500/patches/packages/apps/Apollo/*.patch
echo " "

cd $rootdirectory
cd packages/apps/Mms/
echo "Applying packages/apps/Mms/ patches..."
git apply $rootdirectory/device/lge/p500/patches/packages/apps/Mms/*.patch
echo " "

cd $rootdirectory
cd packages/apps/Superuser/
echo "Applying packages/apps/Superuser/ patches..."
git apply $rootdirectory/device/lge/p500/patches/packages/apps/Superuser/*.patch
echo " "

cd $rootdirectory
cd system/su/
echo "Applying system/su/ patches..."
git apply $rootdirectory/device/lge/p500/patches/system/su/*.patch
echo " "

# -----------------------------------
echo "Changing to build directory..."
cd $rootdirectory
