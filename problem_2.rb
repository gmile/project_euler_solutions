a         = [1, 2]
new_value = 3
total     = 2

while new_value <= 4_000_000
  new_value = a.first + a.last
  a = [a.last, new_value]

  total += new_value if new_value.even?
end

puts total
