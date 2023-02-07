defmodule Palindrome do
  def palindrome(number) when number >= 0 do
    digits = number
      |> Integer.digits()

    digits == Enum.reverse(digits)
  end
  def palindrome(number) when number < 0, do: false
end
