players = {}
host = nil
timeLeft = 90

RegisterServerEvent("Z:newplayer")
AddEventHandler("Z:newplayer", function(id)
    players[source] = true

    if not host then
        host = source
        TriggerClientEvent("Z:timesynchost", source, time)
    end
end)

AddEventHandler("playerDropped", function(reason)
    players[source] = nil

    if source == host then
        if #players > 0 then
            for mSource, _ in pairs(players) do
                host = mSource
                TriggerClientEvent("Z:adverthost", host, timeLeft)
                break
            end
        else
            host = nil
        end
    end
end)

RegisterServerEvent("Z:timeleftsync")
AddEventHandler("Z:timeleftsync", function(nTimeLeft)
    timeLeft = newTimeLeft
    if timeLeft < 1 then
       TriggerClientEvent("chatMessage", -1, "", {0, 0, 0}, "Test Advert.")
    end
end)
