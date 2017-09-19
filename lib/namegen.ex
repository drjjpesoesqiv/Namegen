defmodule Namegen do
  @moduledoc """
  Documentation for Namegen.
  """

  @doc """
  generates random name
  outputs in JSON format

  ## Examples

      iex> Namegen.gen(male)
      "{\"last\":\"YERIAN\",\"first\":\"DAMON\"}"

  """
  def gen(gender\\ "male") do
    {:ok, lastBody} = File.read("priv/last.txt")
    lastNames = String.split(lastBody, "\n")

    {:ok, firstBody} = File.read("priv/first_#{gender}.txt")
    firstNames = String.split(firstBody, "\n")

    first = Enum.at(firstNames, :rand.uniform length(firstNames))
    last  = Enum.at(lastNames,  :rand.uniform length(lastNames))

    Poison.encode!(%{"first": first, "last": last})
  end
end
