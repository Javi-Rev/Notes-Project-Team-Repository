require 'minitest'
require 'notes'

class NotesTest < Minitest::Test

  def test_you_can_search_the_notes
    note = ["a", "b", "c"]
    selectors = ["b"]
    assert_equal ["b"], find_notes(note, selectors)
  end

  def test_search_is_case_insensitive
    note = ["a", "b", "c"]
    selectors = ["B"]
    assert_equal ["b"], find_notes(note, selectors)
  end

  def test_you_can_search_with_successive_filters
    note = ["a", "a & b", "a & b & c"]
    selectors = ["a", "b", "c"]
    assert_equal ["a & b & c"], find_notes(note, selectors)
  end

end
