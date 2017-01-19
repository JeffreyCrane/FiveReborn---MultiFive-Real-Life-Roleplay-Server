TriggerServerEvent("Z:newplayer")

RegisterNetEvent("Z:adverthost")
AddEventHandler("Z:adverthost", function(timeLeft)
	Citizen.CreateThread(function()
		while true do
			Wait(1000)
			nTimeLeft = timeLeft - 1
			TriggerServerEvent("Z:timeleftsync", nTimeLeft)

                        if timeLeft < 1 then
                            timeLeft = 90
                        end
		end
	end)
end)
