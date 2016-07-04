chat_range=100
 
AddEventHandler("OnPlayerJoin",GetRootElement(),
function ()
KeyPressed(source,"y","down","chat","Local")
end)
 
AddEventHandler("OnResourceStart",getResourceRootElement(getThisResource()),
function ()
for index, player in pairs(GetElementsByType("player")) do
keyPressed(player,"y","down","chat","Local")
  end
end)
 
function isPlayerInRangeOfPoint(player,x,y,z,range)
   local px,py,pz=GetElementPosition(player)
   return ((x-px)^2+(y-py)^2+(z-pz)^2)^0.5<=range
end
 
function onChat(player,_,...)
  local px,py,pz=GetElementPosition(player)
  local msg = table.concat({...}, " ")
  local name = GetPlayerName(name)
--local r,g,b = getTeamColor(getPlayerTeam(player))
  for _,v in ipairs(GetElementsByType("player")) do
    if isPlayerInRangeOfPoint(v,px,py,pz,chat_range) then
      sendMessage("(Local) "..nick..": "..msg,v,r,g,b,true)
    end
  end
end
--addCommandHandler("Local",onChat)
 
