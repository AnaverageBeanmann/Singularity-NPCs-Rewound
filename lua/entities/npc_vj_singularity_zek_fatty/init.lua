AddCSLuaFile("shared.lua")
include('shared.lua')
--------------------
ENT.Model = {"models/vj_singularity/mutants/zek_fatty.mdl"}
-- ENT.StartHealth = 600
ENT.StartHealth = 2000
ENT.TurningSpeed = 10
ENT.VJTag_ID_Boss = true -- Is this a huge monster?
--------------------
ENT.VJ_NPC_Class = {"CLASS_SINGULARITY"}
--------------------
ENT.BloodColor = "Red"
ENT.CanFlinch = 2
ENT.FlinchChance = 3
-- ENT.NextFlinchTime = 6
ENT.AnimTbl_Flinch = {ACT_BIG_FLINCH}
--------------------
ENT.HasDeathAnimation = true
ENT.AnimTbl_Death = {ACT_DIESIMPLE}
ENT.DeathAnimationDecreaseLengthAmount = -1
ENT.DeathCorpseEntityClass = "prop_vj_animatable"
ENT.WaitBeforeDeathTime = 5
--------------------
ENT.AnimTbl_MeleeAttack = ACT_MELEE_ATTACK1
-- ENT.MeleeAttackAnimationFaceEnemy = false
ENT.MeleeAttackDistance = 110
ENT.MeleeAttackAngleRadius = 50
ENT.MeleeAttackDamageDistance = 120
ENT.MeleeAttackDamageAngleRadius = 100
ENT.TimeUntilMeleeAttackDamage = false
-- ENT.NextMeleeAttackTime = 1
-- ENT.NextMeleeAttackTime_DoRand = 2.5
-- ENT.MeleeAttackAnimationFaceEnemy = false
-- ENT.MeleeAttackAnimationDecreaseLengthAmount = 0.5
-- ENT.MeleeAttackDamageDistance = 50
-- ENT.MeleeAttackDamageAngleRadius = 15
--------------------
ENT.DisableFootStepSoundTimer = true
ENT.SoundTbl_FootStep = {
	"vj_singularity/shared/footstepBareFast05.ogg",
	"vj_singularity/shared/footstepBareFast06.ogg",
	"vj_singularity/shared/footstepBareFast07.ogg",
	"vj_singularity/shared/footstepBareFast08.ogg"
}
-- ENT.SoundTbl_Breath = {
	-- "vj_singularity/mutants/zeks/fatty/jellyBellyBreath01.ogg",
	-- "vj_singularity/mutants/zeks/fatty/jellyBellyBreath02.ogg",
	-- "vj_singularity/mutants/zeks/fatty/jellyBellyBreath03.ogg",
	-- "vj_singularity/mutants/zeks/fatty/jellyBellyBreath04.ogg",
	-- "vj_singularity/mutants/zeks/fatty/jellyBellyBreath05.ogg",
	-- "vj_singularity/mutants/zeks/fatty/jellyBellyBreath06.ogg",
	-- "vj_singularity/mutants/zeks/fatty/jellyBellyBreath07.ogg",
	-- "vj_singularity/mutants/zeks/fatty/jellyBellyBreath08.ogg",
	-- "vj_singularity/mutants/zeks/fatty/jellyBellyBreatheExhale01.ogg",
	-- "vj_singularity/mutants/zeks/fatty/jellyBellyBreatheExhale02.ogg",
	-- "vj_singularity/mutants/zeks/fatty/jellyBellyBreatheExhale03.ogg",
	-- "vj_singularity/mutants/zeks/fatty/jellyBellyBreatheExhale04.ogg",
	-- "vj_singularity/mutants/zeks/fatty/jellyBellyBreatheInhale01.ogg",
	-- "vj_singularity/mutants/zeks/fatty/jellyBellyBreatheInhale02.ogg",
	-- "vj_singularity/mutants/zeks/fatty/jellyBellyBreatheInhale03.ogg",
	-- "vj_singularity/mutants/zeks/fatty/jellyBellyBreatheInhale04.ogg"
-- }
ENT.SoundTbl_Idle = {
	"vj_singularity/mutants/zeks/fatty/jellyBellyGroan05.ogg",
	"vj_singularity/mutants/zeks/fatty/jellyBellyGroan06.ogg",
	"vj_singularity/mutants/zeks/fatty/jellyBellyGroan08.ogg",
	"vj_singularity/mutants/zeks/fatty/jellyBellyGroan09.ogg",
	"vj_singularity/mutants/zeks/fatty/jellyBellyGroan10.ogg",
	"vj_singularity/mutants/zeks/fatty/jellyBellyGroan11.ogg",
	"vj_singularity/mutants/zeks/fatty/jellyBellyGurgle01.ogg",
	"vj_singularity/mutants/zeks/fatty/jellyBellyGurgle10.ogg",
	"vj_singularity/mutants/zeks/fatty/jellyBellyGurgle11.ogg",
	"vj_singularity/mutants/zeks/fatty/jellyBellyBreath01.ogg",
	"vj_singularity/mutants/zeks/fatty/jellyBellyBreath02.ogg",
	"vj_singularity/mutants/zeks/fatty/jellyBellyBreath03.ogg",
	"vj_singularity/mutants/zeks/fatty/jellyBellyBreath04.ogg",
	"vj_singularity/mutants/zeks/fatty/jellyBellyBreath05.ogg",
	"vj_singularity/mutants/zeks/fatty/jellyBellyBreath06.ogg",
	"vj_singularity/mutants/zeks/fatty/jellyBellyBreath07.ogg",
	"vj_singularity/mutants/zeks/fatty/jellyBellyBreath08.ogg"
}
ENT.SoundTbl_Alert = {
	"vj_singularity/mutants/zeks/fatty/jellybellygurgle01.ogg",
	"vj_singularity/mutants/zeks/fatty/jellybellygurgle10.ogg",
	"vj_singularity/mutants/zeks/fatty/jellybellygurgle11.ogg"
}
ENT.SoundTbl_KillMe = {
	"vj_singularity/mutants/zeks/fatty/jellyBellySayHelpMe01.ogg",
	"vj_singularity/mutants/zeks/fatty/jellyBellySayHelpMe02.ogg",
	"vj_singularity/mutants/zeks/fatty/jellyBellySayKillMe01.ogg",
	"vj_singularity/mutants/zeks/fatty/jellyBellySayKillMe02.ogg",
	"vj_singularity/mutants/zeks/fatty/jellyBellySayKillMe03.ogg",
	"vj_singularity/mutants/zeks/fatty/jellyBellySayKillMe04.ogg",
	"vj_singularity/mutants/zeks/fatty/jellyBellySayKillMe05.ogg",
	"vj_singularity/mutants/zeks/fatty/jellyBellySayKillMe06.ogg",
	"vj_singularity/mutants/zeks/fatty/jellyBellySayKillMe07.ogg"
}
ENT.SoundTbl_BeforeMeleeAttack = {
	"vj_singularity/mutants/zeks/fatty/jellybellyattackmeleeshort01.ogg",
	"vj_singularity/mutants/zeks/fatty/jellybellyattackmeleeshort02.ogg",
	"vj_singularity/mutants/zeks/fatty/jellybellyattackmeleeshort03.ogg",
	"vj_singularity/mutants/zeks/fatty/jellybellyattackmeleeshort04.ogg",
	"vj_singularity/mutants/zeks/fatty/jellybellyattackmeleeshort05.ogg",
	"vj_singularity/mutants/zeks/fatty/jellybellyattackmeleeshort06.ogg",
	"vj_singularity/mutants/zeks/fatty/jellybellyattackmeleeshort07.ogg",
	"vj_singularity/mutants/zeks/fatty/jellybellyattackmeleeshort08.ogg"
}
ENT.SoundTbl_MeleeAttackMiss = {
	"npc/zombie/claw_miss1.wav",
	"npc/zombie/claw_miss2.wav"	
}
ENT.SoundTbl_Pain = {
	"vj_singularity/mutants/zeks/fatty/jellyBellyPain01.ogg",
	"vj_singularity/mutants/zeks/fatty/jellyBellyPain02.ogg",
	"vj_singularity/mutants/zeks/fatty/jellyBellyPain03.ogg",
	"vj_singularity/mutants/zeks/fatty/jellyBellyPain04.ogg"
}
ENT.SoundTbl_Death = {
	"vj_singularity/mutants/zeks/fatty/jellyBellyDeath01.ogg",
	"vj_singularity/mutants/zeks/fatty/jellyBellyDeath02.ogg",
	"vj_singularity/mutants/zeks/fatty/jellyBellyDeath03.ogg"
}
-- ENT.NextSoundTime_Pain = VJ.SET(3,10)
-- ENT.MeleeAttackMissSoundPitch = VJ.SET(40, 50)
ENT.NextSoundTime_Pain = VJ_Set(3,10)
ENT.MeleeAttackMissSoundPitch = VJ_Set(40, 50)
--------------------
function ENT:Init()
	self:SetCollisionBounds(Vector(20, 20, 90), Vector(-20, -20, 0))
	self.SoundTbl_CombatIdle = self.SoundTbl_Idle
