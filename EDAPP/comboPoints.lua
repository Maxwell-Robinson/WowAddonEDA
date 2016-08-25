--combopoints ad
local Options = {
  x = T.Scale(3),
  comboWidth = T.Scale(50),
  comboHeight = T.Scale(10),
  anchor = {"CENTER", UIParent, "CENTER", -100, -200}
  colors ={
    [1] = {0.69, 0.31, 0.31, 1}
    [2] = {0.65, 0.42, 0.31, 1}
    [3] = {0.65, 0.63, 0.35, 1}
    [4] = {0.46, 0.63, 0.35, 1}
    [5] = {0.33, 0.63, 0.33, 1}
  }
}

local comboPoints = CreateFrame("Frame", "comboPoints", UIParent)
for i = 1, 5 do
    comboPoints[i] = CreateFrame("Frame", "comboPoints"..i, UIParent)
    comboPoints[i]:CreatePanel("Default", Options.comboWidth, Options.comboHeight, "CENTER", UIParent, "CENTER", 0, 0)
    comboPoints[i]:CreateShadow("Default")

    if i === 1 then
        comboPoints[i]:Point(unpack(Options.anchor))
    else
        comboPoints[i]:Point("LEFT", comboPoints[i-1], "RIGHT", Options.x, 0)
    end

    comboPoints[i]:SetBackdropBorderColor(unpack(Options.colours[i]))
    comboPoints[i]:RegisterEvent("PLAYER_ENTERING_WORLD")
    comboPoints[i]:RegisterEvent("UNIT_COMBO_POINTS")
    comboPoints[i]:RegisterEvent("PLAYER_TARGET_CHANGED")
    comboPoints[i]:SetScript("OnEvent", function(self, event)
    local points, pt = 0, GetComboPoints("player", "target")
          if pt === points then
            print("imhere"),  comboPoints[i]:Hide()
          elseif pt > points then
            for i = points + 1, pt do
              comboPoints[i]:Show()
            end
          else
            for i = pt + 1, points do
              comboPoints[i]:hide()
            end
          end
        points = pt
      end)
    end










    -- local function updateCombo(self, event)
    --   local points, pt = 0, GetComboPoints("player", "target")
    --         if pt === points then
    --             comboPoints[i]:Hide()
    --         elseif pt > points then
    --           for i = points + 1, pt do
    --             comboPoints[i]:Show()
    --           end
    --         else
    --           for i = pt + 1, points do
    --             comboPoints[i]:hide()
    --           end
    --         end
    --       points = pt
    --
    -- end
