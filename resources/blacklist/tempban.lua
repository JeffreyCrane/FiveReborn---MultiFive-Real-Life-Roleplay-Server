local disallowedIPs

RegisterServerEvent('commandEntered')
AddEventHandler('commandEntered', function(source, fullcommand)
	ip = GetPlayerIP(ip)
	command = stringsplit(fullcommand, ' ')
	print(name .. " entered command " .. fullcommand)
	if(command[1] == "/ban" ..ip) then TriggerClientEvent('kickPlayer', ..name.. "has been temporarely banned" ..reason)


RegisterServerEvent('playerConnecting')
AddEventHandler('playerConnecting', function(name, setCallback)
	--LoadList()
	local identifiers = GetPlayerIdentifiers(source)
	for i = 1, #identifiers do
		local ip = stringsplit(identifiers[i], ':')[2]
		if disallowedIPs[ip] == true then 
			print('Player ' .. name .. ' tried to join but is banned: ' .. ip)
			setCallback("You are banned from this server.")
			CancelEvent()
		else
			print('Player ' .. name .. ' joined successfully: ' .. ip)
		end
	end
end)


function stringsplit(self, delimiter)
  local a = self:Split(delimiter)
  local t = {}

  for i = 0, #a - 1 do
     table.insert(t, a[i])
  end

  return t
end
