#!/bin/bash
function get_file_count {
    local count=$(ls -1 | wc -l)
    echo "$count"
}

correct_count=$(get_file_count)

echo "Welcome to the Guessing Game!"
echo "Guess the number of files in the current directory."

while true; do
    read -p "Your guess: " guess

    if [[ $guess -lt $correct_count ]]; then
        echo "Too low. Try again."
    elif [[ $guess -gt $correct_count ]]; then
        echo "Too high. Try again."
    else
        echo "Congratulations! You guessed correctly. There are $correct_count files in the directory."
        break
    fi
done
