def find_notes(notes, filters)

  if filters[0] == "-h"
    help = "Purpose: searches notes files for specific keywords\nUsage: notes [:filter] [:fileter] [:ad nauseum]"
    help
  elsif filters
    found_thing = []
    notes.each  do |arg|
      found_thing << arg.scan(/.*#{filters[0]}.*/i)
    end

    found_thing.join('\n')
  else
    notes.join('\n')
  end
end

