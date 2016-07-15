function checkWantedLevel(name, WantedLevel)
	TriggerClientEvent(name, command, CheckPlayerWantedLevel)
		if commandEntered == "/wanted "..playerName) then
			GetPlayerWantedLevel(WantedLevel)
		if GetPlayerWantedLevel then
			TriggerEvent('chatMessage', ..name.. " has a wanted level of " ..GetPlayerWantedLevel.. "!") -- This works only when followed up by the default guide: http://wiki.kanersps.pw/#Basic%20Scripting --> See change of chat resource!
	else cancelEvent()
end

--function tazed (thePlayer, weapon)
--	weapon = "stun_gun"
--	if weapon then
--	FreezePlayer(thePlayer, GetPosition)
--	local position = (thePlayer):GetPosition(x, y, z)

function arrest(commandEntered, thePlayer)
	commandEntered("/arrest" ..PlayerName)
		if IsBeingArrested = true then
			PlayAnim("random@arrests@busted")
		elseif IS_PED_CUFFED = true then
			PlayAnim("get_up@cuffed")
			ClearWantedLevel(thePlayer)
			addEventHandler(arrest, thePlayer)
end
