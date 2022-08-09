defmodule LogLevel do
  @trace 0
  @debug 1
  @info 2
  @warning 3
  @error 4
  @fatal 5

  def to_label(level, legacy?) do
    case {level, legacy?} do
      {@trace, false} -> :trace
      {@debug, _} -> :debug
      {@info, _} -> :info
      {@warning, _} -> :warning
      {@error, _} -> :error
      {@fatal, false} -> :fatal
      _ -> :unknown
    end
  end

  def alert_recipient(level, legacy?) do
    label = to_label(level, legacy?)

    cond do
      label == :error or label == :fatal -> :ops
      label == :unknown and legacy? -> :dev1
      label == :unknown and not legacy? -> :dev2
      true -> nil
    end
  end
end
