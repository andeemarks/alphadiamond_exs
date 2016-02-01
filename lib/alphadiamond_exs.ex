defmodule ALPHADIAMOND do
	def is_valid_spec?(spec) when is_binary(spec) do
		Regex.match?(~r/^[A-Za-z]$/, String.strip(spec))
	end
	def is_valid_spec?(_) do
		false
	end
end
