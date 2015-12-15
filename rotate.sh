

for f in /Users/agolubev1/android-sdks/platform-tools/GalaxyS3/*.png
do
  convert -rotate -90 "$f" "${f%.png}"_converted.jpg
done