class Integer
  ROMAN = {    
    1000 => 'M',
    500 => 'D',
    100 => 'C',
    50 => 'L',
    10 => 'X',
    5 => 'V',
    1 => 'I'
  }

  def to_roman
    remainder = self
    
    [100, 10, 1].product([10, 5]).push([1, 1])
      .each_with_object('') do |(subtractor, multiplier), result|
        value = subtractor * multiplier
               
        quocient, remainder = remainder.divmod(value)
        result << ROMAN[value] * quocient
      
        if remainder >= value - subtractor && value != 1
          result << ROMAN[subtractor] + ROMAN[value]
          remainder -= value - subtractor
        end
      end
  end
end