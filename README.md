
# Anaconda: Tic-Tac-Toe Coding Challenge
Your mission, should you choose to accept it, is to implement a two-player game of Tic-tac-toe in the web browser.


I built my submission using Ruby on Rails. You can start the application by 
 * installing the gems 
 * running rake db:migrate
 * rails s
 * vist http://localhost:3000
 
However, I have also added Docker support.

You can run...
 * docker build . -t tictactoe
 * docker run -it -p "3000:3000" tictactoe 
 * vist http://localhost:3000
 
 You can consume the API using the JSON::API Specification
 
- `GET /api/games`: Return a list of the Games known to the server, as JSON.


- `POST /api/games`: Create a new `Game`, assigning it an ID and returning the newly created `Game`.

- `GET /api/games/<id>`: Retrieve a `Game` by its ID, returning a `404` status
  code if no game with that ID exists.

- `POST /api/games/<id>`: Update the `Game` with the given ID, replacing its data with the newly `POST`ed data.

 The attributes used for creation are playerone and playertwo.
 
 The attributes used for update are playerone, playertwo, and board.
 Example
 
     {
       "data": {
         "attributes": {
      "playerone": "Jack",
      "playertwo": "Jill",
      "board": [
        [
          null,null,null
        ],
        [
          null,1,null
        ],
        [
          null,null,0
        ]
      ]
    },
    "type": "game"
       }
     }
     
 0 represents a X (player 1)
 1 represents a Y (player 2)

## Rules

HONOR RULES: You must do this challenge on your own, without assistance or review from others, and without copying from the Internet. You will be asked to affirm that you developed your work independently.

TIME LIMIT: You have 3 days from the date you receive a link to this site. You may submit your work earlier.

TASK: Your task it implement a simple but comprehensive REST API for a [tic-tac-toe game](https://en.wikipedia.org/wiki/Tic-tac-toe)

## Requirements

The basic requirements for the game are:

store a game board data structure that contains the game information
allow two players to enter their names, and automatically assign one of them the circle and the other the 'x'allow each to play a turn, one at a time, during which the player selects a square of the board and it is filled in with their symbol
indicate when one of the players has won, or the game is a draw
In addition to implementing basic gameplay, the user must be able to save their game to the server.

Since this is a coding challenge, the success of your mission depends on building a good rest API implementation. 

Make sure to provide instruction about how to setup, run and consume your REST API.

## Technologies

We prefer Python and the tornado framework, but they are not required. You can use whatever technology you prefer.

Game data structure
A game consists of:

two players, represented by their names as strings
a board data structure (we are leaving you the choice of what data structure is more appropriate for the task). Keep in mind that this data structure needs to trak the status of each board element. Each element is null if the square is blank, or either 0 or 1 to indicate which player controls the square. 

Server API
The server should complies with the JSON API specification.

- `GET /api/games`: Return a list of the Games known to the server, as JSON.


- `POST /api/games`: Create a new `Game`, assigning it an ID and returning the newly created `Game`.

- `GET /api/games/<id>`: Retrieve a `Game` by its ID, returning a `404` status
  code if no game with that ID exists.

- `POST /api/games/<id>`: Update the `Game` with the given ID, replacing its data with the newly `POST`ed data.

## Optional

If you have extra time and want to take on an additional challenge, you may choose to implement:

 - viewing & restoring saved games
 - an "AI" player option, where someone can play against the computer

However, please be aware that we'd prefer a more polished implementation to more features!

## Submission

When you are ready, please submit your challenge as a pull request
against this repository.
