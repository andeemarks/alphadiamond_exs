defmodule ALPHADIAMOND do

	@alphabet Enum.to_list(?A .. ?Z)
	@row_template List.to_string(Enum.to_list(?Z .. ?B) ++ Enum.to_list(?A .. ?Z))

	def is_valid_spec?(spec) when is_binary(spec) do
		Regex.match?(~r/^[A-Za-z]$/, String.strip(spec))
	end
	def is_valid_spec?(_) do
		false
	end

	def row_instructions_for(letter) do
		instruction_half = List.first(String.split(List.to_string(@alphabet), letter))
		instruction_half <> letter <> String.reverse(instruction_half)
	end

	def row_for(letter) do
		everything_but_letter = elem(Regex.compile("[^" <> letter <> "]"), 1)
		Regex.replace(everything_but_letter, @row_template, " ")
	end
end
