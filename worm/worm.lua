local obj = {}
obj.width = 50
obj.height = 50
obj.x = 300
obj.y = 300
obj.speedX = 0
obj.speedY = 0

function obj.update(self,dt)
  self.x = self.x + self.speedX * dt
  self.y = self.y + self.speedY * dt
end

function obj.draw()
  love.graphics.rectangle('line', obj.x, obj.y, obj.width, obj.height)
end

function obj.keyreleased(k)
  if k == 'right' then
    obj.speedX = 200
    obj.speedY = 0
  end
  if k == 'left' then
    obj.speedX = -200
    obj.speedY = 0
  end
  if k == 'up' then
    obj.speedX = 0
    obj.speedY = -200
  end
  if k == 'down' then
    obj.speedX = 0
    obj.speedY = 200
  end
end
return obj