require_all './lib/advent_of_code/utils'

class Year2023Day1 < Day

  def self.process_part1 input
    input = input.split("\n")
    num_data = input.map{|line| line.gsub(/[^0-9]/, '')}
    values = num_data.map{|num| "#{num.chars.first}#{num.chars.last}".to_i}
    return values.sum
  end

  def self.process_part2 input
    input = input.split("\n")
    values = input.map{|line| value_from_line(line)}
    return values.sum
  end

  def self.value_from_line line
    num_hash = {"one" => "1", "two" => "2", "three" => "3", "four" => "4", "five" => "5", "six" => "6", "seven" => "7", "eight" => "8", "nine" => "9"}
    regex = /one|two|three|four|five|six|seven|eight|nine|[0-9]/
    left_str = line[regex]
    left_num = if num_hash[left_str].nil?
                 left_str
               else
                 num_hash[left_str]
               end
    right_index = line.rindex(regex)
    right_str = line[right_index, line.length][regex]
    right_num = if num_hash[right_str].nil?
                  right_str
                else
                  num_hash[right_str]
                end
    return "#{left_num}#{right_num}".to_i
  end

end

