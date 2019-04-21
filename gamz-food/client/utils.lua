
Draw3DText = function(x, y, z, text)
    local onScreen,_x,_y=World3dToScreen2d(x,y,z)
    local px,py,pz=table.unpack(GetGameplayCamCoords())
    local dist = GetDistanceBetweenCoords(px,py,pz, x,y,z, 1)
 
    local scale = (1/dist)*1
    local fov = (1/GetGameplayCamFov())*100
    local scale = 1.9
   
    if onScreen then
        SetTextScale(0.0*scale, 0.18*scale)
        SetTextFont(4)
        SetTextProportional(1)
        -- SetTextScale(0.0, 0.55)
        SetTextDropshadow(0, 0, 0, 0, 255)
        SetTextEdge(2, 0, 0, 0, 150)
        SetTextDropShadow()
        SetTextEntry("STRING")
        SetTextCentre(1)
        AddTextComponentString(text)
        DrawText(_x,_y)
	local factor = (string.len(text)) / 350
    DrawRect(_x,_y+0.0115, 0.01+ factor, 0.025, 25, 25, 25, 185)
    
    end
end

MoneyCheck = function(money)
    local playerMoney = ESX.GetPlayerData()["money"]

    if playerMoney >= money then
        return true
    else
        return false
    end

end


LoadAnimDict = function(dict)
    RequestAnimDict(dict)

    while not HasAnimDictLoaded(dict) do
        Citizen.Wait(5)
    end
end

Marker = function(hint, x, y, z)
    Draw3DText(x, y, z + 1.0, hint)
	DrawMarker(25, x, y, z, 0.0, 0.0, 0.0, 0, 0.0, 0.0, 1.0, 1.0, 2.0, 55, 175, 55, 100, false, true, 2, false, false, false, false)
end
