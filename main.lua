require 'locket.locket'

function love.load()
	local faceimg = love.graphics.newImage("assets/face.png")

	go = GameObject()
	go:add_component("CPositionable")
	go:add_component("CRotatable")
	local align = go:add_component("CAlignable")
	align.alignment = "center"
	go:add_component("CColorable")
	local sprite = go:add_component("CSpriteRenderer")
	sprite:set_image(faceimg)
	go:add_component("CSpinner")
	
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