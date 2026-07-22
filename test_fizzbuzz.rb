require 'minitest/autorun'
require_relative 'fizzbuzz'

class TestFizzBuzz < Minitest::Test
  def test_print_numbers_1_to_100
    output = capture_output do
      fizzbuzz = FizzBuzz.new
      fizzbuzz.print_numbers
    end
    
    # Check that output contains all numbers from 1 to 100
    lines = output.strip.split("\n")
    assert_equal 100, lines.length, "Should print exactly 100 numbers"
    
    # Verify the sequence is correct
    lines.each_with_index do |line, index|
      expected = index + 1
      assert_equal expected.to_s, line, "Line #{index + 1} should contain #{expected}"
    end
  end

  private

  def capture_output
    old_stdout = $stdout
    $stdout = StringIO.new
    yield
    $stdout.string
  ensure
    $stdout = old_stdout
  end
end
