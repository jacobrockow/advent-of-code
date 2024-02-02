class Day

  def self.read_file file_name
    file = File.open("./data/#{file_name}.txt")
    data = file.read
    file.close
    return data
  end

  def self.process_part1 input = nil
    return "Not Yet Solved!"
  end

  def self.process_part2 input = nil
    return "Not Yet Solved!"
  end

end