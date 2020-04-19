PauseState = Class{__includes = BaseState}


function PauseState:update(dt)
    if love.keyboard.wasPressed('p')  then
        gStateMachine:change('play',{
            bird = self.bird,
            pipePairs = self.pipePairs,
            timer = self.timer,
            score = self.score,
            lastY = self.lastY,
            gap = self.gap
        })
    end
end

function PauseState:enter(params)
    scrolling = false
    sounds['music']:pause()
    sounds['pause']:play()
    self.bird = params.bird
    self.pipePairs = params.pipePairs
    self.timer = params.timer
    self.score = params.score

    -- initialize our last recorded Y value for a gap placement to base other gaps off of
    self.lastY = params.lastY
    self.gap = params.gap
end

function PauseState:exit()
    sounds['music']:play()
end

function PauseState:render()
    for k, pair in pairs(self.pipePairs) do
        pair:render()
    end

    love.graphics.setFont(flappyFont)
    love.graphics.print('Score: ' .. tostring(self.score), 8, 8)

    self.bird:render()
    love.graphics.draw(pause, VIRTUAL_WIDTH / 2 - 15, VIRTUAL_HEIGHT / 2 - 25)
end

