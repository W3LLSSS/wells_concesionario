ESX = nil
local dentro = false
local inmenu = false
local isDead = false

AddEventHandler('esx:onPlayerSpawn', function() 
	isDead = false 
end)
AddEventHandler('esx:onPlayerDeath', function() 
	isDead = true 
	inmenu = false
end)
Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end
end)



Citizen.CreateThread(function()
    RequestModel(GetHashKey("s_m_m_highsec_02"))

    while not HasModelLoaded(GetHashKey("s_m_m_highsec_02")) do
        Wait(1)
    end

    RequestModel(GetHashKey("cs_molly"))

    while not HasModelLoaded(GetHashKey("cs_molly")) do
        Wait(1)
    end

    
    local garajeblip = AddBlipForCoord(Config.Con.Pos.x, Config.Con.Pos.y, Config.Con.Pos.z)

    SetBlipSprite (garajeblip, 669)
    SetBlipDisplay(garajeblip, 4)
    SetBlipScale  (garajeblip, 0.75)
    SetBlipAsShortRange(garajeblip, true)

    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString("Premium Deluxe Motorsports")
    EndTextCommandSetBlipName(garajeblip)
    

    local coordsinicio = {Config.Con.Pos}
    for _, item in pairs(coordsinicio) do
        
        local npc = CreatePed(4, 0x2930C1AB, item.x, item.y, item.z, item.heading, false, true)
        
        TaskStartScenarioInPlace(npc, "PROP_HUMAN_SEAT_COMPUTER", 0, false)
        SetEntityHeading(npc, item.heading)
        FreezeEntityPosition(npc, true)
        SetEntityInvincible(npc, true)
        SetBlockingOfNonTemporaryEvents(npc, true)
    end

    local coordsmotos = {Config.Zonas.motos.Pos}
    for _, item in pairs(coordsmotos) do
        
        local npcmotos = CreatePed(4, 0x2930C1AB, item.x, item.y, item.z, item.heading, false, true)
        
        TaskStartScenarioInPlace(npcmotos, "PROP_HUMAN_SEAT_CHAIR", 0, false)
        SetEntityHeading(npcmotos, item.heading)
        FreezeEntityPosition(npcmotos, true)
        SetEntityInvincible(npcmotos, true)
        SetBlockingOfNonTemporaryEvents(npcmotos, true)
    end

    local coordssuv = {Config.Zonas.suv.Pos}
    for _, item in pairs(coordssuv) do
        
        local npcsuv = CreatePed(4, 0x2930C1AB, item.x, item.y, item.z, item.heading, false, true)
        
        TaskStartScenarioInPlace(npcsuv, "PROP_HUMAN_SEAT_CHAIR", 0, false)
        SetEntityHeading(npcsuv, item.heading)
        FreezeEntityPosition(npcsuv, true)
        SetEntityInvincible(npcsuv, true)
        SetBlockingOfNonTemporaryEvents(npcsuv, true)
    end

    local coordscompact = {Config.Zonas.compactos.Pos}
    for _, item in pairs(coordscompact) do
        
        local npccompact = CreatePed(4, 0x45918E44, item.x, item.y, item.z, item.heading, false, true)
        
        TaskStartScenarioInPlace(npccompact, "WORLD_HUMAN_STAND_MOBILE", 0, false)
        SetEntityHeading(npccompact, item.heading)
        FreezeEntityPosition(npccompact, true)
        SetEntityInvincible(npccompact, true)
        SetBlockingOfNonTemporaryEvents(npccompact, true)
    end

    local coordsports = {Config.Zonas.deportivos.Pos}
    for _, item in pairs(coordsports) do
        
        local npcsports = CreatePed(4, 0x45918E44, item.x, item.y, item.z, item.heading, false, true)
        
        TaskStartScenarioInPlace(npcsports, "WORLD_HUMAN_STAND_MOBILE", 0, false)
        SetEntityHeading(npcsports, item.heading)
        FreezeEntityPosition(npcsports, true)
        SetEntityInvincible(npcsports, true)
        SetBlockingOfNonTemporaryEvents(npcsports, true)
    end

    local coordssuper = {Config.Zonas.super.Pos}
    for _, item in pairs(coordssuper) do
        
        local npcssuper = CreatePed(4, 0x45918E44, item.x, item.y, item.z, item.heading, false, true)
        
        TaskStartScenarioInPlace(npcssuper, "PROP_HUMAN_SEAT_CHAIR", 0, false)
        SetEntityHeading(npcssuper, item.heading)
        FreezeEntityPosition(npcssuper, true)
        SetEntityInvincible(npcssuper, true)
        SetBlockingOfNonTemporaryEvents(npcssuper, true)
    end

    local coordscupes = {Config.Zonas.cupes.Pos}
    for _, item in pairs(coordscupes) do
        
        local npccupes = CreatePed(4, 0x45918E44, item.x, item.y, item.z, item.heading, false, true)
        
        TaskStartScenarioInPlace(npccupes, "PROP_HUMAN_SEAT_CHAIR", 0, false)
        SetEntityHeading(npccupes, item.heading)
        FreezeEntityPosition(npccupes, true)
        SetEntityInvincible(npccupes, true)
        SetBlockingOfNonTemporaryEvents(npccupes, true)
    end

    local coordsmuscle = {Config.Zonas.muscles.Pos}
    for _, item in pairs(coordsmuscle) do
        
        local npcmuscle = CreatePed(4, 0x2930C1AB, item.x, item.y, item.z, item.heading, false, true)
        
        TaskStartScenarioInPlace(npcmuscle, "WORLD_HUMAN_STAND_MOBILE", 0, false)
        SetEntityHeading(npcmuscle, item.heading)
        FreezeEntityPosition(npcmuscle, true)
        SetEntityInvincible(npcmuscle, true)
        SetBlockingOfNonTemporaryEvents(npcmuscle, true)
    end

    local coords4x4 = {Config.Zonas.todoterreno.Pos}
    for _, item in pairs(coords4x4) do
        
        local npc4x4 = CreatePed(4, 0x2930C1AB, item.x, item.y, item.z, item.heading, false, true)
        
        TaskStartScenarioInPlace(npc4x4, "WORLD_HUMAN_STAND_MOBILE", 0, false)
        SetEntityHeading(npc4x4, item.heading)
        FreezeEntityPosition(npc4x4, true)
        SetEntityInvincible(npc4x4, true)
        SetBlockingOfNonTemporaryEvents(npc4x4, true)
    end

    local coordsclassic = {Config.Zonas.clasiquito.Pos}
    for _, item in pairs(coordsclassic) do
        
        local npcclassic = CreatePed(4, 0x2930C1AB, item.x, item.y, item.z, item.heading, false, true)
        
        TaskStartScenarioInPlace(npcclassic, "WORLD_HUMAN_STAND_MOBILE", 0, false)
        SetEntityHeading(npcclassic, item.heading)
        FreezeEntityPosition(npcclassic, true)
        SetEntityInvincible(npcclassic, true)
        SetBlockingOfNonTemporaryEvents(npcclassic, true)
    end

    local coordsvans = {Config.Zonas.vans.Pos}
    for _, item in pairs(coordsvans) do
        
        local npcvans = CreatePed(4, 0x2930C1AB, item.x, item.y, item.z, item.heading, false, true)
        
        TaskStartScenarioInPlace(npcvans, "WORLD_HUMAN_STAND_MOBILE", 0, false)
        SetEntityHeading(npcvans, item.heading)
        FreezeEntityPosition(npcvans, true)
        SetEntityInvincible(npcvans, true)
        SetBlockingOfNonTemporaryEvents(npcvans, true)
    end

    local coordssedans = {Config.Zonas.sedans.Pos}
    for _, item in pairs(coordssedans) do
        
        local npcsedans = CreatePed(4, 0x45918E44, item.x, item.y, item.z, item.heading, false, true)
        
        TaskStartScenarioInPlace(npcsedans, "WORLD_HUMAN_STAND_MOBILE", 0, false)
        SetEntityHeading(npcsedans, item.heading)
        FreezeEntityPosition(npcsedans, true)
        SetEntityInvincible(npcsedans, true)
        SetBlockingOfNonTemporaryEvents(npcsedans, true)
    end
    

    while true do
        Citizen.Wait(5)
        RemoveVehiclesFromGeneratorsInArea(Config.MirarVehiculo.Pos.x - 10.0, Config.MirarVehiculo.Pos.y - 10.0, Config.MirarVehiculo.Pos.z - 10.0, Config.MirarVehiculo.Pos.x + 10.0, Config.MirarVehiculo.Pos.y + 10.0, Config.MirarVehiculo.Pos.z + 10.0)
        local pcords = GetEntityCoords(GetPlayerPed(-1), 0)

        local coords = vector3(Config.Con.Pos.x, Config.Con.Pos.y, Config.Con.Pos.z)
        local distance = #(pcords - coords)

        if distance < 2.5 and not IsPedInAnyVehicle(GetPlayerPed(-1), true) and not isDead and not inmenu then
            ESX.Saaweel.DrawText3D(coords.x, coords.y, coords.z + 2, 'Pulsa [~y~E~w~] para hablar con ~o~' .. Config.Con.Nombre .. '~w~(Recepcionista)',  4)
            if IsControlJustPressed(1, 38) then
                TriggerEvent("pNotify:SendNotification", {
                    text =  Config.Con.formatoNombre.. ' Buenas, ¿Qué necesitas?',
                    type = 'basica',
                    layout = 'centerRight'
                })
                abrirmenumision()
            end
        end

        if dentro == true then
            for k, v in pairs(Config.Zonas) do
                local coordszonas = vector3(v.Pos.x, v.Pos.y, v.Pos.z)
                local distanciazonas = #(pcords - coordszonas)

                if distanciazonas < 2.5 and not IsPedInAnyVehicle(GetPlayerPed(-1), true) and not isDead and not inmenu then
                    ESX.Saaweel.DrawText3D(coordszonas.x, coordszonas.y, coordszonas.z + 2, 'Pulsa [~y~E~w~] para hablar con ~o~' .. v.Nombre,  4)
                    if IsControlJustPressed(1, 38) then
                        ESX.TriggerServerCallback('wells_concesionario:cogerveh', function(vehiculos)
                            local elements = {}

                            for i=1, #vehiculos, 1 do
                                table.insert(elements, {
                                    label = GetLabelText(GetDisplayNameFromVehicleModel(vehiculos[i].modelo)) .. ' - <font color="green">$' .. vehiculos[i].precio .. '<font color="white">',
                                    modelo = vehiculos[i].modelo,
                                    precio = vehiculos[i].precio
                                })
                            end

                            if #elements == 0 then
                                table.insert(elements, {
                                    label = 'No hay ningún vehiculo de esta clase.'
                                })
                            elseif #elements > 0 then
                                WaitForModel(elements[1].modelo)
                                ESX.Game.SpawnLocalVehicle(elements[1].modelo, vector3(Config.MirarVehiculo.Pos.x, Config.MirarVehiculo.Pos.y, Config.MirarVehiculo.Pos.z), Config.MirarVehiculo.Pos.h, function(vehicle)
                                    vehiculoexistentelocal = vehicle
                                    
                                    FreezeEntityPosition(vehicle, true)
                                    SetVehicleColours(vehicle, 131, 131)
                                    SetVehicleFixed(vehicle)
                                    SetVehicleDirtLevel(vehicle, 0.0)
                                    TaskWarpPedIntoVehicle(GetPlayerPed(-1), vehicle, -1)
                                    SetEntityVisible(GetPlayerPed(-1), false, false)
                                    SetModelAsNoLongerNeeded(elements[1].modelo)
                                end)
                            end
                            inmenu = true
                            ESX.UI.Menu.Open("default", GetCurrentResourceName(), "menu_garaje", {
                                title = "Concesionario - " .. k,
                                align = "bottom-right",
                                elements = elements
                            }, function(data, menu)
                                local vehiculocheck = data.current.modelo
                                local precioche = data.current.precio
                                
                                menu.close()
                                ESX.UI.Menu.Open("default", GetCurrentResourceName(), "menu_garaje", {
                                    title = "Color del coche " .. k,
                                    align = "bottom-right",
                                    elements = {
                                        {label = 'Blanco', value = 131},
                                        {label = 'Negro', value = 0},
                                        {label = 'Gris', value = 4},
                                        {label = 'Rojo', value = 27},
                                        {label = 'Azul', value = 64},
                                        {label = 'Verde', value = 50},
                                        {label = 'Rosa', value = 135},
                                        {label = 'Amarillo', value = 89},
                                        {label = 'Marrón', value = 102}, 
                                        {label = 'Morado', value = 145},
                                        {label = 'Naranja', value = 38}
                                    }
                                }, function(data2, menu2)
                                    menu2.close()
                                    inmenu = false

                                    comprarveh(vehiculocheck, data2.current.value, precioche, v.Tipo)


                                    if DoesEntityExist(vehiculoexistentelocal) then
                                        TaskLeaveVehicle(PlayerPedId(), vehiculoexistentelocal, 0)

                                        while IsPedInVehicle(PlayerPedId(), vehiculoexistentelocal, true) do
                                            Citizen.Wait(0)
                                        end
                            
                                        Citizen.Wait(1000)
                            
                                        ESX.Game.DeleteVehicle(vehiculoexistentelocal)
                                        SetEntityVisible(GetPlayerPed(-1), true, false)
                                    end

                                end, function(data2, menu2)
                                    menu2.close()
                                    inmenu = false
                                    
                                    if DoesEntityExist(vehiculoexistentelocal) then
                                        DeleteEntity(vehiculoexistentelocal)
                                    end
                                    SetEntityVisible(GetPlayerPed(-1), true, false)
                                end, function(data2, menu2)
                                    
                                    SetVehicleColours(vehiculoexistentelocal, data2.current.value, data2.current.value)
                                end)
                            end, function(data, menu)
                                menu.close()
                                inmenu = false
                                SetEntityVisible(GetPlayerPed(-1), true, false)
                                
                                if DoesEntityExist(vehiculoexistentelocal) then
                                    DeleteEntity(vehiculoexistentelocal)
                                end
                            end, function(data, menu)
                                local vehiculoseleccionado = data.current.modelo

                                if vehiculoseleccionado then
                                    WaitForModel(vehiculoseleccionado)

                                    if DoesEntityExist(vehiculoexistentelocal) then
                                        DeleteEntity(vehiculoexistentelocal)
                                    end
                                   
                                    if not IsModelValid(vehiculoseleccionado) then
                                        return
                                    end

                                    ESX.Game.SpawnLocalVehicle(vehiculoseleccionado, vector3(Config.MirarVehiculo.Pos.x, Config.MirarVehiculo.Pos.y, Config.MirarVehiculo.Pos.z), Config.MirarVehiculo.Pos.h, function(vehicle)
                                        vehiculoexistentelocal = vehicle
                                        
                                        FreezeEntityPosition(vehicle, true)
                                        SetVehicleColours(vehicle, 131, 131)
                                        TaskWarpPedIntoVehicle(GetPlayerPed(-1), vehicle, -1)
                                        SetEntityVisible(GetPlayerPed(-1), false, false)
                                        SetModelAsNoLongerNeeded(vehiculoseleccionado)
                                    end)
                                end
                            end)

                        end, k)
                    end
                end

            end
        end

        if inmenu then
            DisableAllControlActions(0)
            EnableControlAction(0, 177, true)
            EnableControlAction(0, 18, true)
            EnableControlAction(0, 27, true)
            EnableControlAction(0, 173, true)
            EnableControlAction(0, 0, true)
            EnableControlAction(0, 1, true)
            EnableControlAction(0, 2, true)
        end
    end
end)

