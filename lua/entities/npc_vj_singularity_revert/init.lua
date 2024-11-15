AddCSLuaFile("shared.lua")
include('shared.lua')
--------------------
ENT.Model = {"models/vj_singularity/mutants/revert.mdl"}
ENT.StartHealth = 250
-- ENT.SightDistance = 50

-- ok here's how we're going to do it
-- set sight distance to like 200-400 or something
-- make it so it can't find enemies?
-- when it hears something make it start searching and wandering constantly
-- if it finds someone during that phase then it attacks
--------------------
ENT.VJ_NPC_Class = {"CLASS_SINGULARITY"}
ENT.InvestigateSoundDistance = 9999
--------------------
ENT.BloodColor = "Red"
--------------------
ENT.MeleeAttackDamage = 15
ENT.AnimTbl_MeleeAttack = ACT_MELEE_ATTACK1
ENT.MeleeAttackDistance = 110
ENT.MeleeAttackAngleRadius = 50
ENT.MeleeAttackDamageDistance = 60
ENT.MeleeAttackDamageAngleRadius = 100
ENT.TimeUntilMeleeAttackDamage = false
--------------------
ENT.DisableFootStepSoundTimer = true
ENT.SoundTbl_FootStep = {
	"vj_singularity/shared/footstepBareFast05.ogg",
	"vj_singularity/shared/footstepBareFast06.ogg",
	"vj_singularity/shared/footstepBareFast07.ogg",
	"vj_singularity/shared/footstepBareFast08.ogg"
}
ENT.SoundTbl_Alert = {
	"vj_singularity/mutants/revert/revertturnfast01.ogg",
	"vj_singularity/mutants/revert/revertturnfast02.ogg",
	"vj_singularity/mutants/revert/revertturnfast03.ogg"
}
ENT.SoundTbl_BeforeMeleeAttack = {
	"vj_singularity/mutants/revert/revertawaken01.ogg",
	"vj_singularity/mutants/revert/revertawaken02.ogg",
	"vj_singularity/mutants/revert/revertawaken03.ogg",
	"vj_singularity/mutants/revert/revertawaken04.ogg"
}
ENT.SoundTbl_MeleeAttack = {
	"npc/zombie/claw_strike1.wav",
	"npc/zombie/claw_strike2.wav",
	"npc/zombie/claw_strike3.wav"
}
ENT.SoundTbl_MeleeAttackMiss = {
	"npc/zombie/claw_miss1.wav",
	"npc/zombie/claw_miss2.wav"	
}
ENT.SoundTbl_Pain = {
	"vj_singularity/mutants/revert/revertalerted01.ogg",
	"vj_singularity/mutants/revert/revertalerted02.ogg",
	"vj_singularity/mutants/revert/revertalerted03.ogg",
	"vj_singularity/mutants/revert/revertalerted04.ogg"
}
ENT.SoundTbl_Death = {
	"vj_singularity/mutants/revert/revertvomit01.ogg",
	"vj_singularity/mutants/revert/revertvomit02.ogg",
	"vj_singularity/mutants/revert/revertvomit03.ogg",
	"vj_singularity/mutants/revert/revertvomit04.ogg"
}
-- ENT.NextSoundTime_Pain = VJ.SET(3,10)
-- ENT.MeleeAttackMissSoundPitch = VJ.SET(40, 50)
--------------------
ENT.Singularity_Revert_Blind = true
ENT.Singularity_Revert_Searching = false
--------------------
function ENT:Init()
	self:SetCollisionBounds(Vector(10, 10, 60), Vector(-10, -10, 0))
end
--------------------
function ENT:OnInput(key, activator, caller, data)
	if key == "step" then
		self:FootStepSoundCode()
	end
	if key == "land" then
		VJ_EmitSound(self,"player/pz/fall/bodyfall_largecreature.wav")
	end
	if key == "roar" then
	end
	if key == "melee" then
		self:MeleeAttackCode()
	end
	if key == "combo_check" then
		if self:GetSequence() == 11 then -- third strike
			self.AnimTbl_MeleeAttack = ACT_MELEE_ATTACK1
		else
			if
				self:GetEnemy() != nil &&
				self:Visible(self:GetEnemy())
			then
				if self:GetPos():Distance(self:GetEnemy():GetPos()) <= 200 then
					if self:GetSequence() == 9 then -- first strike
						self.AnimTbl_MeleeAttack = ACT_MELEE_ATTACK2
					elseif self:GetSequence() == 10 then -- second strike
						self.AnimTbl_MeleeAttack = ACT_RELOAD_FINISH
					end
					self.PlayingAttackAnimation = false
					self:StopAttacks(false)
					self.vACT_StopAttacks = false
				end
			end
		end
	end
	if key == "combo_reset" then
		self.AnimTbl_MeleeAttack = ACT_MELEE_ATTACK1
	end
	print("OnAcceptInput", key, activator, caller, data)
end
--------------------
function ENT:TranslateActivity(act)

	-- if self.Singularity_Mutant_WalkAtTarget then
		-- if act == ACT_RUN then
			-- return ACT_WALK_AIM
		-- end
	-- end

	-- if act == ACT_LAND && self:GetEnemy() != nil then
		-- return ACT_LEAP
	-- end

	return self.BaseClass.TranslateActivity(self, act)
end
--------------------
-- function ENT:OnInvestigate(ent)
	-- if !self.Singularity_Revert_Searching then
		-- self.Singularity_Revert_Searching = true
	-- end
-- end
--------------------