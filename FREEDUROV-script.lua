-- Получаем необходимые сервисы
local PlayersService = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")
local localPlayer = PlayersService.LocalPlayer

-- Получаем кнопку
local button = script.Parent

-- Функция, которая будет вызвана при нажатии на кнопку
local function onButtonClicked()
	-- Получаем системный канал чата
	local SystemChannel = TextChatService:WaitForChild("TextChannels"):WaitForChild("RBXSystem")

	-- Отправляем сообщение в чат с ником игрока
	SystemChannel:DisplaySystemMessage("<font color='#00BFFF'>" .. localPlayer.Name .. ": #FREEDUROV</font>")
end

-- Подключаем обработчик события нажатия кнопки
button.MouseButton1Click:Connect(onButtonClicked)
