local library = {}

function library:CreateWindow(name)
	local Library = Instance.new("ScreenGui")
	local Window = Instance.new("Frame")
	local GUIName = Instance.new("TextLabel")
	local Layout = Instance.new("UIListLayout")
	
	Layout.Name = "Layout"
	Layout.Parent = Window
	Layout.HorizontalAlignment = Enum.HorizontalAlignment.Center
	Layout.SortOrder = Enum.SortOrder.LayoutOrder
	Layout.Padding = UDim.new(0, 5)
	
	Library.Name = "Library"
	Library.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
	Library.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	Window.Name = "Window"
	Window.Parent = Library
	Window.BackgroundColor3 = Color3.fromRGB(33, 31, 32)
	Window.BorderSizePixel = 0
	Window.Position = UDim2.new(0.144329891, 0, 0.0947368443, 0)
	Window.Size = UDim2.new(0, 180, 0, 300)
	Window.Active = true
	Window.Draggable = true

	GUIName.Name = "GUIName"
	GUIName.Parent = Window
	GUIName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	GUIName.BackgroundTransparency = 1.000
	GUIName.Size = UDim2.new(0, 180, 0, 33)
	GUIName.Font = Enum.Font.Nunito
	GUIName.Text = name
	GUIName.TextColor3 = Color3.fromRGB(163, 163, 163)
	GUIName.TextSize = 22.000
	
	local epicLib = {}
	
	function epicLib:CreateButton(text)
		local Button = Instance.new("TextButton")

		Button.Name = "Button"
		Button.Parent = Window
		Button.BackgroundColor3 = Color3.fromRGB(49, 46, 47)
		Button.BorderSizePixel = 0
		Button.Position = UDim2.new(0.027777778, 0, 0.163333327, 0)
		Button.Size = UDim2.new(0, 170, 0, 32)
		Button.Font = Enum.Font.Nunito
		Button.Text = text
		Button.TextColor3 = Color3.fromRGB(180, 180, 180)
		Button.TextSize = 21.000
	end
	return epicLib
end

return library
