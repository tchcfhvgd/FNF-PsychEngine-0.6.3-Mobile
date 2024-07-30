local spacepress = 0
function onEvent(name, value1, value2)
	if name == 'dodge' then
		makeAnimatedLuaSprite('Warn', 'dodge/dodge', -200, -100)
                               addAnimationByPrefix('Warn','dodge/dodge','dodge',24,true)
                               luaSpritePlayAnimation('Warn', 'dodge');
		setLuaSpriteScrollFactor('Warn', 0, 0)
		addLuaSprite('Warn', true)
		scaleObject('Warn', 1.3, 1.3);
		

		
		runTimer('second-beep', value1, 1)
		runTimer('alert-time', value2, 1)
	end
end

function onTimerCompleted(tag, Loops, LoopsLeft)
	if tag == 'alert-time' then
		if keyPressed('space') or botPlay then
                                               characterPlayAnim('boyfriend', 'dodge', true);
                                               setProperty('boyfriend.specialAnim', true);
                                               characterPlayAnim('dad', 'attack', true);
                                               setProperty('dad.specialAnim', true); 
			removeLuaSprite('Warn', true)
			playSound('dodged2', 0.7);
		else
			setProperty('health', 0.25)
			playSound('dodged2', 0.7);
                                               characterPlayAnim('dad', 'attack', true);
                                               setProperty('dad.specialAnim', true);
                                               characterPlayAnim('boyfriend', 'singRIGHTmiss', true);
                                               setProperty('boyfriend.specialAnim', true);
                                                removeLuaSprite('Warn', true)
		end
	end

end