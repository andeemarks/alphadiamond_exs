defmodule ALPHADIAMONDTest do
  use ExUnit.Case
  doctest ALPHADIAMOND

  test "row instructions are valid for letter" do
		assert ALPHADIAMOND.row_instructions_for("A") == "A"  	
		assert ALPHADIAMOND.row_instructions_for("B") == "ABA"  	
		assert ALPHADIAMOND.row_instructions_for("C") == "ABCBA"  	
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

  test "row construction" do
		assert String.strip(ALPHADIAMOND.row_for("A")) == "A"
		assert String.strip(ALPHADIAMOND.row_for("B")) == "B B"
		assert String.strip(ALPHADIAMOND.row_for("J")) == "J                 J"
  end

  test "smoke test with positive data" do
  	assert ALPHADIAMOND.diamond("A")
  end

  test "smoke test with negative data" do
  	refute ALPHADIAMOND.diamond(";")
  	refute ALPHADIAMOND.diamond("")
  	refute ALPHADIAMOND.diamond()
  end
end


