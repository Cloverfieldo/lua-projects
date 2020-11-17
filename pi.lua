function is_numeric(x)
    if tonumber(x) ~= nil then
        return true
    end
    return false
end
hey = 'how many PI decimals you want?'
print(hey)
repeat
  number = io.read()
until is_numeric(number) and tonumber(number) < 100
print(("%.".. number .."g"):format(math.pi))



