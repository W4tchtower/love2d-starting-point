require "entity"
require "animation"
lg = love.graphics

-- Key constants
UP_KEY = 'w'
DOWN_KEY = 's'
LEFT_KEY = 'a'
RIGHT_KEY = 'd'

function love.load()
    
end



function love.update(dt)
    -- Movement
    if(love.keyboard.isDown(UP_KEY)) then

    end
    if(love.keyboard.isDown(LEFT_KEY)) then

    end
    if(love.keyboard.isDown(DOWN_KEY)) then

    end
    if(love.keyboard.isDown(RIGHT_KEY)) then

    end
end



function love.draw()
    camera:set()
    
    camera:unset()
end



function love.quit()
end
