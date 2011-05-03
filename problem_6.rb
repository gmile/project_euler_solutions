n = 100

result = (1..n).inject(0) { |s, item| s += item*item } - (n + 1)*n/2

puts result
