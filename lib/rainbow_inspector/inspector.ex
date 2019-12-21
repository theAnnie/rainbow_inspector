defmodule RainbowInspector.Inspector do
  @allowed_colors ~w(
    red
    blue
    green
    yellow
    white
    magenta
    cyan
    black
    )a

  def color_inspect(item, font_color) when font_color in @allowed_colors do
    IO.puts(IO.ANSI.format([font_color, inspect(item)]))
    item
  end

  def color_inspect(item, _font_color) do
    IO.ANSI.reset
    IO.inspect(item)
  end
end
