#!/usr/bin/env bash
# File: guessinggame.sh
echo "[Hello........Welcome.........]"

function prompt {
        echo "Guess the number of files in the current directory !! :"
        read guess
    file_no=$(ls -1 | wc -l)
}

prompt

while [[ $guess -ne $file_no ]]
do
        if [[ $guess -lt $file_no ]] 
        then
                echo "Your guess is too low."
        else
                echo "Your guess is too high."
        fi
        prompt
done

echo "Congragulations Wizard...You guessed it right "




