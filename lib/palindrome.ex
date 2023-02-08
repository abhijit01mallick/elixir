defmodule Palindrome do
  def palindrome(number) when number >= 0 do
    digits = number
      |> to_digits

    digits == reverse(digits)
  end
  def palindrome(number) when number < 0, do: false

  def to_digits(number, newlist \\ []) when number > 0 do
    digit = Integer.mod(number, 10)
    new_num = div(number,10)
    to_digits(new_num, [digit | newlist])
  end

  def to_digits(number, newlist), do: newlist

  def reverse([head | tail], reversed \\ []) do
    reverse(tail, [head | reversed])
  end

  def reverse([], reversed), do: reversed
end
