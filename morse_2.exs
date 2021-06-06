defmodule Morse.Alp do
  defstruct morse_alp: %{
   "A" => ".-", "B" => "-...", "C" => "-.-.", "D" => "-..", "E" => ".", "F" => "..-.",
   "G" => "--.", "H" => "....", "I" => "..", "J" => ".---", "K" => "-.-", "L" => ".-..",
   "M" => "--", "N" => "-.", "O" => "---", "P" => ".--.", "Q" => "--.-", "R" => ".-.",
   "S" => "...", "T" => "-", "U" => "..-", "V" => "...-", "W" => ".--", "X" => "-..-",
   "Y" => "-.--", "Z" => "--.."
 }
end

defmodule Morse do
  @morse_dic %Morse.Alp{}.morse_alp

  def m(s) do
    s
    |> String.codepoints
    |> morse
    |> Enum.join(" ")
  end

  def  mo(str) do
    @morse_dic[String.upcase(str)] || "/"
  end

  def  morse(str) do
    Enum.map(str, &mo/1 )
  end

end

IO.puts(Morse.m("emily"))
