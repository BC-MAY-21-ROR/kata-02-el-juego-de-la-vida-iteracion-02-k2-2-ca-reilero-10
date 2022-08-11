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
    cells_randomizer(@gamedimensions)
    show_table
  end

  def show_table
    for a in 0..@height-1 do
      puts @gamedimensions[a].join(' ')
    end
  end

  def cells_randomizer(main_game)
    # Ciclo de la altura para poder randomizar celulas vivas
    for b in 0..@height-1
      # Ciclo de la anchura para poder randomizar celulas vivas
      for c in 0..@width-1
        # @number va a generar un numero aleatorio con la funcion rand, si sale 1, entonces en la ubicacion del loop va a ingresar una celula viva
        @number = rand(1..5)

        if @number == 1
          main_game[b][c] = "*"
        end
      end
    end
  end

end

tablero = Gameoflife.new(5, 5)

tablero.main