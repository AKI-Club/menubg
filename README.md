# menubg
`menubg` is a tool for converting menu background images from AKI Corporation's
wrestling games on Nintendo 64. It can also generate new background image files
for use in the game.

## Usage
The program has two modes:
1) Convert a list of binary files that make up a menu background into a PNG file.
2) Convert a PNG file into binary files that make up a menu background.

### Background Types
It is important to note the menu background format changed between games.
Properly converting data requires understanding the difference between the
different background types.

The "`old`" format is found in WWF WrestleMania 2000. It consists of ten
slices, 320x24 pixels each.

The "`new`" format is found in Virtual Pro-Wrestling 2 and WWF No Mercy.
Each chunk is 64x30 pixels, and there are 40 chunks in total.

### List Conversion
`menubg -l LIST_FILE -t BG_TYPE [-d OUT_DIR]`

where...
- `LIST_FILE` is the path to a text file containing a list of files making up the menu background.
- `BG_TYPE` is one of "`old`" or "`new`" (no quotes)
- `OUT_DIR` is the optional output directory. The directory *must* already exist.

#### List File Format Notes
- Each entry in the list file should be on its own line.
- Ideally, the file should have Unix line endings (`\n`).
- Paths can be relative or absolute.
- Paths should use `/` as the directory separator.

### PNG to Menu Background
`menubg -p PNG_FILE -t BG_TYPE [-d OUT_DIR]`

where...
- `PNG_FILE` is the PNG format file to convert to a menu background.
- `BG_TYPE` is one of "`old`" or "`new`" (no quotes)
- `OUT_DIR` is the optional output directory. The directory *must* already exist.

The PNG file *must* be 320x240 pixels, and it *must* have a 16-color palette for
conversion to work properly.

## License
This program is licensed under the Unlicense. See the `UNLICENSE` file for more information.

This program uses LodePNG, which has a different license. Please see `lodepng.h` for more information.
