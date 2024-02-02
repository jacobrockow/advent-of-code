require_all './lib/advent_of_code/utils'

class Year2017Day1 < Day

  def self.process_part1 input
    sum = 0
    input.chars.each_with_index do |c, i|
      if c == input.chars[i+1] || (i == input.length - 1 && c == input.chars.first)
        sum = sum + c.to_i
      end
    end
    return sum
  end

  def self.process_part2 input
    sum = 0
    half = input.length / 2
    input.chars.each_with_index do |c, i|
      opposite = (i + half) % input.length
      if c == input.chars[opposite]
        sum = sum + c.to_i
      end
    end
    return sum
  end
  
end

