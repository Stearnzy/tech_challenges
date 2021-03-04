input = [1, 2, [3, 4, 5, [6], [7, 8], 9], 10]

def flat(input, result = [])
  input.each do |element|
    if element.kind_of?(Array)
      flat(element, result)
    else
      result << element
    end
  end
  result
end

print flat(input)