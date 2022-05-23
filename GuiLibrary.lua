local lib = {}

lib["CreateWindow"] = function(title)
	local library = Instance.new("ScreenGui")
	local main = Instance.new("Frame")
	local mainlayout = Instance.new("UIListLayout")
	local maintopbar = Instance.new("Frame")
	local maintopbar_title = Instance.new("TextLabel")
	local maintopbar_titlepadding = Instance.new("UIPadding")
	local mainaccent = Instance.new("Frame")
	local main_tabs = Instance.new("Frame")
	local main_tabslayout = Instance.new("UIListLayout")
	local mainaccent2 = Instance.new("Frame")
	local mainbottombar = Instance.new("Frame")
	local mainbottombar_cr = Instance.new("TextLabel")
	
	library.Name = "library"
	library.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
	library.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	main.Name = "main"
	main.Parent = library
	main.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
	main.Position = UDim2.new(0.121799305, 0, 0.119018406, 0)
	main.Size = UDim2.new(0, 147, 0, 116)

	mainlayout.Name = "mainlayout"
	mainlayout.Parent = main
	mainlayout.SortOrder = Enum.SortOrder.LayoutOrder

	maintopbar.Name = "maintopbar"
	maintopbar.Parent = main
	maintopbar.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
	maintopbar.BorderSizePixel = 0
	maintopbar.Size = UDim2.new(0, 147, 0, 35)

	maintopbar_title.Name = "maintopbar_title"
	maintopbar_title.Parent = maintopbar
	maintopbar_title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	maintopbar_title.BackgroundTransparency = 1.000
	maintopbar_title.Size = UDim2.new(1, 0, 1, 0)
	maintopbar_title.Font = Enum.Font.Arial
	maintopbar_title.Text = title or "Leefu"
	maintopbar_title.TextColor3 = Color3.fromRGB(255, 255, 255)
	maintopbar_title.TextSize = 17.000
	maintopbar_title.TextStrokeTransparency = 0.000
	maintopbar_title.TextXAlignment = Enum.TextXAlignment.Left

	maintopbar_titlepadding.Name = "maintopbar_titlepadding"
	maintopbar_titlepadding.Parent = maintopbar_title
	maintopbar_titlepadding.PaddingLeft = UDim.new(0, 10)

	mainaccent.Name = "mainaccent"
	mainaccent.Parent = main
	mainaccent.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
	mainaccent.BorderSizePixel = 0
	mainaccent.Size = UDim2.new(1, 0, 0, 1)

	main_tabs.Name = "main_tabs"
	main_tabs.Parent = main
	main_tabs.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	main_tabs.BackgroundTransparency = 1.000
	main_tabs.Position = UDim2.new(0, 0, 0.120805368, 0)
	main_tabs.Size = UDim2.new(0, 147, 0, 60)

	main_tabslayout.Name = "main_tabslayout"
	main_tabslayout.Parent = main_tabs
	main_tabslayout.SortOrder = Enum.SortOrder.LayoutOrder
	
	mainaccent2.Name = "mainaccent2"
	mainaccent2.Parent = main
	mainaccent2.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
	mainaccent2.BorderSizePixel = 0
	mainaccent2.Size = UDim2.new(1, 0, 0, 1)

	mainbottombar.Name = "mainbottombar"
	mainbottombar.Parent = main
	mainbottombar.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
	mainbottombar.BorderSizePixel = 0
	mainbottombar.Position = UDim2.new(0, 0, 0.813559294, 0)
	mainbottombar.Size = UDim2.new(0, 147, 0, 22)

	mainbottombar_cr.Name = "mainbottombar_cr"
	mainbottombar_cr.Parent = mainbottombar
	mainbottombar_cr.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	mainbottombar_cr.BackgroundTransparency = 1.000
	mainbottombar_cr.Position = UDim2.new(0, 0, -0.0454545468, 0)
	mainbottombar_cr.Size = UDim2.new(1, 0, 1, 0)
	mainbottombar_cr.Font = Enum.Font.Arial
	mainbottombar_cr.Text = "© 2022 Blinx Industries"
	mainbottombar_cr.TextColor3 = Color3.fromRGB(83, 83, 83)
	mainbottombar_cr.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
	
	local tab_button = {}
	
	tab_button["CreateTab"] = function(TabTitle)
		local tabbutton = Instance.new("Frame")
		local tabbutton_title = Instance.new("TextLabel")
		local tabbutton_titlepadding = Instance.new("UIPadding")
		local tabbutton_main = Instance.new("TextButton")
		local tabs = Instance.new("Frame")
		local tab = Instance.new("Frame")
		local tab_layout = Instance.new("UIListLayout")
		local tab_topbar = Instance.new("Frame")
		local tab_topbartitle = Instance.new("TextLabel")
		local tab_topbartitlepadding = Instance.new("UIPadding")
		local tabaccent = Instance.new("Frame")
		local tablist = Instance.new("Frame")
		local tablist_layout = Instance.new("UIListLayout")
		
		tabbutton.Name = "tabbutton"
		tabbutton.Parent = main_tabs
		tabbutton.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
		tabbutton.BorderSizePixel = 0
		tabbutton.Size = UDim2.new(1, 0, 0, 30)

		tabbutton_title.Name = "tabbutton_title"
		tabbutton_title.Parent = tabbutton
		tabbutton_title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		tabbutton_title.BackgroundTransparency = 1.000
		tabbutton_title.Size = UDim2.new(0.897959173, 0, 1, 0)
		tabbutton_title.Font = Enum.Font.Arial
		tabbutton_title.Text = TabTitle
		tabbutton_title.TextColor3 = Color3.fromRGB(206, 206, 206)
		tabbutton_title.TextSize = 15.000
		tabbutton_title.TextStrokeTransparency = 0.000
		tabbutton_title.TextXAlignment = Enum.TextXAlignment.Left

		tabbutton_titlepadding.Name = "tabbutton_titlepadding"
		tabbutton_titlepadding.Parent = tabbutton_title
		tabbutton_titlepadding.PaddingLeft = UDim.new(0, 10)

		tabbutton_main.Name = "tabbutton_main"
		tabbutton_main.Parent = tabbutton
		tabbutton_main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		tabbutton_main.BackgroundTransparency = 1.000
		tabbutton_main.Size = UDim2.new(1, 0, 1, 0)
		tabbutton_main.Font = Enum.Font.SourceSans
		tabbutton_main.Text = ""
		tabbutton_main.TextColor3 = Color3.fromRGB(0, 0, 0)
		tabbutton_main.TextSize = 14.000
		tabbutton_main.MouseButton1Click:Connect(function()
			local open = true
			if tab.Name == TabTitle then
				if open == true then
					open = false
					tab.Visible = false
				elseif open == false then
					open = true
					tab.Visible = true
				end 
			end
		end)

		tabs.Name = "tabs"
		tabs.Parent = library
		tabs.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		tabs.BackgroundTransparency = 1.000
		tabs.Position = UDim2.new(0.230449826, 0, 0.120245397, 0)
		tabs.Size = UDim2.new(0, 952, 0, 496)

		tab.Name = TabTitle
		tab.Parent = tabs
		tab.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
		tab.Size = UDim2.new(0, 147, 0, 96)

		tab_layout.Name = "tab_layout"
		tab_layout.Parent = tab

		tab_topbar.Name = "tab_topbar"
		tab_topbar.Parent = tab
		tab_topbar.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
		tab_topbar.BorderSizePixel = 0
		tab_topbar.Size = UDim2.new(0, 147, 0, 35)

		tab_topbartitle.Name = "tab_topbartitle"
		tab_topbartitle.Parent = tab_topbar
		tab_topbartitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		tab_topbartitle.BackgroundTransparency = 1.000
		tab_topbartitle.Size = UDim2.new(1, 0, 1, 0)
		tab_topbartitle.Font = Enum.Font.Arial
		tab_topbartitle.Text = TabTitle
		tab_topbartitle.TextColor3 = Color3.fromRGB(255, 255, 255)
		tab_topbartitle.TextSize = 17.000
		tab_topbartitle.TextXAlignment = Enum.TextXAlignment.Left

		tab_topbartitlepadding.Name = "tab_topbartitlepadding"
		tab_topbartitlepadding.Parent = tab_topbartitle
		tab_topbartitlepadding.PaddingLeft = UDim.new(0, 10)

		tabaccent.Name = "tabaccent"
		tabaccent.Parent = tab
		tabaccent.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
		tabaccent.BorderSizePixel = 0
		tabaccent.Size = UDim2.new(1, 0, 0, 1)

		tablist.Name = "tablist"
		tablist.Parent = tab
		tablist.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		tablist.BackgroundTransparency = 1.000
		tablist.Position = UDim2.new(0, 0, 0.307692319, 0)
		tablist.Size = UDim2.new(0, 147, 0, 60)

		tablist_layout.Name = "tablist_layout"
		tablist_layout.Parent = tablist
		tablist_layout.SortOrder = Enum.SortOrder.LayoutOrder
		
		local button = {}
		
		button["CreateButton"] = function(text, callback)
			local callback = callback or function() end
			local button = Instance.new("Frame")
			local button_title = Instance.new("TextLabel")
			local button_titlepadding = Instance.new("UIPadding")
			local button_main = Instance.new("TextButton")
			
			button.Name = "button"
			button.Parent = tablist
			button.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
			button.BorderSizePixel = 0
			button.Size = UDim2.new(0, 147, 0, 30)

			button_title.Name = "button_title"
			button_title.Parent = button
			button_title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			button_title.BackgroundTransparency = 1.000
			button_title.Size = UDim2.new(0.897959173, 0, 1, 0)
			button_title.Font = Enum.Font.Arial
			button_title.Text = text
			button_title.TextColor3 = Color3.fromRGB(206, 206, 206)
			button_title.TextSize = 15.000
			button_title.TextStrokeTransparency = 0.000
			button_title.TextXAlignment = Enum.TextXAlignment.Left

			button_titlepadding.Name = "button_titlepadding"
			button_titlepadding.Parent = button_title
			button_titlepadding.PaddingLeft = UDim.new(0, 10)

			button_main.Name = "button_main"
			button_main.Parent = button
			button_main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			button_main.BackgroundTransparency = 1.000
			button_main.Size = UDim2.new(1, 0, 1, 0)
			button_main.Font = Enum.Font.SourceSans
			button_main.Text = ""
			button_main.TextColor3 = Color3.fromRGB(0, 0, 0)
			button_main.TextSize = 14.000
			button_main.MouseButton1Click:Connect(function()
				pcall(callback)
			end)
		end
		return button
	end
	return tab_button
end

return lib
