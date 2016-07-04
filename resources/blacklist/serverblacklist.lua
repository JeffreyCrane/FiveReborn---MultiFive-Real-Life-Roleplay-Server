local disallowedIPs = 
{
	--[[

		Add the IPs here
		E.g.
		[''] = true,
		[''] = true,
		
	  ]] 

	[''] = true,
	[''] = true,
	[''] = true,
	[''] = true,
	[''] = true,
	[''] = true,
}
local whitelistFile = 'whitelist.txt'

AddEventHandler('onResourceStarting', function(res)
	LoadList()
end)

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

--[[function LoadList()
	print('Started to load whitelisted IPs list')
	local file = io.open(whitelistFile)
	if file ~= nil then
		print('File exists, reading lines...')
		for line in file:lines() do
			if line ~= nil and line ~= "" then
				print('Added IP ' .. line)
				allowedIPs[line] = true
			end
		end
		file:close()
	else
		print("File doesn't exist :(")
	end
	print('Finished loading whitelisted IPs list')
end]]

function stringsplit(self, delimiter)
  local a = self:Split(delimiter)
  local t = {}

  for i = 0, #a - 1 do
     table.insert(t, a[i])
  end

  return t
end

-- AddEventHandler('addIP', function(ip, name, message)
	-- if(string.len(message) == 0) then
		-- CancelEvent();
	-- end
	-- if(string.sub(message, 1, 1) == "/" and string.len(message) >= 2) then
		-- TriggerEvent('commandEntered', source, message);
		-- CancelEvent();
	-- end
-- end)

-- RegisterServerEvent('commandEntered')
-- AddEventHandler('commandEntered', function(source, fullcommand)
	-- ip = GetPlayerIP(IP)
	-- command = stringsplit(fullcommand, ' ')
	-- print(name .. " entered command " .. fullcommand)
	-- if(command[1] == "/ban") then TriggerClientEvent('addIP', IP, ..name.. "has been banned" ..reason)

-- function banCommand(name, reason)