end
--------------------
function ENT:OnInput(key, activator, caller, data)
	if key == "step" then
		self:FootStepSoundCode()
		if math.random(1,2) == 1 then
			VJ_EmitSound(self,"player/footsteps/charger/run/charger_run_left_0"..math.random(1,4)..".wav",self.FootStepSoundLevel,self:VJ_DecideSoundPitch(self.FootStepPitch.a,self.FootStepPitch.b))
		else
			VJ_EmitSound(self,"player/footsteps/charger/run/charger_run_right_0"..math.random(1,4)..".wav",self.FootStepSoundLevel,self:VJ_DecideSoundPitch(self.FootStepPitch.a,self.FootStepPitch.b))
		end
	end
	if key == "slam" then
	
		-- effects.BeamRingPoint(self:GetPos() + self:GetForward() * 40 + self:GetRight() * 18, 1, 2, 100, 16, 0, color, beamEffectTbl)
		VJ_EmitSound(self,"physics/concrete/boulder_impact_hard"..math.random(1,4)..".wav",80,100)
		util.ScreenShake(self:GetPos() + self:GetForward() * 40 + self:GetRight() * 18,800,40,1,200)
		local effectdata = EffectData()
		effectdata:SetOrigin(self:GetPos() + self:GetForward() * 40 + self:GetRight() * 18)
		effectdata:SetScale( 100 )
		util.Effect( "ThumperDust", effectdata )
	end
	if key == "melee" then

		if self:GetSequence() == 9 then -- slam attack
			self.MeleeAttackDamage = 80
			self.MeleeAttackDamageType = DMG_CRUSH
			self.HasMeleeAttackKnockBack = false
			self.SoundTbl_MeleeAttack = {
				"player/tank/hit/pound_victim_1.wav",
				"player/tank/hit/pound_victim_2.wav"
			}
			self.HasMeleeAttackMissSounds = false
		else
			if self:GetSequence() == 8 then -- backhand
				self.MeleeAttackDamage = 55
			else
				self.MeleeAttackDamage = 30
			end
			self.MeleeAttackDamageType = DMG_CLUB
			self.HasMeleeAttackKnockBack = true
			self.SoundTbl_MeleeAttack = {"player/tank/hit/hulk_punch_1.wav"}
			self.HasMeleeAttackMissSounds = true
		end

		-- 13
		-- PrintMessage(HUD_PRINTCENTER, "attack sequence is "..self:GetSequence().."")
		-- self.MeleeAttackDamageDistance = self:GetSequence() == 13 and 40 or 60 -- reduce the damage distance for the bite attack
		-- self.MeleeAttackDamage = self:GetSequence() == 13 and 9999 or 1

		-- 13 = bite attack
		-- 11, 12 = standing swipe
		-- 14, 15 = sprint attacks
		-- 16 = leap attack
		-- 36, 35 = crawling attacks

		-- if self:GetSequence() == 13 || self:GetSequence() == 36 || self:GetSequence() == 35 then
			-- self.MeleeAttackDamage = 10
		-- elseif self:GetSequence() == 14 || self:GetSequence() == 15 || self:GetSequence() == 16 then
			-- self.MeleeAttackDamage = 20
		-- else
			-- self.MeleeAttackDamage = 15
		-- end

		-- if self:GetSequence() == 13 then
			-- self.SoundTbl_MeleeAttackMiss = {
				-- "vj_singularity/mutants/mutant/zombiebite01.ogg",
				-- "vj_singularity/mutants/mutant/zombiebite02.ogg"
			-- }
			-- self.SoundTbl_MeleeAttack = {
				-- "vj_singularity/mutants/mutant/zombiebite01.ogg",
				-- "vj_singularity/mutants/mutant/zombiebite02.ogg"
			-- }
		-- else
			-- self.SoundTbl_MeleeAttack = {
				-- "npc/zombie/claw_strike1.wav",
				-- "npc/zombie/claw_strike2.wav",
				-- "npc/zombie/claw_strike3.wav"
			-- }
			-- self.SoundTbl_MeleeAttackMiss = {
				-- "npc/zombie/claw_miss1.wav",
				-- "npc/zombie/claw_miss2.wav"	
			-- }
		-- end

		self:MeleeAttackCode()
	end
	if key == "breath_in" then
		VJ_EmitSound(self,"vj_singularity/mutants/zeks/fatty/jellybellybreatheinhale0"..math.random(1,4)..".ogg")
	end
	if key == "breath_out" then
		VJ_EmitSound(self,"vj_singularity/mutants/zeks/fatty/jellybellybreatheexhale0"..math.random(1,4)..".ogg")
	end
	if key == "resurrect" then
		VJ_EmitSound(self,"vo/k_lab/kl_ahhhh.wav")
	end
	if key == "death_groan" then
		local randgroan = math.random(1,3)
		if randgroan == 1 then
			VJ_EmitSound(self,"vj_singularity/mutants/zeks/fatty/jellybellygurgle01.ogg",self.DeathSoundLevel,self:VJ_DecideSoundPitch(self.DeathSoundPitch.a,self.DeathSoundPitch.b))
		elseif randgroan == 2 then
			VJ_EmitSound(self,"vj_singularity/mutants/zeks/fatty/jellybellygurgle10.ogg",self.DeathSoundLevel,self:VJ_DecideSoundPitch(self.DeathSoundPitch.a,self.DeathSoundPitch.b))
		else
			VJ_EmitSound(self,"vj_singularity/mutants/zeks/fatty/jellybellygurgle11.ogg",self.DeathSoundLevel,self:VJ_DecideSoundPitch(self.DeathSoundPitch.a,self.DeathSoundPitch.b))
		end
	end
	if key == "body" then
		-- VJ_EmitSound(self,"physics/body/body_medium_impact_hard"..math.random(1,6)..".wav")
				VJ_EmitSound(self,"physics/body/body_medium_impact_soft"..math.random(1,7)..".wav")
	end
	if key == "body_hard" then
		util.ScreenShake(self:GetPos() + self:GetForward() * 40 + self:GetRight() * 18,300,40,0.5,200)
		VJ_EmitSound(self,"player/pz/fall/bodyfall_largecreature.wav")
	end
	print("OnAcceptInput", key, activator, caller, data)
