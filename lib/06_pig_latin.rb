# frozen_string_literal: true
# Respecting capitalization and punctuation make that function hard to read.
def translate_word(word)
  return word if /^\p{P}+$/.match?(word)
  res =
    word.gsub(
      /^(\p{P}*)((?:qu|[^aeiouyàéèùêôîâûëäïöü]|\p{P})*)([^\p{P}]*)(\p{P}*)/i,
      '\1\3\2ay\4'
    ).downcase
  word =~ /^(\p{P}*)\p{Lu}/ ? "#{$1}#{res.gsub(/\p{P}/, '').capitalize}" : res
end

# This is the (unused) version without capitalization and punctuation
# This may be easier to read: https://gist.github.com/zaratan/cc35154838d80bee293dbed99904629a
def tr_word(word)
  # the first catch qu or anything that is not a vowel.
  # the second catch the rest of the word
  #
  # '\2\1ay' means => second catch, first catch, ay
  word.gsub(/((?:qu|[^aeiouy])*)(.*)/, '\2\1ay')
end

def translate(str)
  str.split.map { |word| translate_word(word) }.join(' ')
end
