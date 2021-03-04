result = []

n = 200

until result.length == 100
  n += 1

  sum = n + n.digits.join.to_i
  result << n if sum == (sum.to_s.reverse.to_i) && sum > 1000
end

print result
