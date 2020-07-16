PlayerPotIdleState = Class{__includes = EntityIdleState}

function PlayerPotIdleState:enter(params)
    -- render offset for spaced character sprite
    

    self.entity.offsetY = 5
    self.entity.offsetX = 0

    local direction = self.entity.direction

    self.entity:changeAnimation('pot-idle-' .. self.entity.direction)

    self.pot = self.dungeon.currentRoom.objects[2]

end


function PlayerPotIdleState:update(dt)
    EntityIdleState.update(self, dt)

    if love.keyboard.isDown('left') or love.keyboard.isDown('right') or
       love.keyboard.isDown('up') or love.keyboard.isDown('down') then
        self.entity:changeState('pot-walk')
    end

    if love.keyboard.wasPressed('space') then
        self.dungeon.currentRoom.bProjectile = true
        self.entity:changeState('idle')
    end

end

function PlayerPotIdleState:render()
    local anim = self.entity.currentAnimation
    love.graphics.draw(gTextures[anim.texture], gFrames[anim.texture][anim:getCurrentFrame()],
        math.floor(self.entity.x - self.entity.offsetX), math.floor(self.entity.y - self.entity.offsetY))

    -- debug for player and hurtbox collision rects
    -- love.graphics.setColor(255, 0, 255, 255)
    -- love.graphics.rectangle('line', self.player.x, self.player.y, self.player.width, self.player.height)
    -- love.graphics.rectangle('line', self.swordHurtbox.x, self.swordHurtbox.y,
    --     self.swordHurtbox.width, self.swordHurtbox.height)
    -- love.graphics.setColor(255, 255, 255, 255)
end