#!/bin/bash

# Define the input and output directories
input_dir=$1
output_dir=$2

# Create the output directory if it doesn't exist
mkdir -p "$output_dir"

# Loop over each PDF file in the input directory
for pdf_file in "$input_dir"/*.pdf; do
  # Check if the file exists (in case there are no PDFs)
  if [[ -f "$pdf_file" ]]; then
    # Get the base name of the file (without extension)
    base_name=$(basename "$pdf_file" .pdf)
    
    # Define the output thumbnail file name
    output_thumbnail="$output_dir/${base_name}.png"
    
    # Convert the PDF to a thumbnail
    magick "$pdf_file" -resize 800x450 -quality 70 -strip -define png:compression-level=9 "$output_thumbnail"
    
    # Notify the user
    echo "Thumbnail created for $pdf_file as $output_thumbnail"
  fi
done

echo "All thumbnails have been created."