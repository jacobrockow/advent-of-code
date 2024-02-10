require 'require_all'
require_all './lib/advent_of_code'
require 'minitest/autorun'

class Year2017Day2Test < Minitest::Test

  def test_part2
    test_cases = {"5\t9\t2\t8\n9\t4\t7\t3\n3\t8\t6\t5\n" => 9}
    test_cases.each do |input, solution|
      assert_equal solution, Year2017Day2.process_part2(input)
    end
  end
end