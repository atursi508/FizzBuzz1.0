class FizzBuzz
  def print_numbers
    (1..100).each do |number|
      output = ""
      output += "Fizz" if number % 3 == 0
      output += "Buzz" if number % 5 == 0
      output = number.to_s if output.empty?
      puts output
    end
  end
end
