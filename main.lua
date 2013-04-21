require 'locket.locket'

function love.load()
	go = GameObject()
	go:add_component("CPositionable")
	go:add_component("CRenderCircle")
	go:start()
end

function love.keypressed(key, unicode)
	if key == 'escape' then
		love.event.push('quit')
	end
end

function love.update(dt)
	go:req_update(dt)
end

function love.draw()
	go:req_render()
end