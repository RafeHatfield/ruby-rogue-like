class UI
  include Curses

  def initialize
    noecho # do not print characters the user types
    init_screen
  end

  def close
    close_screen
  end

  def message(x, y, string)
    x = x + cols if x < 0
    y = y + lines if y < 0
    setpos(y, x)
    addstr(string)
  end

  def choice_prompt(x, y, string, choices)
    message(x, y, string + ' ')
    loop do
      choice = getch
      return choice if choices.include?(choice)
    end
  end

  def clear
    super # call curses's clear method
  end
end
