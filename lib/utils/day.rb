class Day

  def self.read_file file_name
    file = File.open("./data/2023/#{file_name}.txt")
    data = file.readlines.map(&:chomp)
    file.close
    return data
  end

  def self.process_part1
    return "Not Yet Solved!"
  end

  def self.process_part2
    return "Not Yet Solved!"
  end

end