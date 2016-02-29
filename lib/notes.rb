def find_notes(notes, filters)
  if filters
    filtered = []
    first_filter = filters.shift
    tracker = filters.length
    final_filtered = []

    notes.each  do |element|
      filtered << element[/.*#{first_filter}.*/i]
    end

    while tracker > 0
      while filters.length > 0
        filter = filters.shift
        filtered.each do |element|
          final_filtered << element[/.*#{filter}.*/i]
        end
        filtered = final_filtered.compact
        final_filtered = []
      end
      tracker -= 1
    end

    filtered.compact
  else
    notes
  end
end
