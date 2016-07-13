--Kick Script by Cody196--

local DropPlayer = (source, "You got kicked")
local playerName = GetPlayerName(source)

RegisterServerEvent(playerName, command, DropPlayer)


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

