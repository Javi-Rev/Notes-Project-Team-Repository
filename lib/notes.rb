def find_notes(notes, thing_to_find)
  if thing_to_find
    found_thing = notes.scan /.*#{thing_to_find}.*/i
    found_thing
  else
    notes
  end
end
