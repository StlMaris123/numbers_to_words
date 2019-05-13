require 'test/unit'
require './numbers_to_words.rb'
class NumbersToWordsTest < Test::Unit::TestCase
 def test_the_numbers
    num = NumbersToWords.new
    assert_equal(num.print_number_in_words(1000), 'One Thousand')
    assert_equal(num.print_number_in_words(423), 'Four Hundred Twenty Three')
  end
end
