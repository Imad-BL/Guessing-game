#!/usr/bin/env bash
# File: guessinggame.sh

function count_files {
    local count=$(ls -1 | wc -l)
    echo $count
}

correct_count=$(count_files)

echo "Welcome to the Guessing Game!"
echo "How many files are in the current directory?"

while true; do
    read -p "Enter your guess: " guess

    if [[ ! $guess =~ ^[0-9]+$ ]]; then
        echo "Please enter a valid positive integer."
        continue
    fi

    if [[ $guess -lt $correct_count ]]; then
        echo "Too low! Try again."
    elif [[ $guess -gt $correct_count ]]; then
        echo "Too high! Try again."
    else
        echo "Congratulations! You guessed the correct number of files."
        break
    fi
done
