defmodule Spandex.TestSamplingStrategy do
  @moduledoc """
  Just give everything a priority of 1.
  """

  @behaviour Spandex.SamplingStrategy

  @impl true
  def calculate_sampling(_trace_id, _opts \\ []), do: %{
    priority: 1,
    sampling_rate_used: 1.0,
    sampling_mechanism_used: "test"
  }
end