---------------------------------------Menu dialogo mision----------------------------------------------------

function abrirmenumision()
    ESX.UI.Menu.CloseAll()

    ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'basurero_vehiculos', {
		title    = "Concesionario",
		elements = {
            {label = "Buenas, venía a mirar algún coche...", value = 'coche'},
            {label = "Ya he mirado, vendré otro día, ¡muchas gracias!...", value = 'salir'},
            {label = "¿Que tal tu día?", value = 'mision'}
        },
		align    = 'bottom-right'
	}, function(data, menu)
        if data.current.value == 'coche' then
            menu.close()
            dentro = true
            TriggerEvent("pNotify:SendNotification", {
                text = Config.Con.formatoNombre.. 'Ahí tienes todos los dependientes para poder mirar los coches que vendemos, hablale que cada uno te explica cada tipo.',
                type = 'basica',
                layout = 'centerRight'
            })
        elseif data.current.value == 'salir' then
            menu.close()
            dentro = false
            TriggerEvent("pNotify:SendNotification", {
                text = Config.Con.formatoNombre.. 'Bueno, ven cuando quieras, ya sabes que el concesionario está para tí, ¡Hasta luego!...',
                type = 'basica',
                layout = 'centerRight'
            })
        elseif data.current.value == 'mision' then
            menu.close()
            TriggerEvent("pNotify:SendNotification", {
                text = Config.Con.formatoNombre.. 'Pues aquí vamos, currando, ¿y usted?.',
                type = 'basica',
                layout = 'centerRight'
            })
            ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'basurero_vehiculos', {
                title    = "Concesionario",
                elements = {
                    {label = "Pues bien, necesito algo de dinero rápido, soy nuevo en la ciudad y ya sabe...", value = 'mision2'},
                },
                align    = 'bottom-right'
            }, function(data2, menu2)
                menu2.close()
                if data2.current.value == 'mision2' then
                    TriggerEvent("pNotify:SendNotification", {
                        text = Config.Con.formatoNombre.. 'Yo si quiere le podria ofertar algo, ve a hablar con Rill, que es un amigo mío, el te dirá que hacer, esta en el Bean Machine...',
                        type = 'basica',
                        layout = 'centerRight'
                    })
                end
            end, function(data2, menu2)
                menu2.close()
            end)
        end
	end, function(data, menu)
		menu.close()
	end)
