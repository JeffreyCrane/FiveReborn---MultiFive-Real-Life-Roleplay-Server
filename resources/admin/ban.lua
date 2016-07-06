--Add the "ban" command handler
-- Example with the player
function banPlayerCommand ( theClient, commandName, bannedName, reason )
 
 	command == ( "/ban "..PlayerName.. ..reason.., theClient )
	-- Give the player a nice error if he doesn't have rights
	if ( hasObjectPermissionTo ( theClient, "function.banPlayer" ) ) then
		--Get player element from the name
		local bannedPlayer = GetPlayerName ( bannedName )
 
		--Ban the player
		banPlayer ( bannedPlayer, theClient, reason )
		print ( "ban: " .. bannedName .. " successfully banned", theClient )
 
	else
		print ( "ban: You are not an administrator", theClient )
	end
 
end
AddEventHandler ( "ban", banPlayerCommand )
 
-- Example function with the root element. Here you would pass a player element to the function.
function banCheater(theCheater)
	banPlayer(theCheater, getRootElement(), "You are banned.")
end
