# Gameoflife : Declaracion de nuestro tablero principal
class Gameoflife
  def initialize(width, height)
    @width = width
    @height = height
  end

  def create_table
    @gamedimensions = Array.new(@height) { Array.new(@width) {'.'} }
  end

  def main
    create_table
    show_table
  end

  def show_table
    for a in 0..@height-1 do
      puts @gamedimensions[a].join(' ')
    end
  end

  def show_results
    puts "La anchura del tablero es de #{@width} y la altura es de #{@height}"
  end
end

tablero = Gameoflife.new(5, 5)

tablero.main