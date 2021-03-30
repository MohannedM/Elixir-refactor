defmodule User do
  def initials(name) do
    with true <- name not in [nil, ""],
    split_name <- String.split(name, " "),
    2 <- split_name |> length do
      first_letter = split_name |> List.first() |> String.slice(0, 1)
      last_letter = split_name |> List.last() |> String.slice(0, 1)
      "#{first_letter}#{last_letter}"
    else
      1 -> name |> String.slice(0, 1)
      _ -> "?"
    end
  end
end

IO.puts(User.initials("Emma McClane"))