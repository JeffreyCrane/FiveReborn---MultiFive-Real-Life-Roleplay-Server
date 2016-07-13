local players = GetElementType ( "player" ) -- get a table of all the players in the server
for theKey,player in ipairs(players) do -- use a generic for loop to step through each player
   local level = GetWantedLevel ( player ) -- get the wanted level of the player
   if ( level > (WantedLevel) ) then -- if the player has any stars, announce it in the chat:
      print ( GetPlayerName ( name ) .. " has a wanted level of " .. level .. "  stars!" )
   end 
end


