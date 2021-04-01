defmodule User do
  def initials(name) when name in [nil, ""], do: "?"
  def initials(name) do
    with split_name <- String.split(name, " "),
    true <- split_name |> length >= 2 do
      [first_name | last_names ] = split_name
      [last_name | _] = Enum.reverse(last_names)
      "#{String.slice(first_name, 0, 1)}#{String.slice(last_name, 0, 1)}"
    else
      false -> name |> String.slice(0, 1)
    end
  end
end

IO.puts(User.initials("Emma McClane"))