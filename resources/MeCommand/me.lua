AddEventHandler('chatCommandEntered', function(fullcommand)
RegisterServerEvent('chatMessage')

if (command[1] == '/me') then
    TriggerClientEvent('chatMessage', -1, GetPlayerName(source), { r, g, b }, command[2])
end
