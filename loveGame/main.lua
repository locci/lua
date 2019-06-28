function love.draw()
   
    sound = love.audio.newSource("laser.wav", "static")
    data = love.filesystem.newFileData("xwing.png" )
    data = love.image.newImageData( data )
    starChip.image = love.graphics.newImage( data )
    love.graphics.draw(starChip.image, starChip.posiX, starChip.posiY, 0, starChip.width, starChip.height)
    love.graphics.setColor(250, 250, 250)
    
     if love.keyboard.isDown(' ') then

	 sound:play()
         love.graphics.setColor(250, 250, 250)
	 firePosiX = starChip.posiX + 35 
	 firePosiY = starChip.posiY - 15 
         --love.graphics.circle('fill', firePosiX, firePosiY, 5)
         fire = true

    end
 
    if fire then

        firePosiY = firePosiY- 15 
        love.graphics.circle('fill', firePosiX, firePosiY, 5)

	if firePosiY < 0 then

		fire = false
	end

    end

    if love.keyboard.isDown("up") then
       
       if  starChip.posiY > 32 then
           
	   starChip.posiY = starChip.posiY - 1

       end
       
    end

    if love.keyboard.isDown("down") then
       
        if  starChip.posiY < 340 then
           
	   starChip.posiY = starChip.posiY + 1
        
        end

    end

     if love.keyboard.isDown("right") then
     
        if  starChip.posiX < 457 then
 
	  starChip.posiX = starChip.posiX + 1

	end

    end

    if love.keyboard.isDown("left") then
       
       if  starChip.posiX > 3 then
 	   
	   starChip.posiX = starChip.posiX - 1

       end

    end


    love.graphics.print(table.concat({"Y ".. starChip.posiY,
                                      "X "..  starChip.posiX}, "\n"))


end
