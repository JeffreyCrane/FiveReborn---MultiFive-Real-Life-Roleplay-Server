function checkWantedLevel(thePlayer, playerName, WantedLevel)
	TriggerClientEvent(thePlayer, commandEntered, checkWantedLevel)
	if commandEntered == "/wanted "..playerName) then
	GetWantedLevel(thePlayer, WantedLevel)
	if thePlayer(hasWantedLevel)
	then print( ..name.. "has" ..WantedLevel)
	else cancelEvent()
end

function tazed (thePlayer, weapon)
	weapon = "stun_gun"
	if tazed then
	FreezePlayer(thePlayer, GetPosition)
	local position = (thePlayer):GetPosition(x, y, z)

function arrest(commandEntered, thePlayer)
	commandEntered("/arrest" ..PlayerName)
	if IsBeingArrested = true then
	PlayAnim("random@arrests@busted")
	elseif IS_PED_CUFFED = true then
	PlayAnim("get_up@cuffed")
	ClearWantedLevel(thePlayer)
	addEventHandler(arrest, thePlayer)
end
