#!/bin/bash

# script to create litle images from a bigger one
# uses imagemagick (linux, or wsl in win)

if ! command -v convert &> /dev/null; then
    echo "ImageMagick is not installed!"
    exit 1
fi

columns=3
rows=2
font_size=40
padding=20

input_image="$1"
output_format="jpg"
output_prefix="title"
text_color="white"
background_color="rgba(0,0,0,0.5)"

if [ -z "$input_image" ]; then
    echo "Usage: $0 input_image [columns] [rows] [output_prefix]"
    exit 1
fi

if [ -n "$2" ]; then columns="$2"; fi
if [ -n "$3" ]; then rows="$3"; fi
if [ -n "$4" ]; then output_prefix="$4"; fi



width=$(identify -format "%w" "$input_image")
height=$(identify -format "%h" "$input_image")

tile_width=$((width / columns))
tile_height=$((height / rows))

echo "slicing $input_image into $columns columns and $rows rows"
echo "dimensions of every piece: ${tile_width}x${tile_height} pixels"

mkdir -p "${output_prefix}_tiles"

for ((row=0; row<rows; row++)); do
    for ((col=0; col<columns; col++)); do
        x=$((col * tile_width))
        y=$((row * tile_height))
        
        output_file="${output_prefix}_tiles/${output_prefix}_${row}_${col}.${output_format}"
        
        convert "$input_image" -crop "${tile_width}x${tile_height}+${x}+${y}" \
            -gravity center -background "$background_color" -extent "${tile_width}x${tile_height}" \
            -font "Helvetica" -fill "$text_color" -pointsize "$font_size" \
            -annotate +0+0 "Title ${row}-${col}" \
            "$output_file"
            
        echo "Created: $output_file"
    done
done

echo "pieces created in the ${output_prefix}_tiles dir <<"
