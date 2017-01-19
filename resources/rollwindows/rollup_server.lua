function RollUpWindow(vehicle, windowIndex)
        AddEventHandler('chatMessage', function(fullcommand)
                if(command[1] == "/rollup") then
                TriggerClientEvent('RollUpWindow', vehicle, command[2]) and then
        TriggerClientEvent('chatMessage', .. playerName .. "Rolls up his window.")
end
