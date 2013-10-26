require "../src/Parser.rb"

puts nextToken("(")[0]
puts nextToken(")")[0]
puts nextToken("asdf")[0]
puts nextToken("true")[0]
puts nextToken("t")[0]
puts nextToken("nil")[0]
puts nextToken("19")[0]
puts nextToken("-19")[0]
