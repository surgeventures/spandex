defmodule Spandex.TestSamplingStrategy do
  @moduledoc """
  Just give everything a priority of 1.
  """

  @behaviour Spandex.SamplingStrategy

  @impl true
  def calculate_priority(_trace_id, opts \\ []), do: 1
end
