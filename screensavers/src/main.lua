function _init()
	re ={
	 x0=0,
		y0=0,
		x1=127,
		y1=127,
		c=1
	}
end

function _update()
	for i=1,2 do
			add(re,{
				x0=rnd(128),
				y0=rnd(128),
				x1=rnd(128),
				y1=rnd(128),
				c=rnd(9)
			})
			if #re>30 then deli(re,1) end
	end

end

function _draw()
	cls()
	print(#re)
	for r in all(re) do
		rect(r.x0,r.y0,r.x1,r.y1,r.c)		
	end
end