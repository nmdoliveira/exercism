class Hamming
  VERSION = 1

  def self.compute(strand, other_strand)
    raise ArgumentError, 'Strands have different lengths' if
      strand.length != other_strand.length

    strand.length.times.count { |i| strand[i] != other_strand[i] }
  end
end
