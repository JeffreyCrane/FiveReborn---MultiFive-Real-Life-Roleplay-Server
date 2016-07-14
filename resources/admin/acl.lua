local ACL = hasPermissionTo(source)
local playerName = GetPlayerName(source)

ACLList = "acl.txt"

function ACL(source, hasPermissionTo)
  GetPlayerNameFromList(ACLList)
    if ( PlayerNameIsInList(source)) then
    givePermissionTo(source, ACL)
    else print ("You are not an admin") then
  CancelEvent()
end
