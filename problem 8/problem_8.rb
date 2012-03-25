def prod idx, array, prods
  if array.empty? || prods.empty? || prods.last.zero?
    array[idx..idx + 4].inject(:*)
  else
    prods.last / array[idx] * array[idx + 4]
  end
end

array = File.foreach('number.txt').to_a.join.delete("\n").each_char.map { |z| z.to_i }

idx   = 0
prods = []

while idx <= 995
  zero_idx = array[idx..idx+5].index(0)

  prods << if zero_idx
    idx += zero_idx
    0 
  else
    prod(idx, array, prods)
  end

  idx += 1
end

puts prods.max
