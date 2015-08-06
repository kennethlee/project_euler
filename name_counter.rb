# checks string "text" for a name.

text = "Blah blah blah blah blah blah Eric \
        John blah blah Eric blah blah Eric blah blah \
        blah blah blah blah blah Eric"

def name_counter(text, name)
  hits = []

  text.split(" ").each do |word|
    hits.push(word) if word == name
  end

  case hits.count
  when 0
    puts "The name '#{name}' did not come up at all."
  when 1
    puts "The name '#{name}' came up 1 time."
  else
    puts "The name '#{name}' came up #{hits.count} times."
  end
end

name_counter(text, "Eric")
name_counter(text, "John")
name_counter(text, "jfalwkejfadf")
