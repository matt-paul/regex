stringGB = "My phone number is +44 020 8767 1234"     # => "My phone number is +44 020 8767 1234"
phone_re = /(\+\d{2})\s+(\d{3})\s+(\d{4})\s+(\d{4})/  # => /(\+\d{2})\s+(\d{3})\s+(\d{4})\s+(\d{4})/
d = phone_re.match(stringGB)                          # => #<MatchData "+44 020 8767 1234" 1:"+44" 2:"020" 3:"8767" 4:"1234">
unless d                                              # => #<MatchData "+44 020 8767 1234" 1:"+44" 2:"020" 3:"8767" 4:"1234">
  puts "There was no match sorry"
  exit
end                                                   # => nil
puts "The whole string started with: "                # => nil
puts d.string                                         # => nil
puts d[0]                                             # => nil
puts "The three captures: "                           # => nil

4.times do |index|                                   # => 4
  puts "Capture #{index + 1}: #{d.captures[index]}"  # => nil, nil, nil, nil
end                                                  # => 4

puts "Here's another way to get at the first capture"  # => nil
print "Capture #1: "                                   # => nil
puts d[1]                                              # => nil



# >> The whole string started with:
# >> My phone number is +44 020 8767 1234
# >> +44 020 8767 1234
# >> The three captures:
# >> Capture 1: +44
# >> Capture 2: 020
# >> Capture 3: 8767
# >> Capture 4: 1234
# >> Here's another way to get at the first capture
# >> Capture #1: +44
