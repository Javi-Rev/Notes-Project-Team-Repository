def find_notes(notes, filters)

  if filters
    found_thing = []
    notes.each  do |arg|
      found_thing << arg[/.*#{filters[0]}.*/i]
    end

    found_thing.compact
  else
    notes
  end
end

