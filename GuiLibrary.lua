local lib = {}

lib["CreateWindow"] = function(title)
	local library = Instance.new("ScreenGui")
	local main = Instance.new("Frame")
	local maincorner = Instance.new("UICorner")
	local mainlistlayout = Instance.new("UIListLayout")
	local sidebar = Instance.new("Frame")
	local sidebarlayout = Instance.new("UIListLayout")
	local sidebartitle = Instance.new("TextLabel")
	local sidebartitlepadding = Instance.new("UIPadding")
	local sidebartitleaccent = Instance.new("Frame")
	local sidebarlist = Instance.new("Frame")
	local sidebarlistlayout = Instance.new("UIListLayout")
	local sidebarlistpadding = Instance.new("UIPadding")
	local mainaccent = Instance.new("Frame")
	
	library.Name = "library"
	library.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
	library.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	main.Name = "main"
	main.Parent = library
	main.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
	main.Position = UDim2.new(0.34186849, 0, 0.321472406, 0)
	main.Size = UDim2.new(0, 479, 0, 291)

	maincorner.CornerRadius = UDim.new(0, 12)
	maincorner.Name = "maincorner"
	maincorner.Parent = main

	mainlistlayout.Name = "mainlistlayout"
	mainlistlayout.Parent = main
	mainlistlayout.FillDirection = Enum.FillDirection.Horizontal
	mainlistlayout.SortOrder = Enum.SortOrder.LayoutOrder
	mainlistlayout.VerticalAlignment = Enum.VerticalAlignment.Bottom

	sidebar.Name = "sidebar"
	sidebar.Parent = main
	sidebar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	sidebar.BackgroundTransparency = 1.000
	sidebar.Size = UDim2.new(0, 115, 0, 291)

	sidebarlayout.Name = "sidebarlayout"
	sidebarlayout.Parent = sidebar
	sidebarlayout.SortOrder = Enum.SortOrder.LayoutOrder

	sidebartitle.Name = "sidebartitle"
	sidebartitle.Parent = sidebar
	sidebartitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	sidebartitle.BackgroundTransparency = 1.000
	sidebartitle.Size = UDim2.new(0, 479, 0, 35)
	sidebartitle.Font = Enum.Font.Code
	sidebartitle.Text = title
	sidebartitle.TextColor3 = Color3.fromRGB(255, 255, 255)
	sidebartitle.TextSize = 17.000
	sidebartitle.TextStrokeTransparency = 0.000
	sidebartitle.TextXAlignment = Enum.TextXAlignment.Left

	sidebartitlepadding.Name = "sidebartitlepadding"
	sidebartitlepadding.Parent = sidebartitle
	sidebartitlepadding.PaddingLeft = UDim.new(0, 10)

	sidebartitleaccent.Name = "sidebartitleaccent"
	sidebartitleaccent.Parent = sidebartitle
	sidebartitleaccent.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	sidebartitleaccent.BorderSizePixel = 0
	sidebartitleaccent.Position = UDim2.new(-0.0221766494, 0, 0.977417886, 0)
	sidebartitleaccent.Size = UDim2.new(0, 479, 0, 1)

	sidebarlist.Name = "sidebarlist"
	sidebarlist.Parent = sidebar
	sidebarlist.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	sidebarlist.BackgroundTransparency = 1.000
	sidebarlist.Position = UDim2.new(0, 0, 0.120274916, 0)
	sidebarlist.Size = UDim2.new(0, 115, 0, 256)

	sidebarlistlayout.Name = "sidebarlistlayout"
	sidebarlistlayout.Parent = sidebarlist
	sidebarlistlayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
	sidebarlistlayout.SortOrder = Enum.SortOrder.LayoutOrder
	
	sidebarlistpadding.Name = "sidebarlistpadding"
	sidebarlistpadding.Parent = sidebarlist
	sidebarlistpadding.PaddingTop = UDim.new(0, 7)

	mainaccent.Name = "mainaccent"
	mainaccent.Parent = main
	mainaccent.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	mainaccent.BorderSizePixel = 0
	mainaccent.Position = UDim2.new(0.240083501, 0, 0.120274916, 0)
	mainaccent.Size = UDim2.new(0, 1, 0, 256)
	
	local tab_button = {}
	
	tab_button["CreateTab"] = function(name)
		local tabbutton = Instance.new("Frame")
		local tabbuttoncorner = Instance.new("UICorner")
		local tabbuttontitle = Instance.new("TextLabel")
		local tabbuttontitlepadding = Instance.new("UIPadding")
		local tabbutonmain = Instance.new("TextButton")
		
		local tabdisplay = Instance.new("Frame")
		local tab = Instance.new("Frame")
		local tabcorner = Instance.new("UICorner")
		local tablist = Instance.new("ScrollingFrame")
		local tablistlayout = Instance.new("UIListLayout")
		
		local tablistpadding = Instance.new("UIPadding")
		local tablisttitle = Instance.new("TextLabel")
		local tablisttitleaccent = Instance.new("Frame")
		
		tabbutton.Name = "tabbutton"
		tabbutton.Parent = sidebarlist
		tabbutton.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
		tabbutton.Position = UDim2.new(0.0652173907, 0, 0, 0)
		tabbutton.Size = UDim2.new(0, 100, 0, 30)

		tabbuttoncorner.CornerRadius = UDim.new(0, 4)
		tabbuttoncorner.Name = "tabbuttoncorner"
		tabbuttoncorner.Parent = tabbutton

		tabbuttontitle.Name = "tabbuttontitle"
		tabbuttontitle.Parent = tabbutton
		tabbuttontitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		tabbuttontitle.BackgroundTransparency = 1.000
		tabbuttontitle.Size = UDim2.new(1, 0, 1, 0)
		tabbuttontitle.Font = Enum.Font.Code
		tabbuttontitle.Text = name
		tabbuttontitle.TextColor3 = Color3.fromRGB(255, 255, 255)
		tabbuttontitle.TextSize = 12.000
		tabbuttontitle.TextStrokeTransparency = 0.000
		tabbuttontitle.TextXAlignment = Enum.TextXAlignment.Left

		tabbuttontitlepadding.Name = "tabbuttontitlepadding"
		tabbuttontitlepadding.Parent = tabbuttontitle
		tabbuttontitlepadding.PaddingLeft = UDim.new(0, 10)
		
		local open = false
		
		tab.Name = name
		tab.Parent = tabdisplay
		tab.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
		tab.Position = UDim2.new(0.0247933883, 0, 0.02734375, 0)
		tab.Size = UDim2.new(0, 343, 0, 240)
		tab.Visible = false
		
		local tabdisplaypagelayout = Instance.new("UIPageLayout")
		
		tabdisplaypagelayout.Parent = tabdisplay
		tabdisplaypagelayout.Name = "cool"
		tabdisplaypagelayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
		
		tabbutonmain.Name = "tabbutonmain"
		tabbutonmain.Parent = tabbutton
		tabbutonmain.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		tabbutonmain.BackgroundTransparency = 1.000
		tabbutonmain.Size = UDim2.new(1, 0, 1, 0)
		tabbutonmain.Font = Enum.Font.SourceSans
		tabbutonmain.Text = ""
		tabbutonmain.TextColor3 = Color3.fromRGB(0, 0, 0)
		tabbutonmain.TextSize = 14.000
		tabbutonmain.MouseButton1Click:Connect(function()
			if tab.Name == name then
				if open == false then
					open = true
					tab.Visible = true
				elseif open == true then
					open = false
					tab.Visible = false
				end
			end
		end)

		tabdisplay.Name = "tabdisplay"
		tabdisplay.Parent = main
		tabdisplay.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		tabdisplay.BackgroundTransparency = 1.000
		tabdisplay.Position = UDim2.new(0.242171183, 0, 0.120274916, 0)
		tabdisplay.Size = UDim2.new(0, 363, 0, 256)

		tabcorner.CornerRadius = UDim.new(0, 10)
		tabcorner.Name = "tabcorner"
		tabcorner.Parent = tab

		tablist.Name = "tablist"
		tablist.Parent = tab
		tablist.Active = true
		tablist.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		tablist.BackgroundTransparency = 1.000
		tablist.BorderSizePixel = 0
		tablist.Position = UDim2.new(0, 0, 0.162499994, 0)
		tablist.Size = UDim2.new(0, 343, 0, 201)
		tablist.ScrollBarThickness = 1

		tablistlayout.Name = "tablistlayout"
		tablistlayout.Parent = tablist
		tablistlayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
		tablistlayout.SortOrder = Enum.SortOrder.LayoutOrder
		
		tablistpadding.Name = "tablistpadding"
		tablistpadding.Parent = tablist
		tablistpadding.PaddingTop = UDim.new(0, 15)

		tablisttitle.Name = "tablisttitle"
		tablisttitle.Parent = tab
		tablisttitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		tablisttitle.BackgroundTransparency = 1.000
		tablisttitle.Size = UDim2.new(0, 343, 0, 41)
		tablisttitle.Font = Enum.Font.Code
		tablisttitle.Text = name
		tablisttitle.TextColor3 = Color3.fromRGB(255, 255, 255)
		tablisttitle.TextSize = 19.000
		tablisttitle.TextStrokeTransparency = 0.000

		tablisttitleaccent.Name = "tablisttitleaccent"
		tablisttitleaccent.Parent = tablisttitle
		tablisttitleaccent.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
		tablisttitleaccent.BorderSizePixel = 0
		tablisttitleaccent.Position = UDim2.new(0, 0, 1, 0)
		tablisttitleaccent.Size = UDim2.new(0, 342, 0, 1)
		
		local button = {}
		
		button["CreateButton"] = function(text, callback)
			local callback = callback or function() end
			local button = Instance.new("Frame")
			local buttoncorner = Instance.new("UICorner")
			local buttonmain = Instance.new("TextButton")
			
			button.Name = "button"
			button.Parent = tablist
			button.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
			button.BorderColor3 = Color3.fromRGB(27, 42, 53)
			button.Position = UDim2.new(0.0320699699, 0, 0, 0)
			button.Size = UDim2.new(0, 321, 0, 30)

			buttoncorner.CornerRadius = UDim.new(0, 6)
			buttoncorner.Name = "buttoncorner"
			buttoncorner.Parent = button

			buttonmain.Name = "buttonmain"
			buttonmain.Parent = button
			buttonmain.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			buttonmain.BackgroundTransparency = 1.000
			buttonmain.Size = UDim2.new(1, 0, 1, 0)
			buttonmain.Font = Enum.Font.Code
			buttonmain.Text = text
			buttonmain.TextColor3 = Color3.fromRGB(255, 255, 255)
			buttonmain.TextSize = 14.000
			buttonmain.TextStrokeTransparency = 0.000
			buttonmain.MouseButton1Click:Connect(function()
				pcall(callback)
			end)
		end
		return button
	end
	return tab_button
end

return lib
