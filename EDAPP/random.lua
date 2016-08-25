local scale = 1.5

local frame = CreateFrame("Frame","Classbar Frame",UIParent)
frame:SetWidth((#CLASS_SORT_ORDER*40)+20)
frame:SetHeight(40+20)
frame:ClearAllPoints()
frame:SetBackdrop(StaticPopup1:GetBackdrop())
frame:SetPoint("CENTER",UIParent)
frame:SetScale(scale)
frame:Show()

local prevPos = false

local function myButton(pos,name)

   local button = CreateFrame("Button", "LOL"..name.."LOL", UIParent, "ActionButtonTemplate")
   button:SetScale(scale)
   if not prevPos then button:SetPoint("TOPLEFT",frame,"TOPLEFT",13,-13)
   else button:SetPoint("LEFT",prevPos,"RIGHT",4,0)
   end
   _G[button:GetName().."Icon"]:SetTexture("Interface\\GLUES\\CHARACTERCREATE\\UI-CHARACTERCREATE-CLASSES")
   local class = CLASS_SORT_ORDER[pos]
   local coords = CLASS_ICON_TCOORDS[class]
   _G[button:GetName().."Icon"]:SetTexCoord(unpack(coords))
   button:SetScript("OnClick", function()
         print("LOL "..class,"SAY")
   end )
   prevPos = "LOL"..name.."LOL"
end

for k,v in pairs(CLASS_SORT_ORDER) do
   myButton(k,v)
end
