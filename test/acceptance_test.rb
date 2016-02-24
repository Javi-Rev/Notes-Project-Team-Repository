#This program will parse a notes file for the desired input and subsequently output all relevant notes.
#For example, if we search for keyword: addition, it will print the notes that are associated with addition.


require 'minitest'
require 'open3'

class AcceptanceTest < Minitest::Test
  def test_acceptance_test
    file_path = File.expand_path '../../lib/notes', __FILE__
    stdout, stderr, exitstatus = Open3.capture3(file_path)
    #assert_equal test_string, stdout
    assert_match /.*float.*1\.to_f/, stdout
  end
end


