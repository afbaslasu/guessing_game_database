# guessing_game_database
Guessing Game Database

A simple number guessing game where users try to guess a randomly generated number between 1 and 1000. The game tracks user statistics, including the number of games played and the fewest guesses needed to win, saved in a PostgreSQL database.
Features

    Generates a random secret number between 1 and 1000.
    Prompts users for a username and retrieves or creates a profile for each user.
    Tracks:
        Total games played by each user.
        Best game (fewest guesses to win).
    Provides feedback on each guess:
        Whether the guess is higher or lower than the secret number.
        Error handling for non-integer inputs.
    Persists user data using PostgreSQL.

Database Structure

The game uses a PostgreSQL database named number_guess with two tables:

    users: Stores user details (user_id, username, games_played, best_game).
    games: Logs each game played (game_id, user_id, guesses).

Requirements

    PostgreSQL database setup.
    Bash for script execution.

Setup

    Clone the repository:

    bash

git clone https://github.com/yourusername/number_guessing_game.git

Navigate to the project directory:

bash

cd number_guessing_game

Set up the database:

    Connect to PostgreSQL and create the number_guess database.
    Create the necessary tables by running the SQL commands found in number_guess.sql.

Make the script executable:

bash

    chmod +x number_guess.sh

Usage

Run the game with:

bash

./number_guess.sh

Follow the prompts to enter a username and start guessing! The game will give feedback until the correct number is guessed.

License

This project is one of the requirements for my backend certification on freeCodeCamp. Feel free to contribute or modify as needed.
