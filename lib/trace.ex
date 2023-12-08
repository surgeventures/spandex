defmodule Spandex.Trace do
  @moduledoc """
  A representation of an ongoing trace.

  * `baggage`: Key-value metadata about the overall trace (propagated across distributed service)
  * `id`: The trace ID, which consistently refers to this trace across distributed services
  * `sampling`: The sampling decision for this trace from this process. the shape of this value is up to the sampling strategy and can be adapter-specific
  * `spans`: The set of completed spans for this trace from this process
  * `stack`: The stack of active parent spans
  """
  defstruct baggage: [],
            id: nil,
            sampling: %{},
            spans: [],
            stack: []

  @typedoc @moduledoc
  @type t :: %__MODULE__{
          baggage: Keyword.t(),
          id: Spandex.id(),
          sampling: any(),
          spans: [Spandex.Span.t()],
          stack: [Spandex.Span.t()]
        }
end
