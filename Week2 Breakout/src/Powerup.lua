--[[
    GD50
    Breakout Remake

    -- Ball Class --

    Author: Adithya Swaroop

    Represents a Powerup, which when caught by paddle
    increases number of balls in the game.
]]
Powerup = Class{}

function Powerup:init(type)
    self.width = 16
    self.height = 16
    
    self.dy = 100
    self.onScreen = false

    self.x = math.random(VIRTUAL_WIDTH * 0.1, VIRTUAL_WIDTH * 0.9)
    self.y = VIRTUAL_HEIGHT / 3

    -- type of power
    self.type = type
end

function Powerup:collides(target)
    -- first, check to see if the left edge of either is farther to the right
    -- than the right edge of the other
    if self.x > target.x + target.width or target.x > self.x + self.width then
        return false
    end

    -- then check to see if the bottom edge of either is higher than the top
    -- edge of the other
    if self.y > target.y + target.height or target.y > self.y + self.height then
        return false
    end 

    -- if the above aren't true, they're overlapping
    return true
end

function Powerup:reset()
    self.x = math.random(VIRTUAL_WIDTH * 0.1, VIRTUAL_WIDTH * 0.9)
    self.y = VIRTUAL_HEIGHT / 3
    self.onScreen = false
end

function Powerup:update(dt)
    if self.onScreen then
        self.y = self.y + self.dy * dt
    end

    if self.y > VIRTUAL_HEIGHT + self.width then
        self:reset()
    end
end

function Powerup:render()
    if self.onScreen then
        love.graphics.draw(gTextures['main'], gFrames['powers'][self.type],
            self.x, self.y)
    end
end