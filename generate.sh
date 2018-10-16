set -e

mkdir -p \
  "glyphs/Roboto Black" \
  "glyphs/Roboto Black" \
  "glyphs/Roboto Black Italic" \
  "glyphs/Roboto Bold" \
  "glyphs/Roboto Bold Italic" \
  "glyphs/Roboto Italic" \
  "glyphs/Roboto Light" \
  "glyphs/Roboto Light Italic" \
  "glyphs/Roboto Medium" \
  "glyphs/Roboto Medium Italic" \
  "glyphs/Roboto Regular" \
  "glyphs/Roboto Thin" \
  "glyphs/Roboto Thin Italic" \
  "glyphs/Roboto Condensed Bold" \
  "glyphs/Roboto Condensed Bold Italic" \
  "glyphs/Roboto Condensed Italic" \
  "glyphs/Roboto Condensed Light" \
  "glyphs/Roboto Condensed Light Italic" \
  "glyphs/Roboto Condensed Regular" \
  "glyphs/Noto Sans Bold" \
  "glyphs/Noto Sans Bold Italic" \
  "glyphs/Noto Sans Italic" \
  "glyphs/Noto Sans Regular" \
  "glyphs/OpenSans Bold" \
  "glyphs/OpenSans Bold Italic" \
  "glyphs/OpenSans Cond Bold" \
  "glyphs/OpenSans Cond Light" \
  "glyphs/OpenSans Cond Light Italic" \
  "glyphs/OpenSans Extra Bold" \
  "glyphs/OpenSans Extra Bold Italic" \
  "glyphs/OpenSans Italic" \
  "glyphs/OpenSans Light" \
  "glyphs/OpenSans Light Italic" \
  "glyphs/OpenSans Regular" \
  "glyphs/OpenSans Semi Bold" \
  "glyphs/OpenSans Semi Bold Italic"

cat << EOF > glyphs.json
[
  "Roboto Black",
  "Roboto Black",
  "Roboto Black Italic",
  "Roboto Bold",
  "Roboto Bold Italic",
  "Roboto Italic",
  "Roboto Light",
  "Roboto Light Italic",
  "Roboto Medium",
  "Roboto Medium Italic",
  "Roboto Regular",
  "Roboto Thin",
  "Roboto Thin Italic",
  "Roboto Condensed Bold",
  "Roboto Condensed Bold Italic",
  "Roboto Condensed Italic",
  "Roboto Condensed Light",
  "Roboto Condensed Light Italic",
  "Roboto Condensed Regular",
  "Noto Sans Bold",
  "Noto Sans Bold Italic",
  "Noto Sans Italic",
  "Noto Sans Regular",
  "OpenSans Bold",
  "OpenSans Bold Italic",
  "OpenSans Cond Bold",
  "OpenSans Cond Light",
  "OpenSans Cond Light Italic",
  "OpenSans Extra Bold",
  "OpenSans Extra Bold Italic",
  "OpenSans Italic",
  "OpenSans Light",
  "OpenSans Light Italic",
  "OpenSans Regular",
  "OpenSans Semi Bold",
  "OpenSans Semi Bold Italic"
]
EOF

