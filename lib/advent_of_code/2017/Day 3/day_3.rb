require_all './lib/advent_of_code/utils'

class Year2017Day3 < Day

  def self.process_part1 input
    root = Math.sqrt(input.to_i).ceil
    root += (root % 2 == 1) ? 0 : 1
    previous_root = root - 2
    ring = root/2 #this works because its an integer and auto truncates the extra 0.5
    previous_ring = previous_root/2
    previous_corner = previous_root**2

    centers = [previous_corner + ring, 
    previous_corner + (ring * 3),
    previous_corner + (ring * 5),
    previous_corner + (ring * 7)]

    distance_from_edge_center = centers.map{|c| (c - (input.to_i)).abs}.min

    manhattan_distance = ring + distance_from_edge_center

    return manhattan_distance
  end



  def self.process_part2 input
    return nil
  end
  
end

