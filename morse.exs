defmodule Morse.Alp do
   defstruct morse_alp: %{
    "A" => ".-", "B" => "-...", "C" => "-.-.", "D" => "-..", "E" => ".", "F" => "..-.",
    "G" => "--.", "H" => "....", "I" => "..", "J" => ".---", "K" => "-.-", "L" => ".-..",
    "M" => "--", "N" => "-.", "O" => "---", "P" => ".--.", "Q" => "--.-", "R" => ".-.",
    "S" => "...", "T" => "-", "U" => "..-", "V" => "...-", "W" => ".--", "X" => "-..-",
    "Y" => "-.--", "Z" => "--.."
  }
end

defmodule ToMorse do
   @alpha %Morse.Alp{}.morse_alp

   def to_morse(words) do
    words
    |> String.codepoints()
    |> morse
    |> Enum.join(" ")
  end

  defp morse_char(c) do
    @alpha[String.upcase(c)] || "/"
  end

  defp morse(s) do
    Enum.map(s, &morse_char/1)
  end



end

IO.puts(ToMorse.to_morse("emily"))
