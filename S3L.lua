--!strict

local int = number

--[[

	S3 Simple UI Library

	by Nostalgia

--]]

local S3 = { }

local UI_Types = {

	["MainWindow"] = { __index = function() return 0 end };
	["Frame"] 	   = { __index = function() return 1 end };
	["Button"] 	   = { __index = function() return 2 end };
	["Text"] 	   = { __index = function() return 2 end };

}

local Event_Types = {

	["Click"]   = "click";
	["UnClick"] = "unclick";
	["Hover"]   = "hover";
	["UnHover"] = "unhover";

}

local Enums = {


	["Large"]  = UDim2.new(0.4, 0, 0.5, 0);
	["Medium"] = UDim2.new(0.325, 0, 0.4, 0);
	["Small"]  = UDim2.new(0.2, 0, 0.25, 0);

}


-- Creator

function S3:NewWindow( NAME: string ) => { }
	local NewWindow = UI_Types.MainWindow

	NewWindow["__name"] = NAME
	NewWindow["__type"] = "MainWindow"
	NewWindow["__real"] = Instance.new("ScreenGui")

	return setmetatable( { } , NewWindow )
end

function S3:NewFrame( NAME: string, OPTIONS: { } ) => { }
	local NewFrame = UI_Types.Frame

	NewFrame["__name"] = NAME
	NewFrame["__type"] = "Frame"
	NewFrame["__real"] = Instance.new("ImageLabel")
	NewFrame["__opt"] = OPTIONS

	return setmetatable( { } , NewFrame )
end

function S3.NewButton( NAME: string, OPTIONS: { } ) => { }
	local NewButton = UI_Types.Button

	NewButton["__name"]   = NAME
	NewButton["__type"]   = "Button"
	NewButton["__opt"] 	  = OPTIONS
	NewButton["__events"] = {
		--
		Event_Types.Click;
		Event_Types.UnClick;
		Event_Types.Hover;
		Event_Types.UnHover;
		--
	}

	return setmetatable( { } , NewButton )
end

function S3.NewLabel( NAME: string, OPTIONS: { } ) => { }
	local NewLabel = UI_Types.Text

	NewLabel["__name"] = NAME
	NewLabel["__type"] = "Text"
	NewLabel["__real"] = Instance.new("TextLabel")
	NewLabel["__opt"] = OPTIONS

	return setmetatable( { } , NewLabel )
end


-- Logic

function S3.Slice( UI: Instance )
	if ( pcall(function() UI.SliceCenter = Rect.new(16, 16, 240, 240) end) ) then
		UI.SliceCenter = Rect.new(16, 16, 240, 240)
		UI.
	end
end





return S3
