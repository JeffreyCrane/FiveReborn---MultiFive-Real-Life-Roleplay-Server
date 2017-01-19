--Roll Down Window Script by Cody196--

function RollDownWindow(vehicle, windowIndex)
        AddEventHandler('chatMessage', function(fullcommand)
                if(command[1] == "/rolldown") then
                TriggerClientEvent('RollDownWindow', vehicle, command[2]) and then
        TriggerClientEvent('chatMessage', .. playerName .. "Rolls down his window.")
        else cancelEvent()
end
