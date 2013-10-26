class Tokens

  def Tokens.add(key, value)
    @hash ||= {}
    @hash[key] = value
  end

  def Tokens.each
    @hash.each {|key, value| yield(key, value)}
  end

  def Tokens.get(key)
    @hash[key]
  end

  Tokens.add(:delim, /^(\)|\(|,)$/)
  Tokens.add(:open_parens, /^\($/)
  Tokens.add(:close_parens, /^\)$/)
  Tokens.add(:boolean, /^(t|nil)$/)
  Tokens.add(:symbol, /^[A-Za-z]+$/)
  Tokens.add(:number, /^-?[0-9]+$/)
end
