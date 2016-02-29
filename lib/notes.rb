def find_notes(notes, selectors)
  selected = notes

  selectors.each do |filter|
    final_filtered = []
    selected.each do |note|
      final_filtered << note[/.*#{filter}.*/i]
    end
    selected = final_filtered.compact
  end

  selected.compact
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
