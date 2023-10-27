defmodule Spandex.SamplingStrategy do
  @moduledoc """
  A Sampling strategy is used by spandex to determine the `priority` of a new trace.
  """

  @callback calculate_priority(trace_id :: Spandex.id(), opts :: Keyword.t()) :: integer()
end
