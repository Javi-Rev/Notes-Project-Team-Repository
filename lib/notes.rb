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

Dict = {
"plus" => "add",
"+" => "add",
"sum" => "add",
"minus" => "subtract",
"-" => "subtract",
"difference" => "subtract",
"subtraction" => "subtract",
"division" => "divide",
"quotient" => "divide",
"/" => "divide",
"%" => "divide",
"multiplication" => "multiply",
"*" => "multiply",
"x" => "multiply",
"list" => "array",
"[]" => "array",
"boolean" => "true",
"boolean" => "false",
"decimal" => "float",
"decimals" => "float",
}
