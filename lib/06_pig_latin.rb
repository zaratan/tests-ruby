def translate_word(word)
  return word if word =~ /^\p{P}+$/
  res =
    word.gsub(
      /^(\p{P}*)((?:[^aeiouqyàéèùêôîâûëäïöü]|qu|q|\p{P})*)([^\p{P}]*)(\p{P}*)/i,
      '\1\3\2ay\4',
    ).downcase
  word =~ /^(\p{P}*)\p{Lu}/ ? "#{$1}#{res.gsub(/\p{P}/, '').capitalize}" : res
end

def translate(str)
  str.split.map { |word| translate_word(word) }.join(' ')
end
