function love.load()
end

function love.keypressed(key, unicode)
	if key == 'escape' then
		love.event.push('quit')
	end
end

function love.update(dt)

end

function love.render()

end