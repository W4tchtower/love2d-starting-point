function new_camera()
    local camera = {}
    camera.x = 0
    camera.y = 0

    -- The two required functions for the camera to update at all
    function camera:set()
        lg.push()
        lg.translate(-self.x, -self.y)
    end
    function camera:unset()
        lg.pop()
    end


    -- Camera movement
    function camera:set_position(_x, _y)
        self.x = _x or self.x
        self.y = _y or self.y
    end
    function camera:move(_x, _y)
        self.x = self.x + (_x or 0)
        self.y = self.y + (_y or 0)
    end

    return camera
end 

