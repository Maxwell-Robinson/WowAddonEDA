--Making The Box
local UIConfig = CreateFrame("Frame", "PPA_BuffFrame", UIParent, "BasicFrameTemplateWithInset");
UIConfig:SetSize(260, 360); --width, height
UIConfig:SetPoint("CENTER", UIParent, "CENTER"); --Point, relativeFrame, RelativePoint, xoffset, yoffset
--[[
  CreateFrame Arguments :
  1. The type of frame - "Frame"
  2. The global frame name - "PPA_BuffFrame"
  3. The Parent frame(Not a STRING!)
  4. A comma seperated LIST (String List) of XML templates to inherit from
    - im only using 1 XML Template -"BasicFrameTemplateWithInset"
]]

--TITLE TEXT
UIConfig.title = UIConfig:CreateFontString(nil, "OVERLAY")
UIConfig.title:SetFontObject("GameFontHighlight")
UIConfig.title:SetPoint("LEFT", UIConfig.TitleBg, "LEFT", 5, 0)
UIConfig.title:SetText("PPA Buff Options")

--SAVE BUTTON
UIConfig.saveButton = CreateFrame("Button", nil, UIConfig, "GameMenuButtonTemplate");
UIConfig.saveButton:SetPoint("CENTER", UIConfig, "TOP", 0, -70);
UIConfig.saveButton:SetSize(140, 40);
UIConfig.saveButton:SetText("Save");
UIConfig.saveButton:SetNormalFontObject("GameFontNormalLarge");
UIConfig.saveButton:SetHighlightFontObject("GameFontHighlightLarge");

--RESET BUTTON
UIConfig.resetButton = CreateFrame("Button", nil, UIConfig, "GameMenuButtonTemplate");
UIConfig.resetButton:SetPoint("TOP", UIConfig.saveButton, "BOTTOM", 0, -10);
UIConfig.resetButton:SetSize(140, 40);
UIConfig.resetButton:SetText("Reset");
UIConfig.resetButton:SetNormalFontObject("GameFontNormalLarge");
UIConfig.resetButton:SetHighlightFontObject("GameFontHighlightLarge");

--LOAD BUTTON
UIConfig.loadButton = CreateFrame("Button", nil, UIConfig, "GameMenuButtonTemplate");
UIConfig.loadButton:SetPoint("TOP", UIConfig.resetButton, "BOTTOM", 0, -10);
UIConfig.loadButton:SetSize(140, 40);
UIConfig.loadButton:SetText("Load");
UIConfig.loadButton:SetNormalFontObject("GameFontNormalLarge");
UIConfig.loadButton:SetHighlightFontObject("GameFontHighlightLarge");

--SLIDER
UIConfig.slider1 = CreateFrame("Slider", nil, UIConfig, "OptionsSliderTemplate");
UIConfig.slider1:SetPoint("TOP", UIConfig.loadButton, "BOTTOM", 0, -20);
UIConfig.slider1:SetMinMaxValues(1, 100)
UIConfig.slider1:SetValue(50);
UIConfig.slider1:SetValueStep(30);
UIConfig.slider1:SetObeyStepOnDrag(true)

--SLIDER 2
UIConfig.slider2 = CreateFrame("Slider", nil, UIConfig, "OptionsSliderTemplate");
UIConfig.slider2:SetPoint("TOP", UIConfig.slider1, "BOTTOM", 0, -20);
UIConfig.slider2:SetValueStep(1);
UIConfig.slider2:SetMinMaxValues(1, 100)
UIConfig.slider2:SetValue(40);

--checkButton

UIConfig.checkbtn1 = CreateFrame("CheckButton", nil, UIConfig, "UICheckButtonTemplate")
UIConfig.checkbtn1:SetPoint("TOPLEFT", UIConfig.slider2, "BOTTOMLEFT", -10, -20)
UIConfig.checkbtn1.text:SetText("My Check Button!")

-- checkButton2
UIConfig.checkbtn2 = CreateFrame("CheckButton", nil, UIConfig, "UICheckButtonTemplate")
UIConfig.checkbtn2:SetPoint("TOPLEFT", UIConfig.checkbtn1, "BOTTOMLEFT", 0, -5)
UIConfig.checkbtn2.text:SetText("Another Check Button!")
UIConfig.checkbtn2:SetChecked(true)
