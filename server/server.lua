RegisterServerEvent("ultra_utility:eas:send")
AddEventHandler("ultra_utility:eas:send", function()
    local position = { x = 123.45, y = 67.89, z = 0.0 }
    local sender_number = 911
    local message = "Test"
    TriggerEvent("messages:sendMessageToEveryone", 0, message, sender_number, image, position, data)
end)
