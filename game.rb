require 'title_screen'
require 'role'
require 'selection_screen'

class Game
  TRAITS = [Role, Race]

  def initialize
    @ui = UI.new
    @options = { quit: false, randall: false } # variable for options
    at_exit { ui.close; p options } # See selected options at exit
  end

  def run
    title_screen
    setup_character
  end

  private

  attr_reader :ui, :options # Add attr_reader for options

  def setup_character
    get_traits
  end

  def get_traits
    TRAITS.each do |trait|
      SelectionScreen.new(trait, ui, options).render
      quit?
    end
  end

  def title_screen
    TitleScreen.new(ui, options).render
    quit?
  end

  def quit?
    exit if options[:quit]
  end
end
