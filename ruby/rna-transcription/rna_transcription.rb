class Complement
  VERSION = 1

  DNA_TO_RNA = {
    'G' => 'C',
    'C' => 'G',
    'T' => 'A',
    'A' => 'U'
  }

  def self.of_dna(strand)
    strand.each_char.map { |nucleotide| dna_to_rna(nucleotide) }.join
  end

  def self.of_rna(strand)
    strand.each_char.map { |nucleotide| rna_to_dna(nucleotide) }.join
  end

  def self.dna_to_rna(nucleotide)
    DNA_TO_RNA[nucleotide] ||
      raise(ArgumentError, "Invalid DNA nucleotide: #{nucleotide}")
  end

  def self.rna_to_dna(nucleotide)
    DNA_TO_RNA.key(nucleotide) ||
      raise(ArgumentError, "Invalid RNA nucleotide: #{nucleotide}")
  end
end
