-- esx_offroadscript Made By Foxi Development --

local OnDebug = false
local GripAmount = 4.6000001907349


Citizen.CreateThread(function()
	while true do
		local veh = GetVehiclePedIsIn(PlayerPedId())

		if veh == 0 then 
			Citizen.Wait(500)

		else 

			local material_id = GetVehicleWheelSurfaceMaterial(veh, 1)
			local wheel_type = GetVehicleWheelType(veh)

			if wheel_type == 3 or wheel_type == 4 or wheel_type == 6 then 
			else
				if material_id == 4 or material_id == 1 or material_id == 3 then
					
					SetVehicleGravityAmount(veh, 9.8000001907349)
					if OnDebug then
						text = "Je bent op de Normale Weg!"
					end
				else
					
					if GripAmount >= 9.8000001907349 then
						GripAmount = 5.8000001907349
					end

					SetVehicleGravityAmount(veh, GripAmount)
					if OnDebug then
						text = "Je bent op de offroad Weg!"
					end
				end
			end

			if OnDebug then
				Drawtext()
				Citizen.Wait(1)
			else
				Citizen.Wait(200)
			end
		end
	end
end)

function Drawtext()
	SetTextScale(0.7, 0.7)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextEntry("STRING")
    SetTextCentre(1)
    SetTextColour(255, 255, 255, 215)

	AddTextComponentString(text)
    DrawText(0.5, 0.9)
end

print("^6 esx_offroadscript Made By Foxi Development")
print("^6 esx_offroadscript Made By Foxi Development")
print("^6 esx_offroadscript Made By Foxi Development")