require 'require_all'
require_all './lib/advent_of_code'

def main
  puts "Welcome to Jacob's Advent of Code Project! Please specify a year:"
  year = gets.chomp
  if !Dir.exist?("./lib//advent_of_code/#{year}")
    puts "No solutions found for year '#{year}'"
    return nil
  end
  puts "Please specify a day:"
  day = gets.chomp
  if !Dir.exist?("./lib/advent_of_code/#{year}/Day #{day}")
    puts "No solutions found for #{year}, Day #{day}'"
    return nil
  end

  puts "Found Solution for Advent of Code #{year}, Day #{day}:"
  problem = "Year#{year}Day#{day}"
  day_obj = Object.const_get(problem)
  input = day_obj.read_file("#{year}/day#{day}_input")
  puts "Part 1: #{day_obj.process_part1(input)}"
  puts "Part 1: #{day_obj.process_part2(input)}"
end

main


