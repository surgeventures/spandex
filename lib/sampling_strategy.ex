defmodule Spandex.SamplingStrategy do
  @moduledoc """
  A Sampling strategy is used by spandex to calculate any sampling information for a new trace.
  """

  @callback calculate_sampling(trace_id :: Spandex.id(), opts :: Keyword.t()) :: any()
end