end
--------------------
function ENT:MeleeAttackKnockbackVelocity(hitEnt)

	if self:GetSequence() == 8 then -- backhand
		return self:GetForward() * 360 + self:GetUp() * 250
	else
		return self:GetForward() * 200 + self:GetUp() * 150
	end
end
--------------------
function ENT:OnFlinch(dmginfo, hitgroup, status)
	if status == "Execute" then
		if math.random(1,2) == 1 then
			VJ_EmitSound(self,"vj_singularity/mutants/zeks/fatty/jellybellygasp05.ogg",self.PainSoundLevel,self:VJ_DecideSoundPitch(self.PainSoundPitch.a,self.PainSoundPitch.b))
		else
			VJ_EmitSound(self,"vj_singularity/mutants/zeks/fatty/jellybellygasp07.ogg",self.PainSoundLevel,self:VJ_DecideSoundPitch(self.PainSoundPitch.a,self.PainSoundPitch.b))
		end
	end
end
--------------------
function ENT:OnCreateDeathCorpse(dmginfo,hitgroup,corpseEnt)
	-- this was taken from Cry of Fear Resurgence by Darkborn
    corpseEnt:SetMoveType(MOVETYPE_STEP)
    corpseEnt:ResetSequence(self:GetSequence())
    corpseEnt:SetCycle(1)
    corpseEnt:SetCollisionBounds(Vector(1, 1, 1), Vector(-1, -1, 0))
    corpseEnt:SetSolid(SOLID_NONE)
end
--------------------
function ENT:OnDeath(dmginfo,hitgroup,status)
	if status == "Initial" then
		self:AddFlags(FL_NOTARGET)
	end
end