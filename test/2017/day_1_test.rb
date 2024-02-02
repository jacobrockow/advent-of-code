require 'require_all'
require_all './lib/advent_of_code'
require 'minitest/autorun'

class Year2017Day1Test < Minitest::Test
  def test_part1
    test_cases = {"1122" => 3, "1111" => 4, "1234" => 0, "91212129" => 9}
    test_cases.each do |input, solution|
      assert_equal solution, Year2017Day1.process_part1(input)
    end
  end

  def test_part2
    test_cases = {"1212" => 6, "1221" => 0, "123425" => 4, "123123" => 12, "12131415" => 4}
    test_cases.each do |input, solution|
      assert_equal solution, Year2017Day1.process_part2(input)
    end
  end
end
