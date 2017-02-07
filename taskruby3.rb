#regex cara1
#value = "This is a _test__ on *regex* and other string manipulations. This is *crucial* for your *training*."
#value.gsub!(/_\w+_/) {|word| "<em>" + word + "</em>"}
#value.gsub!("_", "")
#value.gsub!(/[*]+\w+[*]/) {|word| "<strong>" + word +"</strong>"}
#value.gsub!("*", "")
#puts value

#regex cara2
value = "This is a _test_ on *regex* and other string manipulations. This is *crucial* for your *training*."
value.gsub!(/_+\w+_/) {|word| "<em>" + word + "</em>"}
value.gsub!(/\b_|_\b/, "")
value.gsub!(/[*](\w+\W+)[*]/) {|word| "<strong>" + word +"</strong>"}
value.gsub!(/[*]\b|\b[*]/, "")
puts value