end
---------------------------------

function WaitForModel(model)
    local DrawScreenText = function(text, red, green, blue, alpha)
        SetTextFont(4)
        SetTextScale(0.0, 0.5)
        SetTextColour(red, green, blue, alpha)
        SetTextDropshadow(0, 0, 0, 0, 255)
        SetTextEdge(1, 0, 0, 0, 255)
        SetTextDropShadow()
        SetTextOutline()
        SetTextCentre(true)

        BeginTextCommandDisplayText("STRING")
        AddTextComponentSubstringPlayerName(text)
        EndTextCommandDisplayText(0.5, 0.5)
    end

    if not IsModelValid(model) then
        return TriggerEvent("pNotify:SendNotification", {
            text = "Ese vehículo no existe...",
            type = 'basica',
            layout = 'centerRight'
        })
    end

    if not HasModelLoaded(model) then
        RequestModel(model)
    end

    while not HasModelLoaded(model) do
        Citizen.Wait(0)

        DrawScreenText("Cargando vehículo " .. GetLabelText(GetDisplayNameFromVehicleModel(model)) .. "...", 255, 255, 255, 150)
    end
end
------------------------------------------------------------------------------------------------------------

function comprarveh(modelo, color, precio, tipo)
    local matricula = GeneratePlate()
    ESX.TriggerServerCallback('wells_concesionario:comprarveh', function(valor)
        if valor then
            TriggerEvent("pNotify:SendNotification", {
                text = 'Has comprado el vehiculo <font color="yellow">' .. modelo .. '<font color="white"> por <font color="green">$' .. precio .. '<font color="white">, lo tienes en la parte trasera del concesionario.. ¡Muchas gracias por comprar aquí!',
                type = 'basica',
                layout = 'centerRight'
            })

            if ESX.Game.IsSpawnPointClear(vector3(Config.SpawnVeh.Pos.x, Config.SpawnVeh.Pos.y, Config.SpawnVeh.Pos.z), 4.0) then
                ESX.Game.SpawnVehicle(modelo, vector3(Config.SpawnVeh.Pos.x, Config.SpawnVeh.Pos.y, Config.SpawnVeh.Pos.z), Config.SpawnVeh.Pos.h, function(vehicle)
                    
                    SetVehicleColours(vehicle, color, color)

                    NetworkFadeInEntity(vehicle, true, true)

                    SetModelAsNoLongerNeeded(modelo)

                    SetVehicleNumberPlateText(vehicle, matricula)
                    
                    SetVehicleFixed(vehicle)
        
                    SetVehicleDirtLevel(vehicle, 0.0)

                    Citizen.Wait(100)

                    local vehicleprops = GetVehicleProperties(vehicle)

                    TriggerServerEvent('wells_concesionario:tadentroxd', matricula, vehicleprops, precio, tipo)
                    dentro = false
                end)
            elseif ESX.Game.IsSpawnPointClear(vector3(Config.SpawnVeh.Pos2.x, Config.SpawnVeh.Pos2.y, Config.SpawnVeh.Pos2.z), 4.0) then
                ESX.Game.SpawnVehicle(modelo, vector3(Config.SpawnVeh.Pos2.x, Config.SpawnVeh.Pos2.y, Config.SpawnVeh.Pos2.z), Config.SpawnVeh.Pos2.h, function(vehicle)
                    
                    SetVehicleColours(vehicle, color, color)

                    NetworkFadeInEntity(vehicle, true, true)

                    SetModelAsNoLongerNeeded(modelo)

                    SetVehicleNumberPlateText(vehicle, matricula)

                    SetVehicleFixed(vehicle)
        
                    SetVehicleDirtLevel(vehicle, 0.0)

                    Citizen.Wait(100)

                    local vehicleprops = GetVehicleProperties(vehicle)

                    TriggerServerEvent('wells_concesionario:tadentroxd', matricula, vehicleprops, precio, tipo)
                    dentro = false
                end)
            elseif ESX.Game.IsSpawnPointClear(vector3(Config.SpawnVeh.Pos3.x, Config.SpawnVeh.Pos3.y, Config.SpawnVeh.Pos3.z), 4.0) then
                ESX.Game.SpawnVehicle(modelo, vector3(Config.SpawnVeh.Pos3.x, Config.SpawnVeh.Pos3.y, Config.SpawnVeh.Pos3.z), Config.SpawnVeh.Pos3.h, function(vehicle)
                    
                    SetVehicleColours(vehicle, color, color)

                    NetworkFadeInEntity(vehicle, true, true)

                    SetModelAsNoLongerNeeded(modelo)

                    SetVehicleNumberPlateText(vehicle, matricula)

                    SetVehicleFixed(vehicle)
        
                    SetVehicleDirtLevel(vehicle, 0.0)

                    Citizen.Wait(100)

                    local vehicleprops = GetVehicleProperties(vehicle)

                    TriggerServerEvent('wells_concesionario:tadentroxd', matricula, vehicleprops, precio, tipo)
                    dentro = false
                end)
            else
                local vehicles = ESX.Game.GetVehiclesInArea(vector3(Config.SpawnVeh.Pos.x, Config.SpawnVeh.Pos.y, Config.SpawnVeh.Pos.z), 2)

                for k,entity in ipairs(vehicles) do
                    local attempt = 0

                    while not NetworkHasControlOfEntity(entity) and attempt < 100 and DoesEntityExist(entity) do
                        Wait(100)
                        NetworkRequestControlOfEntity(entity)
                        attempt = attempt + 1
                    end

                    if DoesEntityExist(entity) and NetworkHasControlOfEntity(entity) then
                        ESX.Game.DeleteVehicle(entity)
                    end
                end
                Citizen.Wait(100)
                ESX.Game.SpawnVehicle(modelo, vector3(Config.SpawnVeh.Pos.x, Config.SpawnVeh.Pos.y, Config.SpawnVeh.Pos.z), Config.SpawnVeh.Pos.h, function(vehicle)
                    
                    SetVehicleColours(vehicle, color, color)

                    NetworkFadeInEntity(vehicle, true, true)

                    SetModelAsNoLongerNeeded(modelo)

                    SetVehicleNumberPlateText(vehicle, matricula)
                    
                    SetVehicleFixed(vehicle)
        
                    SetVehicleDirtLevel(vehicle, 0.0)

                    Citizen.Wait(100)

                    local vehicleprops = GetVehicleProperties(vehicle)

                    TriggerServerEvent('wells_concesionario:tadentroxd', matricula, vehicleprops, precio, tipo)
                    dentro = false
                end)
            end
        else
            TriggerEvent("pNotify:SendNotification", {
                text = 'No tienes suficiente dinero...',
                type = 'basica',
                layout = 'centerRight'
            })
        end
    end, modelo, color, precio)
