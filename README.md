# Rainbow Inspector

Rainbow Inspector is a small library that allows you to specify a color of output given by inspect() function.
 
## How it workes?

You can look at the Rainbow Inspector as an override of IO.inspect function.
Whole "project" consists of one function - inspect/2, that as a second parameter takes colour name as an atom.

Allowed colours are: `:black`, `:blue`, `:cyan`, `:green`, `:magenta`, `:red`, `:white` and `:yellow`.

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `rainbow_inspector` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:rainbow_inspector, "~> 0.1.0"}
  ]
end
```
After you've added Rainbow Inspector, you are ready to debug - with colors ;)

## Examples
