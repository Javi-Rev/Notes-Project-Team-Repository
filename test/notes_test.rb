require 'minitest'
require 'open3'

class NotesTest < Minitest::Test

  def test_puts_out_string_of_characters
    stdout, stderr, exitstatus = Open3.capture3("notes")
    #assert_equal test_string, stdout
    assert_match /.*float.*1\.to_f/, stdout
  end

  def test_see_if_argument_from_Cammand_Line_matches_a_note
    argument = "Subtract"

    stdout, stderr, exitstatus = Open3.capture3("notes", argument)
    #assert_equal test_string, stdout
    assert_equal argument, stdout.strip!
  end
end
