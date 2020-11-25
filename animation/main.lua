testNumber = 0
horizontalscale = 3
rotation = 0
x = 600
y = 300
love.graphics.setDefaultFilter('nearest', 'nearest')
currentFrame = 1
sprite = require 'animation'
spriteS = sprite.walkUp
local width = 15 
function love.update(dt)
  --[[
  x = x - 100 * dt
  currentFrame = currentFrame + 10 * dt
  x = x - 100 * dt
  if currentFrame >= 4 then
    currentFrame = 1
  end
  -]]
  testNumber = testNumber + 200 * dt
  if testNumber >= 20 then
    local spriteSpeed = 10
    if love.keyboard.isDown('d') then
      local cool = x
      spriteS = sprite.walkSide
      --verticalScale = -3
      horizontalscale = -3
      coolT(spriteSpeed, dt)
      --rotation = -180
      x = x + 100 * dt
    elseif love.keyboard.isDown('s') then
      spriteS = sprite.walkDown
      coolT(spriteSpeed, dt)
      y = y + 100 * dt
    elseif love.keyboard.isDown('a') then
      spriteS = sprite.walkSide
      horizontalscale = 3
      x = x - 100 * dt
      coolT(spriteSpeed, dt)
    elseif love.keyboard.isDown('w') then
      spriteS = sprite.walkUp
      coolT(spriteSpeed, dt)
      y = y - 100 * dt
    else
      currentFrame  = 1
    end
  end
end

function love.draw()
  love.graphics.draw(sprite.image,spriteS[math.floor(currentFrame)], x, y, 0, horizontalscale, 3, 15/2, 22/2)
end

function coolT(speed,dt)
  --
  currentFrame = currentFrame + speed * dt
  if currentFrame >= 4 then
    currentFrame = 1
  end

end

function love.keypressed(k)
  --simpleK = true
  testNumber = 0
  if k == 'd' then
    spriteS = sprite.walkSide
    horizontalscale = -3
  elseif k == 'a' then
    spriteS = sprite.walkSide
    horizontalscale = 3
  elseif k == 's' then
    spriteS = sprite.walkDown
  elseif k == 'w' then
    spriteS = sprite.walkUp
  end
end