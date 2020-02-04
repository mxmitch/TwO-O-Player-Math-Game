# Planning

## Game order

1. Game is initialized on Player 1’s turn
2. Game asks first question
3. Player one answers
4. If wrong, lose a life, if right, no change
5. Change to other player’s turn
6. repeat until a player’s lives are 0
7. end game

## Classes/Methods

### Player1/Player 2

- stores lives - initialized at 3

### Player1/Player2 methods

- initialize with lives
- method to subtract a life from a player if they are wrong

### Game

- stores current player - initialized with player 1
- stores players - array with players

### Game methods

- initialize game with players and current player
- calls the question method
- get answer from user and checks it
- method to check if current player's score is 0, if 0 then endgame
- method to give the score
- method to change to next player’s turn

### Question

- sets first number - random 1 to 20
- sets second number - random 1 to 20
- sets correct answer - first number plus second number

### Question methods

- method to generate random numbers
- method to ask the question
- method to check if answer is correct
