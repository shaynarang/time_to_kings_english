# frozen_string_literal: true

# A class that simply handles the coloring of the shell output.
class StringColorer
  # Return the color code and encapsulated string.
  def self.color(color, string)
    colors = { 'cyan' => '36m', 'red' => '31m', 'green' => '32m' }
    color_code = colors[color]
    "\e[#{color_code}#{string}\e[0m"
  end
end
