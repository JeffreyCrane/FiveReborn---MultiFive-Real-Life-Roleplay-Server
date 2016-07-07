function kickPlayer (player, command, kickedName, reason)
	command ("kick", player, reason)
  if command then
  if ( hasObjectPermissionTo ( player, "function.kickPlayer" ) ) then
		--Get player element from the name
		local kickedPlayer = GetPlayerName ( kickedName )
		
		kickPlayer ( kickedPlayer, player, reason )
	  	print ( "Kick:" .. kickedName .. " has been kicked for " ..Reason.. )
	  else
	  	print ( "You do not have permission to kick players" )
	  end
	end
end
AddEventHandler ( "kick", kickPlayer )


function NetworkSessionKickPlayer(player)
	RegisterServerEvent ("function.kickPlayer")

