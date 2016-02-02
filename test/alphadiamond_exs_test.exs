defmodule ALPHADIAMONDTest do
  use ExUnit.Case
  doctest ALPHADIAMOND

# row_instructions_test_() -> [
# 	?_assertEqual("A", alphadiamond_app:row_instructions_for('A')),
# 	?_assertEqual("ABA", alphadiamond_app:row_instructions_for('B')),
# 	?_assertEqual("ABCBA", alphadiamond_app:row_instructions_for('C'))
# ].
  test "row instructions are valid for letter" do
		assert ALPHADIAMOND.row_instructions_for("A") == "A"  	
  end

  test "spec validation with valid specs" do
  	assert ALPHADIAMOND.is_valid_spec?("A")
  	assert ALPHADIAMOND.is_valid_spec?("c")
  	assert ALPHADIAMOND.is_valid_spec?("    E       ")
  end

  test "spec validation with invalid specs" do
  	refute ALPHADIAMOND.is_valid_spec?("AA")
  	refute ALPHADIAMOND.is_valid_spec?('A')
  	refute ALPHADIAMOND.is_valid_spec?('4')
  	refute ALPHADIAMOND.is_valid_spec?('{')
  	refute ALPHADIAMOND.is_valid_spec?("")
  	
  end
end

# positive_smoke_test_() -> [
#     ?_assertEqual(ok, alphadiamond_app:diamond(['A'])),
#     ?_assertEqual(ok, alphadiamond_app:diamond(["A"]))
# ].	

# negative_smoke_test_() -> [
# 	?_assertEqual(error, alphadiamond_app:diamond([";"])),
# 	?_assertEqual(error, alphadiamond_app:diamond()),
# 	?_assertEqual(error, alphadiamond_app:diamond([]))
# ].

# row_after_strip(Letter) -> string:strip(alphadiamond_app:row_for(Letter)).

# row_test_() -> [
# 	?_assertEqual("A", row_after_strip("A")),
# 	?_assertEqual("B B", row_after_strip("B")),
# 	?_assertEqual("J                 J", row_after_strip("J"))
# ].


