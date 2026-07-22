require 'minitest/autorun'
require 'stringio'
require_relative 'fizzbuzz'

class TestFizzBuzz < Minitest::Test
  def test_print_numbers_1_to_100
    output = capture_output do
      fizzbuzz = FizzBuzz.new
      fizzbuzz.print_numbers
    end
    
    # Check that output contains exactly 100 lines
    lines = output.strip.split("\n")
    assert_equal 100, lines.length, "Should print exactly 100 numbers"
  end

  def test_fizzbuzz_outputs_correct_values
    output = capture_output do
      fizzbuzz = FizzBuzz.new
      fizzbuzz.print_numbers
    end
    
    lines = output.strip.split("\n")
    
    # Test some key cases
    assert_equal "1", lines[0], "First number should be 1"
    assert_equal "2", lines[1], "Second number should be 2"
    assert_equal "Fizz", lines[2], "3rd number should be Fizz"
    assert_equal "4", lines[3], "4th number should be 4"
    assert_equal "Buzz", lines[4], "5th number should be Buzz"
    assert_equal "Fizz", lines[5], "6th number should be Fizz"
    assert_equal "FizzBuzz", lines[14], "15th number should be FizzBuzz"
  end

  def test_100_is_buzz
    output = capture_output do
      fizzbuzz = FizzBuzz.new
      fizzbuzz.print_numbers
    end
    
    lines = output.strip.split("\n")
    assert_equal "Buzz", lines[99], "100th number should be Buzz"
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
