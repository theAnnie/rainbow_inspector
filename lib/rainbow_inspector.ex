defmodule RainbowInspector do
  @moduledoc """
  Upgrade version of IO.inspect() that allows to specify outputs colour.
  """

  @allowed_colours ~w(
    black
    blue
    cyan
    green
    magenta
    red
    white
    yellow
    )a

  @doc """
  Inspects `item` with given `font colour`.

  Allowed font colours are :black, :blue, :cyan, :green, :magenta, :red, :white and :yellow.
  """
  def colour_inspect(item, font_colour)

  def colour_inspect(item, font_colour) when font_colour in @allowed_colours do
    IO.puts(IO.ANSI.format([font_colour, inspect(item)]))
    item
  end

  def colour_inspect(item, _font_colour) do
    IO.ANSI.reset()
    IO.inspect(item)
  end
end
