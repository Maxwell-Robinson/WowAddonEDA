local EventFrame = CreateFrame("Frame")
local combatTracker = CreateFrame("Frame")
local congratsEventFrame = CreateFrame("Frame")
-- local logoutCancel = CreateFrame("Frame")


-- Login Message
EventFrame:RegisterEvent("PLAYER_LOGIN")
EventFrame:SetScript("OnEvent", function(self,event,...)
		message('Why, hello there '.. UnitName("Player")..". I do believe this is the first time we've met. Nice to meet you! Welcome to my basic addon!")
end)

--ENTER/Exit combat
combatTracker:RegisterEvent("PLAYER_REGEN_DISABLED")
combatTracker:RegisterEvent("PLAYER_REGEN_ENABLED")
combatTracker:SetScript("OnEvent", function(self,event, ...)
    if event == "PLAYER_REGEN_DISABLED" then
        print("You are now in combat")
    end

    if event == "PLAYER_REGEN_ENABLED" then
        print("You have left combat")
    end
end)

-- LevelUp Message
congratsEventFrame:RegisterEvent("PLAYER_LEVEL_UP")
congratsEventFrame:SetScript("OnEvent",function(self, event, ...)
		local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9 = ...
		print('You have reached level ' .. arg1 .. ', ' .. UnitName("Player") .. '! You gained ' .. arg2 .. ' HP and ' .. arg3 .. ' Mana!')
end)



--EasterEgg
-- logoutCancel:RegisterEvent("LOGOUT_CANCEL")
-- logoutCancel:SetScript("OnEvent",function(self, event, ...)
--     if event === "LOGOUT_CANCEL" then
--     print("PHEW! I thought that you were going to leave me..")
--   end
-- end)
