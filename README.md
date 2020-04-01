# Tic Tac Toe

In this project, the student builds a Tic Tac Toe game. The main goal is to put into practice the main concepts of Object Oriented Programming. Particularly, classes and access to their attributes.

## Project specifications

Build a tic-tac-toe game on the command line where two human players can play against each other and the board is displayed in between turns.

more about the specifications  [Wikipedia](https://en.wikipedia.org/wiki/Tic-tac-toe)

## Link to assignment

the assignment can be found  [here](https://www.theodinproject.com/courses/ruby-programming/lessons/oop).

## Usage

To run the game you should add execute permissions to the main file. [Here](https://commandercoriander.net/blog/2013/02/16/making-a-ruby-script-executable/) you can find more information. 

    chmod 755 main.rb

After that you can start the game by running

    ./bin/main.rb

## Testing with RSpec 

To run the test cases with RSpec we have to follow this steps:

installing RSpec

    gem install rspec

Once that’s done, you can verify your version of RSpec with, for this project we had used the version 3.9 

    rspec --version

finally run for watch the results

    rspec


## Watch the result of RSpec

You can see the result of testing 

```
Board
  #display_board
    when board initialized
      returns board string with the initial state of the board
    when board is updated
      returns board string with the current state of the board
  #update_board
    updating positions on the board with given symbol
      returns the board array with the symbols updated
  #get_coord
    Create a Coordinate related to the position given
      returns coordinate(0,1) when position is 2
      returns coordinate(1,2) when position is 6
  #position_taken
    when position is given
      returns true when position is already taken
      returns false when position is available
  #check_line_of_symbols
    check when a line is filled with the same symbol
      returs true if a all line is filled with the gicen symbol
      returs true if a all line is filled with the given symbol
  #check_line_draw
    check when all line are not filled with the same symbol    
      returs true if all lines are not filled with the given symbol
      returs false if some line is filled with the given symbol

Game
  #validate_position
    when the position is not Integer
      return false when input empty
      return false when input white space
      return false when input string
    when the position is negative
      return false for negative
    when the position is taked
      return false for invalid position
    when the position is not taked
      return true for valid position
  #winner
    when there is a winner
      return true
    when there is not a winner
      return false
  #check_line_draw
    when there is a draw
      return true

PlayerList
  #add_player
    add a new player
      returns true when a new player is added to the playerlist
      returns true when a new player is added to the playerlist
      returns false when a repeated is added to the playerlist
  #validate_unique_name
    when name added a new player
      returns false when name does not exist
      returns true when name already exists

Player
  #validate_name
    When name is not given
      return false if name is nil or empty
      return false if name is nil or empty
    When name is given
      return false if name have white spaces
      return false if name have white spaces
  #validate_symbol
    When symbol is not given
      return false if symbol is nil or empty
      return false if symbol is nil or empty
    When symbol is given
      return false if symbol have white spaces
      return false if symbol have white spaces
  #show_info_player
    when name and symbol exists
      return string
    when name and symbol does not exists
      return info player is empty

Finished in 0.3107 seconds (files took 0.34145 seconds to load)
35 examples, 0 failures
```



## Instructions

Tic Tac Toe is a game for two players who take turns to mark spaces in a 3x3 grid board, using the symbols 'X' and 'O'.

In this game each cell of the board is represented by a position(number) from 1 to 9, as shown below:

    |  1    2    3  |
    |  4    5    6  |
    |  7    8    9  |

When starting the game, it is going to ask you for the names of the players. For example:
    
    Please enter a name for player 1:

And after the name of the first player, it is going to ask you for the symbol:
    
    Choose between 'X' or 'O':

Then it will show you the names of the two players and the symbol for each one. And you can start playing!
    
    --------------------------------------
    symbol: X    Name: ARIEL CAMUS
    symbol: O    Name: WILLOW
    --------------------------------------
    ARIEL CAMUS and WILLOW are you ready? (Y/N):

The game will ask for a position representing the current player's move on the board.
    
    Player 'ARIEL CAMUS' please choose a position (from 1 to 9): 

Unless there is a winner or the board gets full (which means it is a draw), the game will ask to the next player for choosing another position.

A winner will be found when a player gets a single line (horizontal, vertical or diagonal) with the same symbol.

For example, the following board shows an horizontal line winning move for the player X:

    |  1    2    O  |
    |  X    X    X  |
    |  7    O    9  |


## Built With

Concepts used on this project

- Ruby
- OOP 
- Yield
- Describe, it and context for testing with RSpec

Tools used on this project

- Visual Studio Code
- VSCode Ruby by Stafford Brunk 0.27.0
- Rubocop 0.8.3
- RSpec 3.9


## Screenshot

![screenshot](./img/screenshop.png)

## Live Demo

You can see the [live preview](https://repl.it/@RubenPaz/tic-tac-toe)


## Authors

👤 **Xóchitl Selene Flores Pérez**

- Github: [@enelesmai](https://github.com/enelesmai)
- Twitter: [@enelesmai](https://twitter.com/enelesmai)
- Linkedin: [xochitlselene](https://linkedin.com/in/xochitlselene)

👤 **Ruben Paz Chuspe**

- Github: [@rubenpazch](https://github.com/rubenpazch)
- Linkedin: [rubenpch](https://www.linkedin.com/in/rubenpch/)


## Contributing

This is an education project as a part of the Microverse so contributing is not accepted. 

Contributions, issues and feature requests are welcome!

Feel free to check the [issues](https://github.com/enelesmai/tic-tac-toe/issues).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgements

+ [Microverse](https://www.microverse.org/).
+ [Github](http://github.com/).
+ [The Odin Project](theodinproject.com/).

## License

This project is [MIT](lic.url) licensed.

