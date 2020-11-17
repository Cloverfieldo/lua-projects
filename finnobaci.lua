--0,1,1,2,3,5
number_one = 0
number_two = 1
full_thing = '0'
input = io.read()
while(not(number_two < 0)) do
  --print(number_one, number_two)
  full_thing = full_thing .. ',' ..  tostring(number_two)
  local num2 = number_two + number_one
  local num1 = number_two
  number_one = num1
  number_two = num2
end
print(full_thing)
