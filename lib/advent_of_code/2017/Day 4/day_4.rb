require_all './lib/advent_of_code/utils'

class Year2017Day4 < Day

  def self.process_part1 input
    passphrases = input.split("\n")
    word_tallies = passphrases.map{|p| p.split(" ").tally}
    good_count = word_tallies.count{|wt| !wt.any?{|w, c| c > 1}}
    return good_count
  end



  def self.process_part2 input
    passphrases = input.split("\n")
    letter_tallies = passphrases.map{|p| p.split(" ").map{|w| w.chars.tally}.tally}
    good_count = letter_tallies.count{|lt| !lt.any?{|w, c| c > 1}}
    return good_count
  end
  
end