./node_modules/.bin/build-glyphs fonts/roboto/hinted/Roboto-Black.ttf                "glyphs/Roboto Black"
./node_modules/.bin/build-glyphs fonts/roboto/hinted/Roboto-BlackItalic.ttf          "glyphs/Roboto Black Italic"
./node_modules/.bin/build-glyphs fonts/roboto/hinted/Roboto-Bold.ttf                 "glyphs/Roboto Bold"
./node_modules/.bin/build-glyphs fonts/roboto/hinted/Roboto-BoldItalic.ttf           "glyphs/Roboto Bold Italic"
./node_modules/.bin/build-glyphs fonts/roboto/hinted/Roboto-Italic.ttf               "glyphs/Roboto Italic"
./node_modules/.bin/build-glyphs fonts/roboto/hinted/Roboto-Light.ttf                "glyphs/Roboto Light"
./node_modules/.bin/build-glyphs fonts/roboto/hinted/Roboto-LightItalic.ttf          "glyphs/Roboto Light Italic"
./node_modules/.bin/build-glyphs fonts/roboto/hinted/Roboto-Medium.ttf               "glyphs/Roboto Medium"
./node_modules/.bin/build-glyphs fonts/roboto/hinted/Roboto-MediumItalic.ttf         "glyphs/Roboto Medium Italic"
./node_modules/.bin/build-glyphs fonts/roboto/hinted/Roboto-Regular.ttf              "glyphs/Roboto Regular"
./node_modules/.bin/build-glyphs fonts/roboto/hinted/Roboto-Thin.ttf                 "glyphs/Roboto Thin"
./node_modules/.bin/build-glyphs fonts/roboto/hinted/Roboto-ThinItalic.ttf           "glyphs/Roboto Thin Italic"
./node_modules/.bin/build-glyphs fonts/roboto/hinted/RobotoCondensed-Bold.ttf        "glyphs/Roboto Condensed Bold"
./node_modules/.bin/build-glyphs fonts/roboto/hinted/RobotoCondensed-BoldItalic.ttf  "glyphs/Roboto Condensed Bold Italic"
./node_modules/.bin/build-glyphs fonts/roboto/hinted/RobotoCondensed-Italic.ttf      "glyphs/Roboto Condensed Italic"
./node_modules/.bin/build-glyphs fonts/roboto/hinted/RobotoCondensed-Light.ttf       "glyphs/Roboto Condensed Light"
./node_modules/.bin/build-glyphs fonts/roboto/hinted/RobotoCondensed-LightItalic.ttf "glyphs/Roboto Condensed Light Italic"
./node_modules/.bin/build-glyphs fonts/roboto/hinted/RobotoCondensed-Regular.ttf     "glyphs/Roboto Condensed Regular"
./node_modules/.bin/build-glyphs fonts/noto/hinted/NotoSans-Bold.ttf                 "glyphs/Noto Sans Bold"
./node_modules/.bin/build-glyphs fonts/noto/hinted/NotoSans-BoldItalic.ttf           "glyphs/Noto Sans Bold Italic"
./node_modules/.bin/build-glyphs fonts/noto/hinted/NotoSans-Italic.ttf               "glyphs/Noto Sans Italic"
./node_modules/.bin/build-glyphs fonts/noto/hinted/NotoSans-Regular.ttf              "glyphs/Noto Sans Regular"
./node_modules/.bin/build-glyphs fonts/opensans/hinted_ttfs/OpenSans-Bold.ttf "glyphs/OpenSans Bold"
./node_modules/.bin/build-glyphs fonts/opensans/hinted_ttfs/OpenSans-BoldItalic.ttf "glyphs/OpenSans Bold Italic"
./node_modules/.bin/build-glyphs fonts/opensans/hinted_ttfs/OpenSans-CondBold.ttf "glyphs/OpenSans Cond Bold"
./node_modules/.bin/build-glyphs fonts/opensans/hinted_ttfs/OpenSans-CondLightItalic.ttf "glyphs/OpenSans Cond Light"
./node_modules/.bin/build-glyphs fonts/opensans/hinted_ttfs/OpenSans-CondLightItalic.ttf "glyphs/OpenSans Cond Light Italic"
./node_modules/.bin/build-glyphs fonts/opensans/hinted_ttfs/OpenSans-ExtraBold.ttf "glyphs/OpenSans Extra Bold"
./node_modules/.bin/build-glyphs fonts/opensans/hinted_ttfs/OpenSans-ExtraBoldItalic.ttf "glyphs/OpenSans Extra Bold Italic"
./node_modules/.bin/build-glyphs fonts/opensans/hinted_ttfs/OpenSans-Italic.ttf "glyphs/OpenSans Italic"
./node_modules/.bin/build-glyphs fonts/opensans/hinted_ttfs/OpenSans-Light.ttf "glyphs/OpenSans Light"
./node_modules/.bin/build-glyphs fonts/opensans/hinted_ttfs/OpenSans-LightItalic.ttf "glyphs/OpenSans Light Italic"
./node_modules/.bin/build-glyphs fonts/opensans/hinted_ttfs/OpenSans-Regular.ttf "glyphs/OpenSans Regular"
./node_modules/.bin/build-glyphs fonts/opensans/hinted_ttfs/OpenSans-SemiBold.ttf "glyphs/OpenSans Semi Bold"
./node_modules/.bin/build-glyphs fonts/opensans/hinted_ttfs/OpenSans-SemiBoldItalic.ttf "glyphs/OpenSans Semi Bold Italic"


