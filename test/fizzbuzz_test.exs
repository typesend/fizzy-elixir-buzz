defmodule FizzbuzzTest do
  use ExUnit.Case
  doctest Fizzbuzz

  test "divisible by three returns Fizz" do
    Fizzbuzz.result(3) == "Fizz"
  end

  test "divisble by five returns Buzz" do
    Fizzbuzz.result(5) == "Buzz"
  end

  test "divisible by three and five returns FizzBuzz" do
    Fizzbuzz.result(30) == "FizzBuzz"
  end

  test "all other cases return n" do
    Fizzbuzz.result(1) == 1
  end

end
