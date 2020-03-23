if not _G.THREATLIB_LOAD_MODULES then return end -- only load if LibThreatClassic2.lua allows it
if not LibStub then return end
local ThreatLib, MINOR = LibStub("LibThreatClassic2", true)
if not ThreatLib then return end

local RAZORGORE_ID = 12435
local MIND_EXHAUSTION_ID = 28727

ThreatLib:GetModule("NPCCore-r"..MINOR):RegisterModule(RAZORGORE_ID, function(RazorgoreTheUntamed)
	function RazorgoreTheUntamed:Init()
        self:RegisterCombatant(RAZORGORE_ID, true)
        self:RegisterBuffGainsHandler(UnitGUID("player"), MIND_EXHAUSTION
    _ID, self.MindExhaustion)
	end

	function RazorgoreTheUntamed:MindExhaustion(sourceGUID, unitId)
        self:ModifyThreat(sourceGUID, unitId, 1.0, 25000)
	end
end)
