# frozen_string_literal: true
def echo(a)
  a
end

def shout(a)
  a.upcase
end

def repeat(str, times = 2)
  Array.new(times) { str }.join(' ')
end

def start_of_word(str, n)
  str.slice(..n - 1)
end

def first_word(str)
  str.gsub(/\s.*/, '')
end

LITTLE_WORDS = %w[the and of a an with].freeze
def titleize(str)
  str
    .split
    .map
    .with_index do |item, index|
      if index == 0
        item.capitalize
      else
        # https://www.rubyguides.com/2019/10/ruby-ternary-operator/
        LITTLE_WORDS.include?(item) ? item : item.capitalize
      end
    end
    .join(' ')
end
