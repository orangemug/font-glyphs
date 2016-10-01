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
  "glyphs/Noto Sans Regular"

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

