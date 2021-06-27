ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterServerCallback('wells_concesionario:cogerveh', function(source, cb, clase)
    MySQL.Async.fetchAll('SELECT modelo, precio FROM concesionario WHERE clase = @clase', {
        ['@clase'] = clase
    }, function(result)
        local listavehiculos = {}

        for i=1, #result, 1 do
            table.insert(listavehiculos, {
                modelo = result[i].modelo,
                precio = result[i].precio
            })
        end

        cb(listavehiculos)
    end)
end)

ESX.RegisterServerCallback('wells_concesionario:comprarveh', function(source, cb, modelo, color, precio)
    local xPlayer = ESX.GetPlayerFromId(source)

    if xPlayer.getAccount('bank').money >=  precio then
		cb(true)
	else
		cb(false)
    end
end)

---------------------------------------------------------------
----------------------DC: ESX_Vehicleshop----------------------
---------------------------------------------------------------


ESX.RegisterServerCallback('esx_vehicleshop:isPlateTaken', function(source, cb, plate)
	MySQL.Async.fetchAll('SELECT 1 FROM owned_vehicles WHERE plate = @plate', {
		['@plate'] = plate
	}, function(result)
		cb(result[1] ~= nil)
	end)
end)

RegisterServerEvent('wells_concesionario:tadentroxd')
AddEventHandler('wells_concesionario:tadentroxd', function(matricula, vehicleprops, precio, tipo)
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.removeAccountMoney('bank', precio)
    MySQL.Async.execute('INSERT INTO owned_vehicles (owner, plate, vehicle, type) VALUES (@owner, @plate, @vehicle, @type)', {
        ['@owner'] = xPlayer.identifier,
        ['@plate'] = matricula,
        ['@vehicle'] = json.encode(vehicleprops),
        ['@type'] = tipo
    })
end)