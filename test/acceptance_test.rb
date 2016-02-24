#This program will parse a notes file for the desired input and subsequently output all relevant notes.
#For example, if we search for keyword: addition, it will print the notes that are associated with addition.


require 'minitest'
require 'notes'
require 'open3'

class AcceptanceTest < Minitest::Test
  def test_acceptance_test
  test_string = 'Add 1 to 2    1 + 2  # => 3
Subtract 5 from 2    2 - 5  # => -3
Is 1 less than 2    1 < 2  # => true
Is 1 equal to 2    1 == 2 # => 3
Is 1 greater than 2    1 > 2  # => 3
Is 1 less than or equal to 2    1 <= 2 # => 3
Is 1 greater than or equal to 2    1 >= 2 # => 3
Convert 1 to a float    1.to_f # => 3
Concatenate two arrays    [1,2] + [2, 3]   # => [1, 2, 2, 3]
Remove elements in second array from first    [1,2,4] - [2, 3] # => [1,4]
Access an element in an array by its index    ["a","b","c"][0] # => "a"
Find out how big the array is    ["a","b"].length # => 2
'

    file_path = File.expand_path '../../lib/notes.rb', __FILE__
    stdout, stderr, exitstatus = Open3.capture3(file_path)
    assert_equal test_string, stdout
  end
end


