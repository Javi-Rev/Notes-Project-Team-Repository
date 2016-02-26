require 'minitest'

$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'notes'

class NotesTest < Minitest::Test

  def test_to_see_if_you_can_search_for_the_full_line_of_a_note
    note = "I am a note => Here is my answer 33\nI am also a note => With an answer 23\n"
    thing_to_find = 23
    note = parse_data(note)
    assert_match /I am also a note *=> *With an answer 23 */, find_notes(note, thing_to_find)
  end

  def test_to_see_if_parse_data_returns_data_as_array
    note = "I am a note => Here is my answer 33\nI am also a note => With an answer 2    3\n"
    assert_equal = ["I am a note => Here is my answer 33","I am also a note => With an answer 23"], parse_data(note)
  end

  def test_to_see_if_h_argument_returns_help
    help = "NO HELP FOR YOU"
    notes = "whatever"
    h=["-h"]
    assert_equal help, find_notes(notes, h) 
  end
end
