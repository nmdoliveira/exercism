class Raindrops
  DICTIONARY = {
    3 => 'Pling',
    5 => 'Plang',
    7 => 'Plong'
  }

  def self.convert(number)
    conversion = DICTIONARY.each_with_object('') do |(factor, word), phrase|
      phrase << word if number % factor == 0
    end

    conversion.empty? ? number.to_s : conversion
  end
end
