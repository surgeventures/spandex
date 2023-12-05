defmodule Spandex.SamplingStrategy do
  @moduledoc """
  A Sampling strategy is used by spandex to determine the `priority` of a new trace.
  """

  @callback calculate_sampling(trace_id :: Spandex.id(), opts :: Keyword.t()) :: map()
end
