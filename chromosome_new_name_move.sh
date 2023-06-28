#!/bin/bash

# Define the root directory where the search begins
root_directory="/media/haley/My Book/Gonorrhea_Jo-Anne/NG_fastq_output/Chrom_AssemblyTrimmedReads"

# Define the new directory where the renamed files will be moved
new_directory="/media/haley/My Book/Gonorrhea_Jo-Anne/NG_fastq_output/Chrom_AssemblyTrimmedReads/06272023_NCBI_contigs"

find "$root_directory" -type f -path "*/NG*/contigs.fasta" | while IFS= read -r file; do
    # Get the directory name and file name
    dir_name=$(dirname "$file")
    file_name=$(basename "$file")

    # Extract the name of the subdirectory
    subdir_name=$(basename "$dir_name")

    # Create the new filename with subdir name
    new_filename="${subdir_name}_${file_name}"

    # Define the target path for moving the file
    target_path="$new_directory/$new_filename"

    # Move the file to the target directory
    cp "$file" "$target_path"

    echo "Moved: $file --> $target_path"
done
