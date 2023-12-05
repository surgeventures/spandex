defmodule Spandex.Trace do
  @moduledoc """
  A representation of an ongoing trace.

  * `baggage`: Key-value metadata about the overall trace (propagated across distributed service)
  * `id`: The trace ID, which consistently refers to this trace across distributed services
  * `sampling.priority`: The trace sampling priority for this trace (propagated across distributed services)
  * `sampling.sampling_rate_used`: the sampling rate used to set the priority of this trace. (nil if the priority was set from the distributed context)
  * `sampling.sampling_mechanism_used`: the sampling mechanism used to set the priority of this trace. (nil if the priority was set from the distributed context)
  * `spans`: The set of completed spans for this trace from this process
  * `stack`: The stack of active parent spans
  """
  defstruct baggage: [],
            id: nil,
            sampling: %{
              priority: 1,
              sampling_rate_used: nil,
              sampling_mechanism_used: nil
            },
            spans: [],
            stack: []

  @typedoc @moduledoc
  @type t :: %__MODULE__{
          baggage: Keyword.t(),
          id: Spandex.id(),
          sampling: %{
            priority: integer(),
            sampling_rate_used: float() | nil,
            sampling_mechanism_used: integer() | nil
          } | nil,
          spans: [Spandex.Span.t()],
          stack: [Spandex.Span.t()]
        }
end
