t1 = tick()
repeat wait() until game:IsLoaded()
local library = {
	watermark_1 = nil
}

function library:window(text)
	local ScreenGuiWindow = Instance.new("ScreenGui")
	local Main = Instance.new("Frame")
	local Top = Instance.new("Frame")
	local UIGradient = Instance.new("UIGradient")
	local Name = Instance.new("TextLabel")
	local Main2 = Instance.new("Frame")
	local Top_2 = Instance.new("Frame")
	local UIGradient_2 = Instance.new("UIGradient")
	local Main2Inner = Instance.new("Frame")
	local TabHolder = Instance.new("Frame")
	local UIListLayout = Instance.new("UIListLayout")
	local UIPadding = Instance.new("UIPadding")

	ScreenGuiWindow.Parent = game.CoreGui
	ScreenGuiWindow.ZIndexBehavior = Enum.ZIndexBehavior.Global

	game:GetService("UserInputService").InputEnded:Connect(function(k)
		if k.KeyCode == Enum.KeyCode.Insert then
			ScreenGuiWindow.Enabled = not ScreenGuiWindow.Enabled
		end
	end)

	if getgenv().uilib then
		getgenv().uilib:Remove()
	end
	getgenv().uilib = ScreenGuiWindow

	Main.Name = text or 'AzureUI'
	Main.Parent = ScreenGuiWindow
	Main.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
	Main.BorderColor3 = Color3.fromRGB(37, 37, 37)
	Main.BorderSizePixel = 2
	Main.Position = UDim2.new(0.5, -225, 0.5, -252)
	Main.Size = UDim2.new(0, 450, 0, 505)
	Main.Active = true
	Main.Draggable = true

	Top.Name = "Top"
	Top.Parent = Main
	Top.BackgroundColor3 = Color3.fromRGB(71, 98, 173)
	Top.BorderSizePixel = 0
	Top.Size = UDim2.new(0, 450, 0, 2)

	UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(105, 145, 255)), ColorSequenceKeypoint.new(0.50, Color3.fromRGB(62, 189, 191)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(111, 210, 255))}
	UIGradient.Rotation = 180
	UIGradient.Parent = Top

	Name.Name = "Name"
	Name.Parent = Main
	Name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Name.BackgroundTransparency = 1.000
	Name.Position = UDim2.new(0.0155555559, 0, 0.00396039616, 0)
	Name.Size = UDim2.new(0, 200, 0, 17)
	Name.Font = Enum.Font.RobotoMono
	Name.Text = text
	Name.TextColor3 = Color3.fromRGB(255, 255, 255)
	Name.TextSize = 15.000
	Name.TextStrokeTransparency = 0.500
	Name.TextXAlignment = Enum.TextXAlignment.Left

	Main2.Name = "Main2"
	Main2.Parent = Main
	Main2.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
	Main2.BorderColor3 = Color3.fromRGB(37, 37, 37)
	Main2.BorderSizePixel = 2
	Main2.Position = UDim2.new(0.460000008, -200, 0.5, -232)
	Main2.Size = UDim2.new(0, 436, 0, 477)

	Top_2.Name = "Top"
	Top_2.Parent = Main2
	Top_2.BackgroundColor3 = Color3.fromRGB(71, 98, 173)
	Top_2.Size = UDim2.new(0, 436, 0, 2)

	UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(105, 145, 255)), ColorSequenceKeypoint.new(0.50, Color3.fromRGB(62, 189, 191)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(111, 210, 255))}
	UIGradient_2.Rotation = 180
	UIGradient_2.Parent = Top_2

	Main2Inner.Name = "Main2Inner"
	Main2Inner.Parent = Main2
	Main2Inner.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Main2Inner.BackgroundTransparency = 1.000
	Main2Inner.Position = UDim2.new(0, 0, 0.00899999961, 0)
	Main2Inner.Size = UDim2.new(0, 436, 0, 477)

	TabHolder.Name = "TabHolder"
	TabHolder.Parent = Main2Inner
	TabHolder.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	TabHolder.BorderSizePixel = 0
	TabHolder.Size = UDim2.new(0, 436, 0, 35)

	UIListLayout.Parent = TabHolder
	UIListLayout.FillDirection = Enum.FillDirection.Horizontal
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

	UIPadding.Parent = TabHolder
	UIPadding.PaddingLeft = UDim.new(0, 0)

	local Tab = {}
	local TabButtons = 0

	function Tab:tab(text)
		TabButtons = TabButtons + 1
		local tabb = Instance.new("TextButton")
		local Tabs = Instance.new("Frame")
		local TabsContainer = Instance.new("Frame")
		local Left = Instance.new("Frame")
		local LeftLayout = Instance.new("UIListLayout")
		local LeftPadding = Instance.new("UIPadding")
		local Right = Instance.new("Frame")
		local RightLayout = Instance.new("UIListLayout")
		local RightPadding = Instance.new("UIPadding")
		tabb.Parent = TabHolder
		tabb.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
		tabb.BorderSizePixel = 0
		tabb.Position = UDim2.new(0, 0, 0, 0)
		tabb.Size = UDim2.new(0, 100, 0, 35)
		tabb.Font = Enum.Font.RobotoMono
		tabb.Text = text or "Tab"
		tabb.TextColor3 = Color3.fromRGB(255, 255, 255)
		tabb.TextSize = 15.000
		tabb.TextStrokeTransparency = 0.500

		TabsContainer.Name = "Tabs"
		TabsContainer.Parent = Main2Inner
		TabsContainer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TabsContainer.BackgroundTransparency = 1.000
		TabsContainer.Position = UDim2.new(0.5, -212, 0.5, -210)
		TabsContainer.Size = UDim2.new(0, 425, 0, 421)
		TabsContainer.Visible = false

		Tabs.Name = text
		Tabs.Parent = TabsContainer
		Tabs.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Tabs.BackgroundTransparency = 1.000
		Tabs.Position = UDim2.new(0.5, -212, 0.535639405, -210)
		Tabs.Size = UDim2.new(0, 425, 0, 421)

		Left.Name = "Left"
		Left.Parent = Tabs
		Left.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Left.BackgroundTransparency = 1.000
		Left.Size = UDim2.new(0, 212, 0, 421)

		LeftLayout.Name = "LeftLayout"
		LeftLayout.Parent = Left
		LeftLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
		LeftLayout.SortOrder = Enum.SortOrder.LayoutOrder
		LeftLayout.Padding = UDim.new(0, 10)

		LeftPadding.Name = "LeftPadding"
		LeftPadding.Parent = Left
		LeftPadding.PaddingTop = UDim.new(0, 2)

		Right.Name = "Right"
		Right.Parent = Tabs
		Right.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Right.BackgroundTransparency = 1.000
		Right.Position = UDim2.new(0.498823524, 0, 0, 0)
		Right.Size = UDim2.new(0, 212, 0, 421)

		RightLayout.Name = "RightLayout"
		RightLayout.Parent = Right
		RightLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
		RightLayout.SortOrder = Enum.SortOrder.LayoutOrder
		RightLayout.Padding = UDim.new(0, 10)

		RightPadding.Name = "RightPadding"
		RightPadding.Parent = Right
		RightPadding.PaddingTop = UDim.new(0, 2)

		for i,v in pairs(TabHolder:GetChildren()) do --skidded from m4tt
			if v.ClassName == "TextButton" then
				v.Size = UDim2.new(1/TabButtons,0,0,35)
			end
		end

		tabb.MouseButton1Click:Connect(function() -- skidded from m4tt
			for i,v in pairs(TabHolder:GetChildren()) do
				if v.ClassName == "TextButton" then
					v.BackgroundColor3 = Color3.fromRGB(29,29,29)
				end
			end


			for i,v in pairs(Main2Inner:GetChildren()) do 
				if v.Name == "Tabs" then
					v.Visible = false
				end
			end


			TabsContainer.Visible = true
			tabb.BackgroundColor3 = Color3.fromRGB(20,20,20)
		end)

		local sections = {}
		function sections:section(text, side)
			if side == "Left" then side = Left else side = Right end
			local section = Instance.new("Frame")
			local Top_3 = Instance.new("Frame")
			local UIGradient_3 = Instance.new("UIGradient")
			local SectionName = Instance.new("TextLabel")
			local sectioninner = Instance.new("Frame")
			local Sectioncontainer = Instance.new("Frame")
			local UIListLayout_3 = Instance.new("UIListLayout")

			section.Name = text
			section.Parent = side
			section.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
			section.BorderColor3 = Color3.fromRGB(40, 40, 40)
			section.Size = UDim2.new(0, 205, 0, 15)

			Top_3.Name = "Top"
			Top_3.Parent = section
			Top_3.BackgroundColor3 = Color3.fromRGB(71, 98, 173)
			Top_3.BorderSizePixel = 0
			Top_3.Size = UDim2.new(0, 205, 0, 2)

			UIGradient_3.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(105, 145, 255)), ColorSequenceKeypoint.new(0.50, Color3.fromRGB(62, 189, 191)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(111, 210, 255))}
			UIGradient_3.Rotation = 180
			UIGradient_3.Parent = Top

			SectionName.Name = "SectionName"
			SectionName.Parent = section
			SectionName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			SectionName.BackgroundTransparency = 1.000
			SectionName.Position = UDim2.new(0.013, 0, 0.015, 2)
			SectionName.Size = UDim2.new(0, 205, 0,10)
			SectionName.Font = Enum.Font.RobotoMono
			SectionName.Text = text or 'Section'
			SectionName.TextColor3 = Color3.fromRGB(255, 255, 255)
			SectionName.TextSize = 14.000
			SectionName.TextStrokeTransparency = 0.500
			SectionName.TextXAlignment = Enum.TextXAlignment.Left

			sectioninner.Name = "sectioninner"
			sectioninner.Parent = section
			sectioninner.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			sectioninner.BackgroundTransparency = 1
			sectioninner.Position = UDim2.new(0, 0, 0, 5)
			sectioninner.Size = UDim2.new(0, 205, 0, 5)

			Sectioncontainer.Name = "Sectioncontainer"
			Sectioncontainer.Parent = sectioninner
			Sectioncontainer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Sectioncontainer.BackgroundTransparency = 1.000
			Sectioncontainer.Position = UDim2.new(0.5, -100, 0.06, 10)
			Sectioncontainer.Size = UDim2.new({1, -8},{1, -14})

			UIListLayout_3.Parent = Sectioncontainer
			UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
			UIListLayout_3.Padding = UDim.new(0, 8)


			local func = {}

			function func:button(text, callback)
				section.Size = section.Size + UDim2.new(0,0,0,35)
				sectioninner.Size = sectioninner.Size + UDim2.new(0,0,0,11)

				callback = callback or function() end

				local Button = Instance.new("TextButton")

				Button.Name = text
				Button.Parent = Sectioncontainer
				Button.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
				Button.BorderColor3 = Color3.fromRGB(60, 60, 60)
				Button.Position = UDim2.new(0.5, -97, 0.5, -12)
				Button.Size = UDim2.new(0, 199, 0, 25)
				Button.Font = Enum.Font.RobotoMono
				Button.TextColor3 = Color3.fromRGB(255, 255, 255)
				Button.TextSize = 14.000
				Button.TextStrokeTransparency = 0.500
				Button.Text = text or 'Button'

				Button.MouseButton1Click:connect(function()
					pcall(callback)
				end)
			end

			function func:toggle(text,default,callback)
				section.Size = section.Size + UDim2.new(0,0,0,22)
				sectioninner.Size = sectioninner.Size + UDim2.new(0,0,0,5)

				callback = callback or function() end

				local toggled = default

				local Toggle = Instance.new("TextButton")
				local ToggleText = Instance.new("TextButton")

				Toggle.Name = text
				Toggle.Parent = Sectioncontainer
				Toggle.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
				Toggle.BorderColor3 = Color3.fromRGB(60, 60, 60)
				Toggle.Position = UDim2.new(0, 0, 0.195402294, 0)
				Toggle.Size = UDim2.new(0, 12, 0, 12)
				Toggle.Font = Enum.Font.SourceSans
				Toggle.Text = ""
				Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
				Toggle.TextSize = 14.000

				ToggleText.Name = text..' Text'
				ToggleText.Parent = Toggle
				ToggleText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				ToggleText.BackgroundTransparency = 1.000
				ToggleText.Position = UDim2.new(1.42378569, 0, -0.0566666126, 0)
				ToggleText.Size = UDim2.new(0, 181, 0, 12)
				ToggleText.Font = Enum.Font.RobotoMono
				ToggleText.Text = text
				ToggleText.TextColor3 = Color3.fromRGB(255, 255, 255)
				ToggleText.TextSize = 14.000
				ToggleText.TextStrokeTransparency = 0.500
				ToggleText.TextXAlignment = Enum.TextXAlignment.Left

				local function ChangeState(state)
					toggled = state
					Toggle.BackgroundColor3 = toggled and Color3.fromRGB(71, 98, 173) or Color3.fromRGB(50, 50, 50)
					callback(toggled)
				end

				ChangeState(default)

				Toggle.MouseButton1Click:Connect(function()
					ChangeState(not toggled)
				end)

				ToggleText.InputBegan:Connect(
					function(InputObject)
						if InputObject.UserInputType == Enum.UserInputType.MouseButton1 then
							ChangeState(not toggled)
						end
					end)
			end

			function func:slider(text, minval, maxval, callback)
				section.Size = section.Size + UDim2.new(0,0,0,30)
				sectioninner.Size = sectioninner.Size + UDim2.new(0,0,0,5)

				minval = minval or 0
				maxval = maxval or 100

				callback = callback or function() end

				local mouse = game.Players.LocalPlayer:GetMouse()
				local uis = game:GetService("UserInputService")
				local Value;
				local moveconnection
				local releaseconnection

				local Sliderrr = Instance.new("Frame")
				local SliderText = Instance.new("TextLabel")
				local SliderButton = Instance.new("TextButton")
				local DraggablePartSlider = Instance.new("Frame")
				local SliderNumberVal = Instance.new("TextLabel")

				Sliderrr.Name = "Sliderr"
				Sliderrr.Parent = Sectioncontainer
				Sliderrr.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Sliderrr.BackgroundTransparency = 1.000
				Sliderrr.Position = UDim2.new(0, 0, 0.314285725, 0)
				Sliderrr.Size = UDim2.new(0, 100, 0, 25)

				SliderText.Name = "SliderText"
				SliderText.Parent = Sliderrr
				SliderText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				SliderText.BackgroundTransparency = 1.000
				SliderText.Position = UDim2.new(0.00492462236, 0, -0.00904759765, 0)
				SliderText.Size = UDim2.new(0, 199, 0, 15)
				SliderText.ZIndex = 500
				SliderText.Font = Enum.Font.RobotoMono
				SliderText.Text = text
				SliderText.TextColor3 = Color3.fromRGB(255, 255, 255)
				SliderText.TextSize = 14.000
				SliderText.TextStrokeTransparency = 0.500
				SliderText.TextXAlignment = Enum.TextXAlignment.Left

				SliderButton.Name = "SliderButton"
				SliderButton.Parent = SliderText
				SliderButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
				SliderButton.BorderSizePixel = 0
				SliderButton.Position = UDim2.new(0, 0, 1.04999995, 0)
				SliderButton.Size = UDim2.new(0, 199, 0, 9)
				SliderButton.ZIndex = 501
				SliderButton.Font = Enum.Font.SourceSans
				SliderButton.Text = ""
				SliderButton.TextColor3 = Color3.fromRGB(0, 0, 0)
				SliderButton.TextSize = 14.000

				DraggablePartSlider.Name = "DraggablePartSlider"
				DraggablePartSlider.Parent = SliderButton
				DraggablePartSlider.BackgroundColor3 = Color3.fromRGB(71, 98, 173)
				DraggablePartSlider.BorderSizePixel = 0
				DraggablePartSlider.Size = UDim2.new(0, 0, 0, 9)
				DraggablePartSlider.ZIndex = 502

				SliderNumberVal.Name = "SliderNumberVal"
				SliderNumberVal.Parent = SliderText
				SliderNumberVal.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				SliderNumberVal.BackgroundTransparency = 1.000
				SliderNumberVal.Position = UDim2.new(0.00999995135, 0, 1, 0)
				SliderNumberVal.Size = UDim2.new(0, 200, 0, 9)
				SliderNumberVal.ZIndex = 503
				SliderNumberVal.Font = Enum.Font.RobotoMono
				SliderNumberVal.Text = "0"
				SliderNumberVal.TextColor3 = Color3.fromRGB(255, 255, 255)
				SliderNumberVal.TextSize = 14.000
				SliderNumberVal.TextStrokeTransparency = 0.500

				SliderButton.MouseButton1Down:Connect(function()
					Value = math.floor((((tonumber(maxval) - tonumber(minval)) / 199) * DraggablePartSlider.AbsoluteSize.X) + tonumber(minval)) or 0
					pcall(function()
						callback(Value)
						SliderNumberVal.Text = Value
					end)
					DraggablePartSlider.Size = UDim2.new(0, math.clamp(mouse.X - DraggablePartSlider.AbsolutePosition.X, 0, 200), 0, 9)
					moveconnection = mouse.Move:Connect(function()
						SliderNumberVal.Text = Value
						Value = math.floor((((tonumber(maxval) - tonumber(minval)) / 199) * DraggablePartSlider.AbsoluteSize.X) + tonumber(minval))
						pcall(function()
							callback(Value)
							SliderNumberVal.Text = Value
						end)
						DraggablePartSlider.Size = UDim2.new(0, math.clamp(mouse.X - DraggablePartSlider.AbsolutePosition.X, 0, 200), 0, 9)
					end)
					releaseconnection = uis.InputEnded:Connect(function(Mouse)
						if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
							Value = math.floor((((tonumber(maxval) - tonumber(minval)) / 199) * DraggablePartSlider.AbsoluteSize.X) + tonumber(minval))
							pcall(function()
								callback(Value)
								SliderNumberVal.Text = Value
							end)
							DraggablePartSlider.Size = UDim2.new(0, math.clamp(mouse.X - DraggablePartSlider.AbsolutePosition.X, 0, 199), 0, 9)
							moveconnection:Disconnect()
							releaseconnection:Disconnect()
						end
					end)
				end)
			end

			function func:textbox(text,callback)
				section.Size = section.Size + UDim2.new(0,0,0,34)
				sectioninner.Size = sectioninner.Size + UDim2.new(0,0,0,10)

				callback = callback or function() end

				local textbox = Instance.new("TextBox")

				textbox.Name = text
				textbox.Parent = Sectioncontainer
				textbox.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
				textbox.BorderColor3 = Color3.fromRGB(60, 60, 60)
				textbox.Position = UDim2.new(0, 0, 0.508571446, 0)
				textbox.Size = UDim2.new(0, 199, 0, 25)
				textbox.Font = Enum.Font.RobotoMono
				textbox.PlaceholderColor3 = Color3.fromRGB(180, 180, 180)
				textbox.PlaceholderText = text
				textbox.Text = ""
				textbox.TextColor3 = Color3.fromRGB(255, 255, 255)
				textbox.TextSize = 14.000
				textbox.TextStrokeTransparency = 0.500

				local function changeText(value)
					textbox.Text = value
				end

				textbox:GetPropertyChangedSignal('Text'):Connect(function(val)
					pcall(callback(textbox.Text))
				end)
			end

			function func:dropdown(text,multi,list,callback)
				section.Size = section.Size + UDim2.new(0,0,0,42)
				sectioninner.Size = sectioninner.Size + UDim2.new(0,0,0,10)

				local multiselect = {}

				list = list or {}
				text = text or "{@} Dropdown"
				callback = callback or function() end
				multi = multi or false

				local Dropdown  = Instance.new("Frame")
				local DropText  = Instance.new("TextLabel")
				local DropButton = Instance.new("TextButton")
				local DropMark = Instance.new("TextLabel")
				local DropFrame = Instance.new("Frame")

				Dropdown.Name = "dropdown"
				Dropdown.Parent = Sectioncontainer
				Dropdown.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Dropdown.BackgroundTransparency = 1.000
				Dropdown.Position = UDim2.new(0, 0, 0.702857137, 0)
				Dropdown.Size = UDim2.new(0, 199, 0, 35)
				Dropdown.ZIndex = 504

				DropText.Name = "dropdowntext"
				DropText.Parent = Dropdown 
				DropText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				DropText.BackgroundTransparency = 1.000
				DropText.Position = UDim2.new(0.0124746347, 0, 0, 0)
				DropText.Size = UDim2.new(0, 196, 0, 9)
				DropText.Font = Enum.Font.RobotoMono
				DropText.Text = text
				DropText.TextColor3 = Color3.fromRGB(255, 255, 255)
				DropText.TextSize = 14.000
				DropText.TextStrokeTransparency = 0.500
				DropText.TextXAlignment = Enum.TextXAlignment.Left
				DropText.ZIndex = 505


				DropButton.Name = "Dropbutton"
				DropButton.Parent = Dropdown 
				DropButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
				DropButton.BorderColor3 = Color3.fromRGB(60, 60, 60)
				DropButton.Position = UDim2.new(0, 0, 0.400000006, 0)
				DropButton.Size = UDim2.new(0, 199, 0, 21)
				DropButton.Font = Enum.Font.RobotoMono
				DropButton.Text = " Unknown"
				DropButton.ZIndex = 506

				if multi then DropButton.Text = " ..." end
				DropButton.TextColor3 = Color3.fromRGB(255, 255, 255)
				DropButton.TextSize = 14.000
				DropButton.TextStrokeTransparency = 0.500
				DropButton.TextXAlignment = Enum.TextXAlignment.Left

				DropMark.Name = "DropdownSymbol"
				DropMark.Parent = Dropdown 
				DropMark.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				DropMark.BackgroundTransparency = 1.000
				DropMark.Position = UDim2.new(0.899497509, 0, 0.400000006, 0)
				DropMark.Size = UDim2.new(0, 21, 0, 21)
				DropMark.Font = Enum.Font.RobotoMono
				DropMark.Text = "-"
				DropMark.TextColor3 = Color3.fromRGB(255, 255, 255)
				DropMark.TextSize = 14.000
				DropMark.TextStrokeTransparency = 0.500
				DropMark.ZIndex = 507

				DropButton.MouseButton1Click:Connect(function() 
					DropFrame.Visible = not DropFrame.Visible; DropMark.Text = DropFrame.Visible and "+" or "_";
					DropMark.Size = DropFrame.Visible and UDim2.new(0, 21, 0, 21) or UDim2.new(0,21,0,21)
				end)

				DropFrame.Name = "DropFrame"
				DropFrame.Parent = Dropdown
				DropFrame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
				DropFrame.BorderSizePixel = 0
				DropFrame.Position = UDim2.new(0, 0, 1, 0)
				DropFrame.Size = UDim2.new(0, 199, 0, 0)
				DropFrame.Visible = false
				DropFrame.ZIndex = 508
				DropFrame.ClipsDescendants = false

				local uilist = Instance.new('UIListLayout')
				uilist.Parent = DropFrame
				uilist.FillDirection = "Vertical"

				local function findIndex(element)
					local index={}
					for k,v in pairs(multiselect) do
						index[v]=k
					end
					return index[element]
				end

				local function newItem(i)
					DropFrame.Size = DropFrame.Size + UDim2.new(0,0,0,25)

					local TextButton = Instance.new("TextButton")
					TextButton.Parent = DropFrame
					TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					TextButton.BackgroundTransparency = 12.000
					TextButton.Position = UDim2.new(0.0331491716, 0, 0, 0)
					TextButton.Size = UDim2.new(0, 199, 0, 25)
					TextButton.Font = Enum.Font.RobotoMono
					TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
					TextButton.TextSize = 14.000
					TextButton.TextStrokeTransparency = 0.000
					TextButton.Text = " "..i
					TextButton.TextXAlignment = Enum.TextXAlignment.Left
					TextButton.AutoButtonColor = false
					TextButton.ZIndex = 509
					TextButton.ClipsDescendants = true
					local currentvaluecock = "None"
					TextButton.MouseButton1Click:Connect(function()

						if not multi then
							for i,v in pairs(DropFrame:GetChildren()) do
								if v.ClassName == "TextButton" then
									v.TextColor3 = Color3.fromRGB(255,255,255)
								end
							end

							TextButton.TextColor3 = Color3.fromRGB(71, 98, 173)
							DropButton.Text = " "..i
							currentvaluecock = i
							callback(i)
							Value = i
						else
							if not table.find(multiselect,i) then
								table.insert(multiselect,i)
								TextButton.TextColor3 = Color3.fromRGB(71, 98, 173)
								DropButton.Text = " ..."
								callback(multiselect)
								Value = multiselect
							else
								table.remove(multiselect,findIndex(i))
								DropButton.Text = " ..."
								TextButton.TextColor3 = Color3.fromRGB(255,255,255)
								callback(multiselect)
								Value = multiselect
							end
						end
					end)
				end




				for i,v in pairs(list) do newItem(v) end
				Set = function(tbl)
					DropButton.Text = " "..tbl.Value
					Value = tbl.Value
				end


			end

			return func
		end
		return sections
	end
	return Tab
