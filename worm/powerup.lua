power = {}
power.x = love.math.random(1, 6) * 100
power.y = love.math.random(1, 6) * 100
power.height = 20
power.width = 20

function power.draw()
  love.graphics.rectangle('fill', power.x, power.y, 20, 20)
end
return power