ball_x=1
ball_dx=2

ball_y=64
ball_dy=2

ball_r=2
ball_dr=0.5

col=10
frame=0

function _init() 
    cls()
end

function _update() 
    frame = frame+1
    ball_x=ball_x+ball_dx
    ball_y=ball_y+ball_dy

    --ball_r=2+sin(frame/10)*2

    --col=col+1

    if ball_x > 127 or ball_x < 0 then 
        ball_dx = -ball_dx 
        sfx(0)
    end
    if ball_y > 127 or ball_y < 0 then 
        ball_dy = -ball_dy 
        sfx(0)
    end
    if ball_r > 3 or ball_r < 2 then ball_dr = -ball_dr end

end

function _draw() 
    rectfill(0,0,127,127,1)
    circfill(ball_x,ball_y,ball_r,col)
end