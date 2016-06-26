# /**********************************************************************
#  *                          Homework II                               *
#  *                                                                    *
#  *  Prompt: Given a set S, return the power set P(S), which is        *
#  *          a set of all subsets of S.                                *
#  *                                                                    *
#  *  Input:  A String                                                  *
#  *  Output: An Array with the power set of the input string           *
#  *                                                                    *
#  *  Example: S = "abc", P(S) = ['', 'a', 'b','c','ab','ac','bc','abc']*                                                               *
#  *                                                                    *
#  *  Note: There should not be any duplicates in the power set         *
#  *        ('ab' and 'ba' are considered the same), and it will always *
#  *        begin with an empty string ('')                             *
#  *                                                                    *
#  **********************************************************************/
#
def powerSet(str)
  @str = str
  @result = []

  build("", 0)
  puts "Result: #{@result}"
  puts "Length: #{@result.length}"
  return @result.uniq
end

def build(buildup, depth)
  if depth == @str.length
    @result << buildup
    return
  end

  build(buildup, depth + 1)
  build((buildup + @str[depth]).strip, depth + 1)
end

powerSet('abc')


#k def powerSet(str)
#   @set = str.split ""
#   @set.unshift(" ")
#   @result = []
#   build(" ", 0)
#
#   return @results
# end
#
# def build(buildup, depth)
#   puts "buildup: #{buildup}"
#   puts "depth: #{depth}"
#   temp = []
#   while depth < 3
#     temp << buildup << @set[depth + 1]
#     if depth == 3
#       @result << temp
#     end
#     build(buildup, depth + 1)
#     build(@set[depth+1], depth + 1)
#   end
# end
#


# //////////////////////////////////////////////////////////
# ///////////////  DO NOT TOUCH TEST BELOW!!!  /////////////
# //////////////////////////////////////////////////////////

require 'test/unit'

class PowerSetTest < Test::Unit::TestCase
  def test_powerSet_should_handle_input_of_abc
    test = powerSet('abc')
    answer = ['abc','ab','ac','a','bc','b','c','']

    for i in 0..7
      assert test.include?(answer[i])
    end

    assert_equal(8, test.length)

  end

  def test_powerSet_should_handle_empty_string_input
    test = powerSet('')

    assert_equal('', test[0])
    assert_equal(1, test.length)
  end
  #
  def test_powerSet_should_handle_duplicate_characters_in_input
    test = powerSet('abca')
    answer = ['','a','c','ca','b','ba','bc','bca','aa','ac','aca','ab','aba','abc','abca']

    for i in 0..14
      assert test.include?(answer[i])
    end
    assert_equal(answer.length, test.length)
  end
end
