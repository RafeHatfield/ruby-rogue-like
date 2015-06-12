# require 'curses' # require the curses gem
#
# include Curses # mixin curses

# The next three functions are provided by including the Curses module.
# init_screen # starts curses visual mode
# getch # reads a single character from stdin
# close_screen # closes the ncurses screen

$LOAD_PATH.unshift '.' # makes requiring files easier

require 'curses'
require 'ui'
require 'game'
require 'data_loader'
require 'messages'
require 'yaml'

Game.new.run
