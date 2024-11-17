#!/bin/bash

# PSQL command for executing queries
PSQL="psql --username=freecodecamp --dbname=number_guess --no-align --tuples-only -c"
SECRET_NUMBER=$(( $RANDOM % 1000 + 1 ))

# Prompt for username
echo "Enter your username:"
read USERNAME

# Ensure username is within 22 characters
if [[ ${#USERNAME} -gt 22 ]]; then
  echo "Username must be 22 characters or less. Please try again."
  exit 1
fi

# Check if the user exists in the database
RETURNING_USER=$($PSQL "SELECT username FROM users WHERE username = '$USERNAME'")

if [[ -z $RETURNING_USER ]]
then
  # Insert new user and welcome message
  INSERTED_USER=$($PSQL "INSERT INTO users (username) VALUES ('$USERNAME')")
  echo "Welcome, $USERNAME! It looks like this is your first time here."
else
  # Fetch games played and best game data for returning user
  GAMES_PLAYED=$($PSQL "SELECT COUNT(*) FROM games INNER JOIN users USING(user_id) WHERE username = '$USERNAME'")
  BEST_GAME=$($PSQL "SELECT MIN(guesses) FROM games INNER JOIN users USING(user_id) WHERE username = '$USERNAME'")
  echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi

# Get the user_id for the current user
USER_ID=$($PSQL "SELECT user_id FROM users WHERE username = '$USERNAME'")

# Start the guessing game
TRIES=1
GUESS=0

echo "Guess the secret number between 1 and 1000:"
while true; do
  read GUESS

  # Check if the input is an integer
  if [[ ! $GUESS =~ ^[0-9]+$ ]]; then
    echo "That is not an integer, guess again:"
    continue
  fi

  # Compare the guess with the secret number
  if [[ $GUESS -gt $SECRET_NUMBER ]]; then
    echo "It's lower than that, guess again:"
  elif [[ $GUESS -lt $SECRET_NUMBER ]]; then
    echo "It's higher than that, guess again:"
  else
    # Correct guess
    echo "You guessed it in $TRIES tries. The secret number was $SECRET_NUMBER. Nice job!"
    # Insert game result into the database
    INSERTED_GAME=$($PSQL "INSERT INTO games (user_id, guesses) VALUES ($USER_ID, $TRIES)")
    # Exit the script
    exit 0
  fi

  # Increment the number of tries
  TRIES=$((TRIES + 1))
done