end

function library:watermark(text)

	local environeents = Instance.new("ScreenGui")

	local watermarkbackround = Instance.new("Frame")
	local UIGradient_69 = Instance.new("UIGradient")
	local Top_69 = Instance.new("Frame")
	local UIGradient_70 = Instance.new("UIGradient")
	local TextLabel_69 = Instance.new("TextLabel")

	environeents.Name = "environeents"
	environeents.Parent = game.CoreGui

	if getgenv().watermark then
		getgenv().watermark:Remove()
	end
	getgenv().watermark = environeents

	watermarkbackround.Name = "watermarkbackround"
	watermarkbackround.Parent = environeents
	watermarkbackround.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
	watermarkbackround.BorderColor3 = Color3.fromRGB(0, 0, 0)
	watermarkbackround.Position = UDim2.new(0.0170250889, 0, 0.0913312659, 0)
	watermarkbackround.ZIndex = 999999998
	watermarkbackround.Active = true
	watermarkbackround.Draggable = true
	library.watermark_1 = environeents 

	UIGradient_69.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(35, 35, 35)), ColorSequenceKeypoint.new(0.43, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 255, 255))}
	UIGradient_69.Rotation = 270
	UIGradient_69.Parent = watermarkbackround

	Top_69.Name = "Top_69"
	Top_69.Parent = watermarkbackround
	Top_69.BackgroundColor3 = Color3.fromRGB(71, 98, 173)
	Top_69.BorderSizePixel = 0
	Top_69.Size = UDim2.new(0, 0, 0, 2)
	Top_69.ZIndex = 999999999

	UIGradient_70.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(105, 145, 255)), ColorSequenceKeypoint.new(0.50, Color3.fromRGB(62, 189, 191)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(111, 210, 255))}
	UIGradient_70.Rotation = 180
	UIGradient_70.Parent = Top_69

	TextLabel_69.Name = 'TextLabel_69'
	TextLabel_69.Parent = watermarkbackround
	TextLabel_69.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel_69.BackgroundTransparency = 1.000
	TextLabel_69.BorderColor3 = Color3.fromRGB(27, 42, 53)
	TextLabel_69.BorderSizePixel = 0
	TextLabel_69.Position = UDim2.new(0.0367346928, 0, 0.0576318353, 0)
	TextLabel_69.Size = UDim2.new(0, 236, 0, 24)
	TextLabel_69.Font = Enum.Font.RobotoMono
	TextLabel_69.ZIndex = 999999999

	game:GetService("RunService").RenderStepped:Connect(function(TimeBetween)
		coroutine.wrap(function()
			local FPS = math.floor(1/TimeBetween)
			TextLabel_69.Text = text..' | '..game.Players.LocalPlayer.Name..' | '..'FPS : '..FPS
			watermarkbackround.Size = UDim2.new(0, 7*string.len(TextLabel_69.Text)+13,0,25)
			Top_69.Size = UDim2.new(0, 7*string.len(TextLabel_69.Text)+13,0,2)
		end)()
	end)
	TextLabel_69.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel_69.TextSize = 14.000
	TextLabel_69.TextStrokeTransparency = 0.500
	TextLabel_69.TextXAlignment = Enum.TextXAlignment.Left
