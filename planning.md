# Planning

## Game order

1. Game is initialized on Player 1’s turn
2. Game asks first question
3. Player one answers
4. If wrong, lose a life, if right, no change
5. Change to other player’s turn
6. repeat until a player’s lives are 0
7. end game

## Classes

### Player1/Player 2

- lives - initialized at 3

### Game

- current player - initialized at 1
- players - array with players

### Question

- first number - random 1 to 20
- second number - random 1 to 20
- correct answer - first number plus second number

## Methods

### Player1/Player2 methods

- initialize with lives

### Game methods

- initialize game with players and current player
- subtract a life from a player if they are wrong
- give the score
- change to next player’s turn

### Question methods

- generate random numbers and ask the question
