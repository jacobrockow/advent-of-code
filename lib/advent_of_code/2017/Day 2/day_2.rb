require_all './lib/advent_of_code/utils'

class Year2017Day2 < Day

  def self.process_part1 input
    values = input.split("\n").map{|row| row.split("\t").map{|v| v.to_i}}
    sum = values.sum{|row| row.max - row.min}
    return sum
  end

  def self.process_part2 input
    values = input.split("\n").map{|row| row.split("\t").map{|v| v.to_i}}
    sum = 0
    values.each do |row|
        row.each do |v1|
            row.each do |v2|
                if v1 != v2 && v1 % v2 == 0
                    sum = sum + (v1 / v2)
                end
            end
        end
    end
    return sum
  end
  
end

