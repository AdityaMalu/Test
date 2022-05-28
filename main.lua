-- function love.load()
--     love.window.setMode(1365,750,{fullscreen=true})
--     wf = require 'library/windfield-master/windfield'
--     world = wf.newWorld(0,100)
--     world:addCollisionClass('Player')
--     world:addCollisionClass('Platform')
--     player = world:newRectangleCollider(720,360,30,30)
--     platform = world:newRectangleCollider(500,600,500,200)
--     platform:setType('static')
-- end


-- function love.update(dt)
--     world:update(dt)

-- end

-- function love.keypressed(key)
--     if key=="w" then
--         player:applyLinearImpulse(0,2000)
--     end
-- end


-- function love.draw()
--     world:draw()
-- end

function love.load()
    wf = require"library/windfield"
    world = wf.newWorld(0,500)

    player = world:newRectangleCollider(350,100,80,80)
    platform = world:newRectangleCollider(250,400,300,100)
    platform:setType('static')
end

function love.update(dt)
    world:update(dt)

    local px,py = player:getPosition()
    if love.keyboard.isDown('right')then
        player:setX(px+5)
    end

    if love.keyboard.isDown('left')then
        player:setX(px-5)
    end
end

function love.draw()
    world:draw()
end

function love.keypressed(key)
    if key=='w' then 
        player:applyLinearImpulse(0,-6000)
    end
end