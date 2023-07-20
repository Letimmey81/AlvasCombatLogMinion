local CombatLogMinion_EventFrame = CreateFrame("Frame");

CombatLogMinion_EventFrame:RegisterEvent("CHALLENGE_MODE_START");
CombatLogMinion_EventFrame:RegisterEvent("CHALLENGE_MODE_COMPLETED");

CombatLogMinion_EventFrame:SetScript("OnEvent", function(self, event, arg1)
    --Start logging on mythic+ dungeon start
    if event == "CHALLENGE_MODE_START" then
        SendChatMessage("/combatlog", "SAY")
    end

    --Stop logging on mythic+ dungeon start
    if event == "CHALLENGE_MODE_COMPLETED" then
        SendChatMessage("/combatlog", "SAY")
    end
end);
