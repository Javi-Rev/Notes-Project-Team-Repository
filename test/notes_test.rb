gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'notes'

class PutsStringFirstTest < Minitest::Test

  def test_puts_out_string_of_characters
    chair = LeatherChair.new
    assert_equals "Test1 test 2
      4 test 3            test 4
        5 test 5     test
          6 teset                      test"
end
