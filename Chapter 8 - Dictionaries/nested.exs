defmodule Customer do
  defstruct name: "", company: ""
end
defmodule BugReport do
  defstruct details: "", severity: 1,owner: %{}
end
