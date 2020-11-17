--br3Nous
local ball = {}
width = love.graphics.getWidth()
height = love.graphics.getHeight()
ball.x = love.graphics.getWidth() / 2
ball.y = love.graphics.getHeight() / 2
ball.width = 20
ball.height = 20
ball.speedX = 100
ball.speedY = 100

function ball.update(dt)
  ball.x = ball.x - ball.speedX * dt
  ball.y = ball.y - ball.speedY * dt
  
  if ball.y > height - 20 then
    ball.speedY = math.abs(ball.speedY)
    ball.speedY = ball.speedY + bump
    ball.speedX = ball.speedX + bump
  end 
  if ball.y <= 0 then
    ball.speedY = -math.abs(ball.speedY)
    ball.speedY = ball.speedY - bump
    ball.speedX = ball.speedX - bump
  end
  
  if ball.x < 30 or ball.x > love.graphics.getWidth() - (ball.width + 30) then
    ball.x = love.graphics.getWidth() / 2
    ball.speedX = 100
    ball.speedY = 100
    score = score + 1

  end
end

function ball.draw()
  love.graphics.rectangle('fill', ball.x, ball.y, ball.width, ball.height)
end

return ball