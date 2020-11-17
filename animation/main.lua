x = 600
love.graphics.setDefaultFilter('nearest', 'nearest')
currentFrame = 1
sprite = require 'animation'
function love.update(dt)
  x = x - 100 * dt
  currentFrame = currentFrame + 10 * dt
  x = x - 100 * dt
  if currentFrame >= 4 then
    currentFrame = 1
  end
end

function love.draw()
  love.graphics.draw(sprite.image,sprite.walkSide[math.floor(currentFrame)], x, 300, 0, 3, 3)
end