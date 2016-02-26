def find_notes(notes, thing_to_find)
  if thing_to_find
    found_thing = [] 
    notes.each  do |arg|
    found_thing << arg.scan(/.*#{thing_to_find}.*/i)
    end

    found_thing.join('\n')
  else
    notes.join('\n')
  end
end

def parse_data(notes)
  notes.split('\n')
end
