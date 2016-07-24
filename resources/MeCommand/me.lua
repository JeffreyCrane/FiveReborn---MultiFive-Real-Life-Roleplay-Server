AddEventHandler('chatCommandEntered', function(fullcommand, msg)

elseif(command[1] == "/me") then
    TriggerClientEvent("chatMessage", source, command[2]) -- Triggers client event.
