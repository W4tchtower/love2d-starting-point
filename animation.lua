-- I feel like this is self-explanatory
function new_animation(_spritesheet, _frame_duration, _frames)
    local animation = {}
    animation.spritesheet = _spritesheet
    -- These two fields are used to determine the amount of time a frame is shown at a time
    animation.frame_duration = _frame_duration
    animation.timer = 0
    -- These two are used to hold the current frame, and the list of all the frames, respectively.
    animation.current_frame = 1
    animation.frames = {}

    -- Populates "frames" with actual quads from our spritesheet.
    for i,v in ipairs(_frames) do
        table.insert(
            animation.frames, 
            _frames[i]
        )
    end

    function animation:update(dt)
        -- Increments the timer by the time passed since the last frame (dt)
        self.timer = self.timer + dt

        if self.timer >= self.frame_duration then
            -- Reset the frame timer
            self.timer = self.timer - self.frame_duration

            -- Increment the frame count (or switch it back to zero if it's reached the end).
            if self.current_frame >= table.getn(self.frames) then
                self.current_frame = 1
            else
                self.current_frame = self.current_frame + 1
            end
        end

        return self.frames[self.current_frame]
    end

    return animation
end