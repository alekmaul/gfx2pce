# gfx2pce graphic converter for PC Engine HUC development

Usage : gfx2pce [options] bmp/pcx/tga filename ...  
  where filename is a 256 color BMP, PCX or TGA file  
  
Options are:  
  
--- Graphics options ---  
-gb               add blank tile management (for multiple bgs)  
-gs(8|16|32|64)   Size of image blocks in pixels [8]  
  
--- Map options ---  
-m!               Exclude map from output  
-m                Convert the whole picture  
-mp               Convert the whole picture with high priority  
-mn#              Generate the whole picture with an offset for tile number  
                   where # is the offset in decimal (0 to 2047)  
-mR!              No tile reduction (not advised)  
  
--- Palette options ---  
-p!               Exclude palette from output.  
-pc(16|128|256)   The number of colors to use [256]  
-po#              The number of colors to output (0 to 256) to the filename.pal  
-pe#              The palette entry to add to map tiles (0 to 16)  
-pr               Rearrange palette, and preserve palette numbers in the tilemap  
-pR               Palette rounding  
  
--- File options ---  
-f[bmp|pcx|tga|png]   convert a bmp or pcx or gta or png file [bmp]  
  
--- Misc options ---  
-n                no border  
-q                quiet mode  
  
Example:  
gfx2pce -po16 -gs8 -pc16 -pe0 -fpng -n -m -gb myimage.png  
  will convert a myimage png file to a map/pal/pic files with 16 colors,palette entry #0  
  8x8 tiles,a blank tile,a map, no border, 16 colors output.  
