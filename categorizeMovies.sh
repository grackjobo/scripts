#!/bin/bash

# Base directory where genre folders will be created
GENRE_BASE_DIR="/mnt/local/Media/Movies/"

# Function to extract the first genre from the .nfo file
extract_first_genre() {
    local nfo_file="$1"
    local first_genre

    # Extract first genre using grep
    first_genre=$(grep -oP '(?<=<genre>).*?(?=</genre>)' "$nfo_file" | head -n 1)

    echo "$first_genre"
}

# Function to move the movie folder to the corresponding genre folder
move_movie_to_genre() {
    local movie_dir="$1"
    local genre="$2"

    if [[ -n "$genre" ]]; then
        # Define genre folder path
        genre_dir="$GENRE_BASE_DIR/$genre"

        # Create the genre folder if it doesn't exist
        mkdir -p "$genre_dir"

        # Move the movie folder
        mv "$movie_dir" "$genre_dir/"

        echo "Moved '$(basename "$movie_dir")' to '$genre_dir/'"
    else
        echo "No genre found for '$(basename "$movie_dir")', skipping move."
    fi
}

# Recursively find and process .nfo files
find . -type f -name "*.nfo" | while read -r nfo_file; do
    movie_dir=$(dirname "$nfo_file")
    first_genre=$(extract_first_genre "$nfo_file")

    if [[ -n "$first_genre" ]]; then
        move_movie_to_genre "$movie_dir" "$first_genre"
    else
        echo "Movie: $(basename "$movie_dir") | Genre: Unknown (Not moved)"
    fi
done

