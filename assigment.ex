defmodule User do
  def initials(name) when name in [nil, ""], do: "?"
  def initials(name) do
    with split_name <- String.split(name, " "),
    true <- split_name |> length >= 2 do
        first_letter = split_name |> List.first() |> String.slice(0, 1)
        last_letter = split_name |> List.last() |> String.slice(0, 1)
      "#{first_letter}#{last_letter}"
    else
      false -> name |> String.slice(0, 1)
    end
  end
end

IO.puts(User.initials("Emma McClane"))