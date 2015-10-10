defmodule Fizzbuzz do
  @moduledoc "An implementation of FizzBuzz just because."

  @doc """
  A convenient guard clause macro for the fizz rule
  ## Examples
      def result(n) when is_fizz(n) and 0 == rem(n, 5), do: "FizzBuzz"
      def result(n) when is_fizz(n), do: "Fizz"
  """
  defmacro is_fizz(n) do
    quote do
      0 == rem(unquote(n), 3)
    end
  end

  @doc """
  A convenient guard clause macro for the buzz rule
  ## Examples
      def result(n) when 0 == rem(n, 3) and is_buzz(n), do: "FizzBuzz"
      def result(n) when is_buzz(n), do: "Buzz"
  """
  defmacro is_buzz(n) do
    quote do
      0 == rem(unquote(n), 5)
    end
  end

  @doc """
  An implementation of FizzBuzz
  ## Examples
      Fizzbuzz.result(30)
      Enum.to_list(0..100) |> Enum.map &Fizzbuzz.result/1
  """
  def result(n) when is_fizz(n) and is_buzz(n), do: "FizzBuzz"
  def result(n) when is_fizz(n), do: "Fizz"
  def result(n) when is_buzz(n), do: "Buzz"
  def result(n), do: n
end
