function TempBanPlayer (player, command, name, reason)
	command ("/kick", player, reason)
  if command then
  if ( hasObjectPermissionTo ( player, "function.TempBanPlayer" ) ) then
		--Get player element from the name
		local kickedPlayer = GetPlayerName ( name )
		
		TempBanPlayer ( kickedPlayer, player, reason )
	  	print ( "Kick:" .. name .. " has been kicked for " .. reason .. )
	  else
	  	print ( "You do not have permission to kick players" )
	  end
	end
end
AddEventHandler ( "kick", TempBanPlayer )


function NetworkSessionKickPlayer(player)
	RegisterServerEvent ("function.TempBanPlayer")

