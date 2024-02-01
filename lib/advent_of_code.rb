require 'require_all'
require_all './lib/2023'

def main
  puts "Welcome to Jacob's Advent of Code Project! Please specify a year:"
  year = gets.chomp
  if !Dir.exist?("./lib/#{year}")
    puts "No solutions found for year '#{year}'"
    return nil
  end
  puts "Please specify a day:"
  day = gets.chomp
  if !Dir.exist?("./lib/#{year}/Day #{day}")
    puts "No solutions found for #{year}, Day #{day}'"
    return nil
  end

  puts "Found Solution for Advent of Code #{year}, Day #{day}:"
  problem = "Year#{year}Day#{day}"
  puts "Part 1: #{Object.const_get(problem).process_part1}"
  puts "Part 2: #{Object.const_get(problem).process_part2}"
end

main


