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

    last_path = Path.join(:code.priv_dir(:namegen), "last.txt")
    {:ok, lastBody} = File.read last_path
    lastNames = String.split(lastBody, "\n")

    first_path = Path.join(:code.priv_dir(:namegen), "first_#{gender}.txt")
    {:ok, firstBody} = File.read first_path
    firstNames = String.split(firstBody, "\n")

    first = Enum.at(firstNames, :rand.uniform length(firstNames))
    last  = Enum.at(lastNames,  :rand.uniform length(lastNames))

    Poison.encode!(%{"first": first, "last": last})
  end
end
