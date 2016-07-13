RegisterNetEvent("SetVehicleFixed")
AddEventHandler('SetVehicleFixed', function(message)
    Citizen.CreateThread(function() -- Created a new thread
        Citizen.Wait(50) -- A wait function for 50 miliseconds.
        local carid = GetHashKey(message) -- Gets the car id from the message received.
        local playerPed = GetPlayerPed(-1) -- Gets the player that ran the command.
        if playerPed and playerPed ~= -1 then -- Checks if the player exists
        end
        local car = SetVehicleFixed(carid, playerCoords, 0.0, true, false)

            TriggerEvent('chatMessage', 'SYSTEM', {0, 255, 0}, "Vehicle fixed.")
        end
    end)
end)
