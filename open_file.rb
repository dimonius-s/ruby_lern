review_file = File.open("reviews.txt")
puts review_file.class
lines = review_file.readlines
puts "Line 4: #{lines[3]}"
puts "Line 1: #{lines[0]}"
review_file.close
