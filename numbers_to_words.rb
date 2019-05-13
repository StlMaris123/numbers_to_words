class NumbersToWords
  @@words_to_numbers = {
    1000000 => "Million",
    1000 => "Thousand",
    100 => "Hundred",
    90 => "Ninety",
    80 => "Eighty",
    70 => "Seventy",
    60 => "Sixty",
    50 => "Fifty",
    40 => "Forty",
    30 => "Thirty",
    20 => "Twenty",
    19=>"Nineteen",
    18=>"Eighteen",
    17=>"Seventeen", 
    16=>"Sixteen",
    15=>"Fifteen",
    14=>"Fourteen",
    13=>"Thirteen",              
    12=>"Twelve",
    11 => "Eleven",
    10 => "Ten",
    9 => "Nine",
    8 => "Eight",
    7 => "Seven",
    6 => "Six",
    5 => "Five",
    4 => "Four",
    3 => "Three",
    2 => "Two",
    1 => "One"
  }


def print_number_in_words(int)
  @@words_to_numbers.each do |num, name|
    if int == 0
      return "zero"
    elsif int.between?(1,99)  && int == num
      return  "#{name}" 
    elsif int.between?(10,99) && int/num > 0
      return "#{name} " + print_number_in_words(int%num)
    elsif int/num > 0
      return print_number_in_words(int/num) + " #{name} " if int%num == 0
      return print_number_in_words(int/num) + " #{name} " + print_number_in_words(int%num)
    end
  end
end  
end
words_to_numbers = NumbersToWords.new
puts words_to_numbers.print_number_in_words(1000)
puts words_to_numbers.print_number_in_words(20)
puts words_to_numbers.print_number_in_words(5623)
