require 'minitest'
require 'open3'

class NotesTest < Minitest::Test

  def test_puts_out_string_of_characters
    stdout, stderr, exitstatus = Open3.capture3("notes")
    #assert_equal test_string, stdout
    assert_match /.*float.*1\.to_f/, stdout
  end

  def test_see_if_argument_from_Cammand_Line_matches_a_single_word_in_notes
    skip
    argument = "Subtract"

    stdout, stderr, exitstatus = Open3.capture3("notes", argument)
    #assert_equal test_string, stdout
    assert_equal argument, stdout.strip!
  end

  def test_that_argument_matches_description_and_example_from_notes
    argument = "Add"

    stdout, stderr, exitstatus = Open3.capture3("notes", argument)
    assert_equal "Add 1 to 2    1 + 2  # => 3" , stdout.strip!
  end

  def test_that_matching_is_case_insensitive
    argument = "add" #lowercase does not match the generic example

    stdout, stderr, exitstatus = Open3.capture3("notes", argument)
    assert_equal "Add 1 to 2    1 + 2  # => 3" , stdout.strip!
  end

  def test_treats_multiple_arguments_as_successive_filters
    argument = "1 less equal" #enters multiple arguments to test filter
    stdout, stderr, exitstatus = Open3.capture3("notes", argument)
    assert_equal "Is 1 less than or equal to 2    1 <= 2 # => 3" ,stdout
  end
end