end


---------------------------------------------------------------
----------------------DC: ESX_Vehicleshop----------------------
---------------------------------------------------------------

local NumberCharset = {}
local Charset = {}

for i = 48,  57 do table.insert(NumberCharset, string.char(i)) end

for i = 65,  90 do table.insert(Charset, string.char(i)) end
for i = 97, 122 do table.insert(Charset, string.char(i)) end

function GeneratePlate()
	local generatedPlate
	local doBreak = false

	while true do
		Citizen.Wait(2)
		math.randomseed(GetGameTimer())
        generatedPlate = string.upper(GetRandomNumber(2) .. GetRandomLetter(3) .. GetRandomNumber(3))


		ESX.TriggerServerCallback('esx_vehicleshop:isPlateTaken', function(isPlateTaken)
			if not isPlateTaken then
				doBreak = true
			end
		end, generatedPlate)

		if doBreak then
			break
		end
	end

	return generatedPlate
end

-- mixing async with sync tasks
function IsPlateTaken(plate)
	local callback = 'waiting'

	ESX.TriggerServerCallback('esx_vehicleshop:isPlateTaken', function(isPlateTaken)
		callback = isPlateTaken
	end, plate)

	while type(callback) == 'string' do
		Citizen.Wait(0)
	end

	return callback
