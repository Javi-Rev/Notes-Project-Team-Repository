require 'minitest'
require 'notes'

class NotesTest < Minitest::Test

  def test_to_see_if_you_can_search_for_the_full_line_of_a_note
    note = ["a", "b", "c"]
    thing_to_find = "b"
    assert_equal ["b"], find_notes(note, thing_to_find)
  end

end
