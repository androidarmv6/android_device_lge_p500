echo $1
rootdirectory="$PWD"
# ---------------------------------


cd $rootdirectory
cd bionic
echo "Reverting bionic patches..."
git apply --reverse $rootdirectory/device/lge/p500/patches/bionic/*.patch
echo " "

cd $rootdirectory
cd external/webkit/
echo "Reverting external/webkit/ patches..."
git apply --reverse $rootdirectory/device/lge/p500/patches/external/webkit/*.patch
echo " "

cd $rootdirectory
cd packages/apps/Apollo/
echo "Reverting packages/apps/Apollo/ patches..."
git apply --reverse $rootdirectory/device/lge/p500/patches/packages/apps/Apollo/*.patch
echo " "

cd $rootdirectory
cd packages/apps/Mms/
echo "Reverting packages/apps/Mms/ patches..."
git apply --reverse $rootdirectory/device/lge/p500/patches/packages/apps/Mms/*.patch
echo " "

cd $rootdirectory
cd packages/apps/Superuser/
echo "Reverting packages/apps/Superuser/ patches..."
git apply --reverse $rootdirectory/device/lge/p500/patches/packages/apps/Superuser/*.patch
echo " "

cd $rootdirectory
cd system/core/
echo "Reverting system/core/ patches..."
git apply --reverse $rootdirectory/device/lge/p500/patches/system/core/*.patch
echo " "

cd $rootdirectory
cd system/su/
echo "Reverting system/su/ patches..."
git apply --reverse $rootdirectory/device/lge/p500/patches/system/su/*.patch
echo " "

# -----------------------------------
echo "Changing to build directory..."
cd $rootdirectory
