--Create command that will be executed by the player
RegisterCommand( 'dv', function(source, args)
    --Get player id
    local playerPed = PlayerPedId()
    --Get vehicle id of the vehicle player is/was inside
    local vehicleHash = (GetVehiclePedIsIn(playerPed, true))
    --Wait to find model
    Citizen.Wait(100)
    --Set entity as Mission Entity (requred by DeleteVehicle funciton)
    SetEntityAsMissionEntity(vehicleHash)
    --Delete the vehicle player is/was inside
    DeleteVehicle(vehicleHash)
   -- give the vehicle back to the game (Just to clean up the code)
   SetEntityAsNoLongerNeeded(vehicle)
end, false)