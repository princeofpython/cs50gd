PlayerPotLiftState = Class{__includes = BaseState}

function PlayerPotLiftState:init(player, dungeon) 
    self.player = player
    self.dungeon = dungeon

    self.player.offsetY = 5
    self.player.offsetX = 8

    local direction = self.player.direction

    self.player:changeAnimation('pot-lift-' .. self.player.direction)
end

function PlayerPotLiftState:enter(params)
    gSounds['sword']:stop()
    gSounds['sword']:play()

    self.pot = self.dungeon.currentRoom.objects[2]
    Timer.tween(0.20, {
        [self.pot] = {y = self.player.y - 4, x = self.player.x}
    })
    
    self.player.currentAnimation:refresh()
end

function PlayerPotLiftState:update(dt)
    if self.player.currentAnimation.timesPlayed > 0 then
        self.player.currentAnimation.timesPlayed = 0
        self.player:changeState('pot-idle')
    end
end

function PlayerPotLiftState:render()
    local anim = self.player.currentAnimation
    love.graphics.draw(gTextures[anim.texture], gFrames[anim.texture][anim:getCurrentFrame()],
        math.floor(self.player.x - self.player.offsetX), math.floor(self.player.y - self.player.offsetY))

    -- debug for player and hurtbox collision rects
    -- love.graphics.setColor(255, 0, 255, 255)
    -- love.graphics.rectangle('line', self.player.x, self.player.y, self.player.width, self.player.height)
    -- love.graphics.rectangle('line', self.swordHurtbox.x, self.swordHurtbox.y,
    --     self.swordHurtbox.width, self.swordHurtbox.height)
    -- love.graphics.setColor(255, 255, 255, 255)
end

