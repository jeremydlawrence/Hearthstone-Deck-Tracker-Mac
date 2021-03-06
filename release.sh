
xctool \
-workspace Hearthstone-Deck-Tracker.xcworkspace \
-scheme Hearthstone-Deck-Tracker \
-configuration Release\
 CONFIGURATION_BUILD_DIR=`pwd`/build

mkdir build/cn
mkdir build/en

cp -R build/Deck\ Tracker.app build/cn
cp -R build/Deck\ Tracker.app build/en

app_dir_cn="build/cn/Deck\ Tracker.app/"
app_dir_en="build/en/Deck\ Tracker.app/"

image_cn="Contents/Resources/Images/cn"
image_en="Contents/Resources/Images/en"

rm -rf build/cn/Deck\ Tracker.app/Contents/Resources/Images/en
rm -rf build/en/Deck\ Tracker.app/Contents/Resources/Images/cn

mv build/en/Deck\ Tracker.app/Contents/Resources/Images/en \
build/en/Deck\ Tracker.app/Contents/Resources/Images/cn


# ../create-dmg/create-dmg \
# --window-size 500 300 \
# --icon-size 96 \
# --volname "Deck Tracker" \
# --app-drop-link 380 205 \
# --icon "Deck Tracker" 110 205 \
# "Deck Tracker.dmg" \
# build/en/
