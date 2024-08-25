-- Получаем необходимые сервисы | Getting the necessary services
local PlayersService = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")
local localPlayer = PlayersService.LocalPlayer

-- Получаем кнопку | Getting the button
local button = script.Parent

-- Функция, которая будет вызвана при нажатии на кнопку | Function that will be called when the button is clicked
local function onButtonClicked()
	-- Получаем системный канал чата | Getting the system chat channel
	local SystemChannel = TextChatService:WaitForChild("TextChannels"):WaitForChild("RBXSystem")

	-- Отправляем сообщение в чат с ником игрока | Sending a message to the chat with the player's nickname
	SystemChannel:DisplaySystemMessage("<font color='#00BFFF'>" .. localPlayer.Name .. ": #FREEDUROV</font>")
end

-- Подключаем обработчик события нажатия кнопки | Enabling the button click event handler
button.MouseButton1Click:Connect(onButtonClicked)

-- #FREEDUROV
