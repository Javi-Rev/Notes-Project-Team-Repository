require 'minitest'
require 'notes'

class NotesTest < Minitest::Test

  def test_to_see_if_you_can_search_the_notes
    note = ["a", "b", "c"]
    filters = ["b"]
    assert_equal ["b"], find_notes(note, filters)
  end

  def test_to_see_seacrh_is_case_insensitive
    note = ["a", "b", "c"]
    filters = ["B"]
    assert_equal ["b"], find_notes(note, filters)
  end

  def test_to_see_if_you_can_search_with_successive_filters
    note = ["a", "a & b", "a & b & c"]
    filters = ["a", "b", "c"]
    assert_equal ["a & b & c"], find_notes(note, filters)
  end

end
