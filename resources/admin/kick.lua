--Kick Script by Cody196--

local DropPlayer = (source, .. playerName.." got kicked for ".. reason ..)
local playerName = GetPlayerName(source) --Makes sure the player is available wit that name

RegisterNetEvent(playerName, DropPlayer, reason)

function DropPlayer(playerName, reason) --Kicks the player on command
  if(command[1] == "/kick" source, reason) then
  TriggerClientEvent("DropPlayer", source, reason)
  else print ("You are not an admin or moderator") then
  cancelevent()
end
  
AddEventHandler("DropPlayer", function(playerName, reason)


--function dropPlayer (player, command, name, reason)
--	command ("/kick", player, reason)
--  if command then
--  if ( hasObjectPermissionTo ( player, "function.TempBanPlayer" ) ) then
--		--Get player element from the name
--		local kickedPlayer = GetPlayerName ( name )
--		
--		dropPlayer ( kickedPlayer, player, reason )
--	  	print ( "Kick:" .. name .. " has been kicked for " .. reason .. )
--	  else
--	  	print ( "You do not have permission to kick players" )
--	  end
--	end
--end
--AddEventHandler ( "kick", dropPlayer )
--
--
--function NetworkSessionKickPlayer(player)
--	RegisterServerEvent ("function.dropPlayer")

