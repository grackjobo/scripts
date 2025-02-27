#!/bin/bash

# Function to extract genres from .nfo file
extract_genre() {
    local nfo_file="$1"
    local genres

    # Extract genres from the .nfo file (assuming XML structure)
    genres=$(grep -oP '(?<=<genre>).*?(?=</genre>)' "$nfo_file" | tr '\n' ',' | sed 's/,$//')

    echo "$genres"
}

# Recursively find and process .nfo files
find . -type f -name "*.nfo" | while read -r nfo_file; do
    movie_dir=$(dirname "$nfo_file")
    genres=$(extract_genre "$nfo_file")

    if [[ -n "$genres" ]]; then
        echo "Movie: $(basename "$movie_dir") | Genres: $genres"
    else
        echo "Movie: $(basename "$movie_dir") | Genres: Unknown"
    fi
done

