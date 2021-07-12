def who_is_bigger(a, b, c)
  return 'nil detected' if [a, b, c].any?(&:nil?)

  max = [a, b, c].max
  return 'a is bigger' if max == a
  return 'b is bigger' if max == b
  return 'c is bigger' if max == c
end

def reverse_upcase_noLTA(str)
  str.reverse.upcase.tr('LTA', '')
end

def array_42(arr)
  arr.include?(42)
end

def magic_array(a)
  a.flatten.map { |i| i * 2 }.filter { |i| i % 3 != 0 }.uniq.sort
end