cp fonts/roboto/LICENSE "glyphs/Roboto Black"
cp fonts/roboto/LICENSE "glyphs/Roboto Black"
cp fonts/roboto/LICENSE "glyphs/Roboto Black Italic"
cp fonts/roboto/LICENSE "glyphs/Roboto Bold"
cp fonts/roboto/LICENSE "glyphs/Roboto Bold Italic"
cp fonts/roboto/LICENSE "glyphs/Roboto Italic"
cp fonts/roboto/LICENSE "glyphs/Roboto Light"
cp fonts/roboto/LICENSE "glyphs/Roboto Light Italic"
cp fonts/roboto/LICENSE "glyphs/Roboto Medium"
cp fonts/roboto/LICENSE "glyphs/Roboto Medium Italic"
cp fonts/roboto/LICENSE "glyphs/Roboto Regular"
cp fonts/roboto/LICENSE "glyphs/Roboto Thin"
cp fonts/roboto/LICENSE "glyphs/Roboto Thin Italic"
cp fonts/roboto/LICENSE "glyphs/Roboto Condensed Bold"
cp fonts/roboto/LICENSE "glyphs/Roboto Condensed Bold Italic"
cp fonts/roboto/LICENSE "glyphs/Roboto Condensed Italic"
cp fonts/roboto/LICENSE "glyphs/Roboto Condensed Light"
cp fonts/roboto/LICENSE "glyphs/Roboto Condensed Light Italic"
cp fonts/roboto/LICENSE "glyphs/Roboto Condensed Regular"
cp fonts/noto/LICENSE   "glyphs/Noto Sans Bold"
cp fonts/noto/LICENSE   "glyphs/Noto Sans Bold Italic"
cp fonts/noto/LICENSE   "glyphs/Noto Sans Italic"
cp fonts/noto/LICENSE   "glyphs/Noto Sans Regular"
cp fonts/opensans/LICENSE.txt   "glyphs/OpenSans Bold"
cp fonts/opensans/LICENSE.txt   "glyphs/OpenSans Bold Italic"
cp fonts/opensans/LICENSE.txt   "glyphs/OpenSans Cond Bold"
cp fonts/opensans/LICENSE.txt   "glyphs/OpenSans Cond Light"
cp fonts/opensans/LICENSE.txt   "glyphs/OpenSans Cond Light Italic"
cp fonts/opensans/LICENSE.txt   "glyphs/OpenSans Extra Bold"
cp fonts/opensans/LICENSE.txt   "glyphs/OpenSans Extra Bold Italic"
cp fonts/opensans/LICENSE.txt   "glyphs/OpenSans Italic"
cp fonts/opensans/LICENSE.txt   "glyphs/OpenSans Light"
cp fonts/opensans/LICENSE.txt   "glyphs/OpenSans Light Italic"
cp fonts/opensans/LICENSE.txt   "glyphs/OpenSans Regular"
cp fonts/opensans/LICENSE.txt   "glyphs/OpenSans Semi Bold"
cp fonts/opensans/LICENSE.txt   "glyphs/OpenSans Semi Bold Italic"