end

function library:setwatermark(val)
	game.CoreGui['environeents']['watermarkbackround'].Visible = val
end

function library:notify(text, duration)
	local ScreenGui = Instance.new("ScreenGui")
	local notifications = Instance.new("Frame")
	local Notification = Instance.new("Frame")
	local Top = Instance.new("Frame")
	local UIGradient = Instance.new("UIGradient")
	local notiftext = Instance.new("TextLabel")
	local UIGradient_2 = Instance.new("UIGradient")
	local UIListLayout = Instance.new("UIListLayout")

	ScreenGui.Parent = game.CoreGui
	ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Global

	notifications.Name = "notifications"
	notifications.Parent = ScreenGui
	notifications.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	notifications.BackgroundTransparency = 1
	notifications.Position = UDim2.new(0.0170250889, 0, 0.0185758509, 0)
	notifications.Size = UDim2.new(0, 235, 0, 80)
	notifications.ZIndex = 9999999

	Notification.Name = "Notification"
	Notification.Parent = game.CoreGui['ScreenGui']['notifications']
	Notification.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
	Notification.BorderColor3 = Color3.fromRGB(15, 15, 15)
	Notification.Size = UDim2.new(0, 255, 0, 25)

	Top.Name = "Top"
	Top.Parent = Notification
	Top.BackgroundColor3 = Color3.fromRGB(71, 98, 173)
	Top.BorderColor3 = Color3.fromRGB(15, 15, 15)
	Top.Size = UDim2.new(0, 3, 0, 25)

	UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(105, 145, 255)), ColorSequenceKeypoint.new(0.50, Color3.fromRGB(62, 189, 191)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(111, 210, 255))}
	UIGradient.Rotation = 180
	UIGradient.Parent = Top

	notiftext.Name = "notiftext"
	notiftext.Parent = Notification
	notiftext.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	notiftext.BackgroundTransparency = 1.000
	notiftext.Position = UDim2.new(0.1, 0, 0, 0)
	notiftext.Size = UDim2.new(0, 226, 0, 25)
	notiftext.Font = Enum.Font.RobotoMono
	notiftext.Text = text
	notiftext.TextColor3 = Color3.fromRGB(255, 255, 255)
	notiftext.TextSize = 15.000
	notiftext.TextStrokeTransparency = 0.500
	notiftext.TextXAlignment = Enum.TextXAlignment.Left
	local XBound = notiftext.TextBounds.X + 18

	Notification.Size = UDim2.new(0.01, XBound, 0, 25)

	UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(35, 35, 35)), ColorSequenceKeypoint.new(0.43, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 255, 255))}
	UIGradient_2.Rotation = 270
	UIGradient_2.Parent = Notification

	UIListLayout.Parent = notifications
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout.Padding = UDim.new(0, 6)

	local function waitScript()
		for i = 15, 0, -1  do
			Notification.BackgroundTransparency = i/15
			Top.BackgroundTransparency = i/15
			notiftext.TextTransparency = i/15
			wait()
		end
		wait(duration)

		for i = 0, 15 do
			Notification.BackgroundTransparency = i/15
			Top.BackgroundTransparency = i/15
			notiftext.TextTransparency = i/15
			wait()
		end
		Notification:Destroy()
	end

	coroutine.wrap(waitScript)()
end
del = tick()-t1
print('ui loaded in '..tostring(del)..' sec')
