defmodule MyList do
  def span(from, to) when from > to do
    _span([from], -1, to)
  end

  def span(from, to) do
    _span([from], 1, to)
  end

  defp _span([to | tail], _step, to) do
    Enum.reverse([to | tail])
  end

  defp _span([head | tail], step, to) do
    _span([head + step | [head | tail]], step, to)
  end
end
