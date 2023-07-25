local CombatLogMinion_EventFrame = CreateFrame("Frame");
local PlayerName, PlayerRealm = UnitName("player");

CombatLogMinion_EventFrame:RegisterEvent("CHALLENGE_MODE_START");
CombatLogMinion_EventFrame:RegisterEvent("CHALLENGE_MODE_COMPLETED");
CombatLogMinion_EventFrame:RegisterEvent("CHALLENGE_MODE_RESET");

CombatLogMinion_EventFrame:SetScript("OnEvent", function(_, event, __)
    --Start logging on mythic+ dungeon start
    if event == "CHALLENGE_MODE_START" then
        if (LoggingCombat()) then
            LoggingCombat(0);
        end

        LoggingCombat(1);
        SendChatMessage("Starting advanced combat logging!", "PARTY");
        SendChatMessage("Good look and have fun!", "PARTY");
    end

    --Stop logging on mythic+ dungeon completed
    if event == "CHALLENGE_MODE_COMPLETED" then
        LoggingCombat(0);
        SendChatMessage("Logging advanced combat has ended.", "PARTY")
    end

    --Stop logging on mythic+ dungeon reset
    if event == "CHALLENGE_MODE_RESET" then
        LoggingCombat(0);
        SendChatMessage("Logging advanced combat has ended.", "PARTY")
    end
end);
