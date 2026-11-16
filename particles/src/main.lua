function _init() 
    parts={}
    force=0
    forced=.02
end

function _update()    
    force+=.1*forced*rnd(1)
    
    if force>1 or force<-1 then 
        forced=forced*-1 
    end 
    
    for i=1,20 do
        add(parts,{
            x=59+rnd(10),
            y=90+rnd(10),
            r=rnd(3),
            c=7,
            l=rnd(11),
            speed=1+rnd(2)
        })
    end

    for p in all(parts) do
        p.y-=p.speed
        p.l-=1
        p.r-=.1
        p.x+=force
        
        if p.l<9 then 
            p.c=10 
        end
        if p.l<7 then 
            p.c=9 
        end
        
        if p.l<0 then del(parts,p) end
    end
end

function _draw()
    cls()
    map() 
    
    for p in all(parts) do
        circfill(p.x, p.y, p.r, p.c)
    end

end