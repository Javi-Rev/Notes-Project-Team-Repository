require 'minitest'
require 'notes'

class NotesTest < Minitest::Test

  def test_to_see_if_you_can_search_for_the_full_line_of_a_note
    note = ["I am a note => Here is my answer 33", "I am also a note => With an answer 23"]
    thing_to_find = "23"
    assert_match /I am also a note *=> *With an answer 23/, find_notes(note, thing_to_find)
  end

  def test_to_see_if_h_argument_returns_help
    help = "Purpose: searches notes files for specific keywords\nUsage: notes [:filter] [:fileter] [:ad nauseum]"
    notes = "whatever"
    h=["-h"]
    assert_equal help, find_notes(notes, h)
  end
end
