defmodule Morse.Al do
  defstruct morse_al: %{
   "A" => ".-", "B" => "-...", "C" => "-.-.", "D" => "-..", "E" => ".", "F" => "..-.",
   "G" => "--.", "H" => "....", "I" => "..", "J" => ".---", "K" => "-.-", "L" => ".-..",
   "M" => "--", "N" => "-.", "O" => "---", "P" => ".--.", "Q" => "--.-", "R" => ".-.",
   "S" => "...", "T" => "-", "U" => "..-", "V" => "...-", "W" => ".--", "X" => "-..-",
   "Y" => "-.--", "Z" => "--.."
 }
end

defmodule MorseCon do
  @morse %Morse.Al{}.morse_al


  def converter(s) do
    s
    |> String.codepoints
    |> m
    |> Enum.join(" ")
  end

  def m(str) do
    Enum.map(str, &char_mor/1)
  end

  def char_mor(c) do
    @morse[String.upcase(c)] || "/"
  end
end

IO.puts(MorseCon.converter("emily"))
