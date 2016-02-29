#This program will parse a notes file for the desired input and subsequently output all relevant notes.
#For example, if we search for keyword: addition, it will print the notes that are associated with addition.


require 'minitest'
require 'open3'

class AcceptanceTest < Minitest::Test
  def test_acceptance_test
    notes_program = File.expand_path('../../bin/notes', __FILE__)
    stdout, stderr, exitstatus = Open3.capture3(notes_program)
    assert_match /.*float.*1\.to_f/, stdout

    stdout, stderr, exitstatus = Open3.capture3(notes_program, "-h")
    assert_match /Purpose.*/, stdout
  end
end


