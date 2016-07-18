function checkWantedLevel(name, WantedLevel)
	TriggerClientEvent(name, command, CheckPlayerWantedLevel)
		if commandEntered == "/wanted "..playerName) then
			GetPlayerWantedLevel(WantedLevel)
		if GetPlayerWantedLevel then
			TriggerEvent('chatMessage', ..name.. " has a wanted level of " ..GetPlayerWantedLevel.. "!") -- This works only when followed up by the default guide: http://wiki.kanersps.pw/#Basic%20Scripting --> See change of chat resource!
	else cancelEvent()
end

function tazed (player, weapon)
	weapon = "stun_gun"
	if IsHitBy(weapon) then
	local player = GetPlayerPed(-1)
		FreezeEntityPosition(player, true) then
		SetPedToRagdollWithFall(player, PlayerPed)
	if IsPedRagdoll(GetPlayerPed(-1))
	


function arrest(commandEntered, player)
	TriggerClientEvent(arrest, command, player)
	if commandEntered("/arrest" ..PlayerName) then
		local playerName = GetPlayerName(source)
		local arrestPed = TaskArrestPed(player, target)
			if IsPedBeingArrested(player) = true then
			PlayEntityAnim("random@arrests@busted")
		elseif  IsPedCuffed = true then
			PlayEntityAnim("get_up@cuffed")
		else cancelEvent()
	end
end
addEventHandler(arrest, thePlayer)