end

function GetRandomNumber(length)
	Citizen.Wait(0)
	math.randomseed(GetGameTimer())
	if length > 0 then
		return GetRandomNumber(length - 1) .. NumberCharset[math.random(1, #NumberCharset)]
	else
		return ''
	end
end

function GetRandomLetter(length)
	Citizen.Wait(0)
	math.randomseed(GetGameTimer())
	if length > 0 then
		return GetRandomLetter(length - 1) .. Charset[math.random(1, #Charset)]
	else
		return ''
	end
end


--- Del cabesa de sarwel ---

function GetVehicleProperties(vehiculo)
    if DoesEntityExist(vehiculo) then
        local propvehiculo = ESX.Game.GetVehicleProperties(vehiculo)

        propvehiculo.tyres = {}
        propvehiculo.windows = {}
        propvehiculo.doors = {}

        for id = 1, 7 do
            local tyreId = IsVehicleTyreBurst(vehiculo, id, false)

            if tyreId then
                propvehiculo.tyres[#propvehiculo.tyres + 1] = tyreId

                if tyreId == false then
                    tyreId = IsVehicleTyreBurst(vehicle, id, true)
                    propvehiculo.tyres[#propvehiculo.tyres] = tyreId
                end
            else
                propvehiculo.tyres[#propvehiculo.tyres + 1] = false
            end
        end

        for id = 1, 13 do
            local windowId = IsVehicleWindowIntact(vehiculo, id)

            if windowId ~= nil then
                propvehiculo.windows[#propvehiculo.windows + 1] = windowId
            else
                propvehiculo.windows[#propvehiculo.windows + 1] = true
            end
        end

        for id = 0, 5 do
            local doorId = IsVehicleDoorDamaged(vehiculo, id)

            if doorId then
                propvehiculo.doors[#propvehiculo.doors + 1] = doorId
            else
                propvehiculo.doors[#propvehiculo.doors + 1] = false
            end
        end

        propvehiculo.engineHealth = GetVehicleEngineHealth(vehiculo)
        propvehiculo.bodyHealth = GetVehicleBodyHealth(vehiculo)
        propvehiculo.fuelLevel = GetVehicleFuelLevel(vehiculo)

        return propvehiculo
    end
end