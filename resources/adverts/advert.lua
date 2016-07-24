--Advertisements by Cody196--

RegisterServerEvent (onResourceStart, advert)

-- This script is only working untill there is a getTickCount() function / event available for FiveM!
-- Yet in th meantime this is the sourcecode, "print" will only execute in the server console!
-- Thus an unfinished script yet!
-- GalaxyNL

function advert () 
  TriggerEvent('chatMessage', 'AD:', {255, 0, 0}, "No Deathmatching")
  TriggerEvent('chatMessage', 'AD:', {255, 0, 0}, "No Teleporting")
  TriggerEvent('chatMessage', 'AD:', {255, 0, 0}, "Ask an admin for any assistance!")
  
end
