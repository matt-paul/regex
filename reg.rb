string = "My phone number is (123) 555-1234"  # => "My phone number is (123) 555-1234"
phone_re = /\((\d{3})\)\s+(\d{3})-(\d{4})/    # => /\((\d{3})\)\s+(\d{3})-(\d{4})/
m = phone_re.match(string)                    # => #<MatchData "(123) 555-1234" 1:"123" 2:"555" 3:"1234">
unless m                                      # => #<MatchData "(123) 555-1234" 1:"123" 2:"555" 3:"1234">
  puts "There was no match sorry"
  exit
end                                           # => nil
puts "The whole string started with: "        # => nil
puts m.string                                 # => nil
puts m[0]                                     # => nil
puts "The three captures: "                   # => nil

3.times do |index|                                    # => 3
  puts "Capture ##{index + 1}: #{m.captures[index]}"  # => nil, nil, nil
end                                                   # => 3

puts "Here's another way to get at the first capture"  # => nil
print "Capture #1: "                                   # => nil
puts m[1]                                              # => nil

#Testing Testing

# >> The whole string started with:
# >> My phone number is (123) 555-1234
# >> (123) 555-1234
# >> The three captures:
# >> Capture #1: 123
# >> Capture #2: 555
# >> Capture #3: 1234
# >> Here's another way to get at the first capture
# >> Capture #1: 123
