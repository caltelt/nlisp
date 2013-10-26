# Parser.rb
# Read in a file and return tokens

require "../lib/Tokens.rb"

# Match a string against potential tokens
def matchToken(s)
  Tokens.each do |t, v|
    if s.match(v)
      return [t,s]
    end
  end
  nil
end

# Find the next token in a line
def nextToken(line)
  f = line[0]
  if f.match(Tokens.get(:open_parens)) then return [:open_parens,"("] end
  if f.match(Tokens.get(:close_parens)) then return [:close_parens,")"] end

  line = line.strip
  token = ""

  line.each_char do |c|
    if c.match(/\s/) || c.match(Tokens.get(:delim))
       m = matchToken(line)
       if m != nil then return m end
    end
    token += c
  end

  m = matchToken(line)
  if m != nil then return m end

  puts "Error"
end

def readFile(file)
  File.open(file, "r") do |f|
    while(line = f.gets)
      
    end
  end
end
