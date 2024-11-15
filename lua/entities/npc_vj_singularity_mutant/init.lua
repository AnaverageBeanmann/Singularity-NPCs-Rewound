AddCSLuaFile("shared.lua")
include('shared.lua')
--------------------
ENT.Model = {"models/vj_singularity/mutants/mutant.mdl"}
ENT.StartHealth = 150
--------------------
ENT.VJ_NPC_Class = {"CLASS_SINGULARITY"}
--------------------
ENT.BloodColor = "Red"
ENT.CanFlinch = 1
-- ENT.FlinchChance = 15
-- ENT.NextFlinchTime = 6
ENT.AnimTbl_Flinch = {ACT_FLINCH_CHEST, ACT_FLINCH_STOMACH}
ENT.HitGroupFlinching_Values = {
	{
		HitGroup = {HITGROUP_HEAD},
		Animation = {ACT_FLINCH_HEAD}
	},
	{
		HitGroup = {HITGROUP_CHEST},
		Animation = {ACT_FLINCH_CHEST}
	},
	{
		HitGroup = {HITGROUP_STOMACH},
		Animation = {ACT_FLINCH_STOMACH}
	},
	{
		HitGroup = {HITGROUP_LEFTARM},
		Animation = {ACT_FLINCH_LEFTARM}
	},
	{
		HitGroup = {HITGROUP_RIGHTARM},
		Animation = {ACT_FLINCH_RIGHTARM}
	},
	{
		HitGroup = {HITGROUP_LEFTLEG},
		Animation = {ACT_FLINCH_LEFTLEG}
	},
	{
		HitGroup = {HITGROUP_RIGHTLEG},
		Animation = {ACT_FLINCH_RIGHTLEG}
	}
}
--------------------
ENT.HasDeathAnimation = true
ENT.AnimTbl_Death = {ACT_DIESIMPLE}
ENT.DeathAnimationDecreaseLengthAmount = -1 -- This will decrease the time until it turns into a corpse
ENT.DeathCorpseEntityClass = "prop_vj_animatable"
ENT.WaitBeforeDeathTime = 8 -- Time until the NPC spawns its corpse and gets removed
--------------------
-- ENT.AnimTbl_MeleeAttack = ACT_MELEE_ATTACK1
ENT.MeleeAttackDistance = 80 -- How close an enemy has to be to trigger a melee attack | false = Let the base auto calculate on initialize based on the NPC's collision bounds
ENT.MeleeAttackAngleRadius = 50 -- What is the attack angle radius? | 100 = In front of the NPC | 180 = All around the NPC
-- ENT.MeleeAttackDamageDistance = false -- How far does the damage go? | false = Let the base auto calculate on initialize based on the NPC's collision bounds
ENT.MeleeAttackDamageAngleRadius = 100 -- What is the damage angle radius? | 100 = In front of the NPC | 180 = All around the NPC
ENT.TimeUntilMeleeAttackDamage = false
-- ENT.NextMeleeAttackTime = 1 -- How much time until it can use a melee attack?
-- ENT.NextMeleeAttackTime_DoRand = 2.5 -- False = Don't use random time | Number = Picks a random number between the regular timer and this timer
-- ENT.MeleeAttackAnimationFaceEnemy = false
-- ENT.MeleeAttackAnimationDecreaseLengthAmount = 0.5
-- ENT.MeleeAttackDamageDistance = 50
-- ENT.MeleeAttackDamageAngleRadius = 15
--------------------
ENT.HasLeapAttack = true
ENT.LeapAttackDamage = 15
ENT.LeapAttackDamageType = DMG_SLASH -- Type of Damage
ENT.AnimTbl_LeapAttack = ACT_LEAP -- Melee Attack Animations
ENT.LeapDistance = 350 -- The max distance that the NPC can leap from
ENT.LeapToMeleeDistance = 325 -- How close does it have to be until it uses melee?
ENT.LeapAttackDamageDistance = 100 -- How far does the damage go?
ENT.LeapAttackAngleRadius = 60 -- What is the attack angle radius? | 100 = In front of the NPC | 180 = All around the NPC
ENT.TimeUntilLeapAttackDamage = false -- How much time until it runs the leap damage code?
ENT.TimeUntilLeapAttackVelocity = 1 -- How much time until it runs the velocity code?
ENT.NextLeapAttackTime = 15 -- How much time until it can use a leap attack?
ENT.NextLeapAttackTime_DoRand = 50 -- False = Don't use random time | Number = Picks a random number between the regular timer and this timer


-- ENT.HasLeapAttack = true
-- ENT.LeapAttackDamage = 25
-- ENT.AnimTbl_LeapAttack = {ACT_LEAP}
-- ENT.LeapAttackAnimationFaceEnemy = false
-- ENT.LeapDistance = 300
-- ENT.LeapToMeleeDistance = 100
-- ENT.TimeUntilLeapAttackDamage = 0.55
-- ENT.NextLeapAttackTime = 15
-- ENT.NextAnyAttackTime_Leap = 1
--------------------
ENT.DisableFootStepSoundTimer = true
ENT.SoundTbl_FootStep = {
	"vj_singularity/shared/footstepBareFast05.ogg",
	"vj_singularity/shared/footstepBareFast06.ogg",
	"vj_singularity/shared/footstepBareFast07.ogg",
	"vj_singularity/shared/footstepBareFast08.ogg"
}
-- ENT.SoundTbl_CombatIdle = {
	-- "mutant/screamMutant01.ogg",
	-- "mutant/screamMutant02.ogg",
	-- "mutant/screamMutant03.ogg",
	-- "mutant/screamMutant04.ogg",
	-- "mutant/screamMutant05.ogg",
	-- "mutant/screamMutant06.ogg",
	-- "mutant/screamMutant07.ogg",
	-- "mutant/screamMutant08.ogg",
	-- "mutant/screamMutant09.ogg"
-- }

ENT.SoundTbl_Idle = {
	"vj_singularity/mutants/mutant/zombiechatter03.ogg",
	"vj_singularity/mutants/mutant/zombiechatter04.ogg",
	"vj_singularity/mutants/mutant/zombiechatter05.ogg",
	"vj_singularity/mutants/mutant/zombiechatter06.ogg",
	"vj_singularity/mutants/mutant/zombiechatter07.ogg",
	"vj_singularity/mutants/mutant/zombiechatter08.ogg",
	"vj_singularity/mutants/mutant/zombiechatter09.ogg",
	"vj_singularity/mutants/mutant/zombiechatter10.ogg",
	"vj_singularity/mutants/mutant/zombiechatter13.ogg",
	"vj_singularity/mutants/mutant/zombiechatter14.ogg",
	"vj_singularity/mutants/mutant/zombiechatter16.ogg",
	"vj_singularity/mutants/mutant/zombiechatter18.ogg",
	"vj_singularity/mutants/mutant/zombiechatter19.ogg",
	"vj_singularity/mutants/mutant/zombiechatter20.ogg",
	"vj_singularity/mutants/mutant/zombiechatter22.ogg",
	"vj_singularity/mutants/mutant/zombiechatter23.ogg"
}
ENT.SoundTbl_CombatIdle = {
	"vj_singularity/mutants/mutant/zombiepursuit01.ogg",
	"vj_singularity/mutants/mutant/zombiepursuit02.ogg",
	"vj_singularity/mutants/mutant/zombiepursuit03.ogg",
	"vj_singularity/mutants/mutant/zombiepursuit04.ogg"
}
ENT.SoundTbl_Alert = {
	"vj_singularity/mutants/mutant/zombievocal01.ogg",
	"vj_singularity/mutants/mutant/zombievocal02.ogg",
	"vj_singularity/mutants/mutant/zombievocal03.ogg",
	"vj_singularity/mutants/mutant/zombievocal04.ogg",
	"vj_singularity/mutants/mutant/zombievocal05.ogg",
	"vj_singularity/mutants/mutant/zombievocal06.ogg",
	"vj_singularity/mutants/mutant/zombievocal07.ogg",
	"vj_singularity/mutants/mutant/zombievocal08.ogg"
}
ENT.SoundTbl_BeforeMeleeAttack = {
	"vj_singularity/mutants/mutant/zombieattack01.ogg",
	"vj_singularity/mutants/mutant/zombieattack02.ogg",
	"vj_singularity/mutants/mutant/zombieattack03.ogg",
	"vj_singularity/mutants/mutant/zombieattack04.ogg"
}
ENT.SoundTbl_MeleeAttack = {
	"npc/zombie/claw_strike1.wav",
	"npc/zombie/claw_strike2.wav",
	"npc/zombie/claw_strike3.wav"
}
-- ENT.SoundTbl_MeleeAttackExtra = {} -- Effect
ENT.SoundTbl_Pain = {
	"vj_singularity/mutants/mutant/zombieretreat01.ogg",
	"vj_singularity/mutants/mutant/zombieretreat02.ogg",
	"vj_singularity/mutants/mutant/zombieretreat03.ogg",
	"vj_singularity/mutants/mutant/zombieretreat04.ogg"
}
ENT.SoundTbl_Death = {
	"vj_singularity/mutants/mutant/zekZombieDeath01.ogg",
	"vj_singularity/mutants/mutant/zekZombieDeath02.ogg",
	"vj_singularity/mutants/mutant/zekZombieDeath03.ogg",
	"vj_singularity/mutants/mutant/zekZombieDeath04.ogg"
}

-- ENT.NextSoundTime_Pain = VJ.SET(3,5)
ENT.NextSoundTime_Pain = VJ_Set(3,5)
--------------------
ENT.Singularity_Mutant_WalkAtTarget = false
ENT.Singularity_Mutant_SprintImpatience = 0
ENT.Singularity_Mutant_SprintPatience = 0
ENT.Singularity_Mutant_Sprinting = false
ENT.Singularity_Mutant_Crippled = false
ENT.Singularity_Mutant_LegHealth = 0
ENT.Singularity_Mutant_RetreatTime = 0
ENT.Singularity_Mutant_DodgeTime = 0
ENT.Singularity_Mutant_LayingDown = false
ENT.Singularity_Mutant_OldSeeDistance = 0
ENT.Singularity_Mutant_OnFire = false
ENT.Singularity_Mutant_FireScreamTime = 0
ENT.Singularity_Mutant_CanBeCrippled = true
--------------------
function ENT:Init()
	self:SetCollisionBounds(Vector(20, 20, 80), Vector(-20, -20, 0))
	self.Singularity_Mutant_SprintPatience = math.random(1,500)
	-- for i, ply in ipairs( player.GetAll() ) do
		-- ply:ChatPrint( "sprint patience is "..self.Singularity_Mutant_SprintPatience.."" )
	-- end
	-- self.Singularity_Mutant_LegHealth = self.StartHealth * 0.35
	self.Singularity_Mutant_LegHealth = self.StartHealth * 0.25


	if GetConVar("vj_singularity_mutant_canspawnascrawlers"):GetInt() == 1 then
		if math.random(1,GetConVar("vj_singularity_mutant_crawlerspawnchance"):GetInt()) == 1 then
			self:Singularity_Mutant_BecomeCrippled()
			self.StartHealth = self.StartHealth * 0.5
			self:SetHealth(self.StartHealth)
		end
	end

	if GetConVar("vj_singularity_mutant_canbecrippled"):GetInt() == 0 then
		self.Singularity_Mutant_CanBeCrippled = false
	end

end
--------------------
function ENT:OnInput(key, activator, caller, data)
	if key == "step" then
		self:FootStepSoundCode()
	end
	if key == "slide" then
		VJ_EmitSound(self,"npc/zombie/foot_slide"..math.random(1,3)..".wav",self.FootStepSoundLevel,self:VJ_DecideSoundPitch(self.FootStepPitch.a,self.FootStepPitch.b))
	end
	if key == "melee" then
		-- 13
		-- PrintMessage(HUD_PRINTCENTER, "attack sequence is "..self:GetSequence().."")
		self.MeleeAttackDamageDistance = self:GetSequence() == 15 and 40 or 60 -- reduce the damage distance for the bite attack
		-- self.MeleeAttackDamage = self:GetSequence() == 13 and 9999 or 1

		-- 15 = bite attack
		-- 11, 12 = standing swipe
		-- 14, 15 = sprint attacks
		-- 16 = leap attack
		-- 36, 35 = crawling attacks

		if self:GetSequence() == 15 || self:GetSequence() == 36 || self:GetSequence() == 35 then
			self.MeleeAttackDamage = 10
		elseif self:GetSequence() == 14 || self:GetSequence() == 15 || self:GetSequence() == 16 then
			self.MeleeAttackDamage = 20
		else
			self.MeleeAttackDamage = 15
		end

		if self:GetSequence() == 15 then
			self.SoundTbl_MeleeAttackMiss = {
				"vj_singularity/mutants/mutant/zombiebite01.ogg",
				"vj_singularity/mutants/mutant/zombiebite02.ogg"
			}
			self.SoundTbl_MeleeAttack = {
				"vj_singularity/mutants/mutant/zombiebite01.ogg",
				"vj_singularity/mutants/mutant/zombiebite02.ogg"
			}
		else
			self.SoundTbl_MeleeAttack = {
				"npc/zombie/claw_strike1.wav",
				"npc/zombie/claw_strike2.wav",
				"npc/zombie/claw_strike3.wav"
			}
			self.SoundTbl_MeleeAttackMiss = {
				"npc/zombie/claw_miss1.wav",
				"npc/zombie/claw_miss2.wav"	
			}
		end

		self:MeleeAttackCode()
	end
	if key == "leap_land" then
		VJ_EmitSound(self,"player/pz/fall/bodyfall_largecreature.wav")
	end
	if key == "growl" then
		VJ_EmitSound(self,"vj_singularity/mutants/mutant/zombieretreat0"..math.random(1,4)..".ogg")
	end
	if key == "mutant_roar" then
		VJ_EmitSound(self,"vj_singularity/mutants/mutant/zombiechatter0"..math.random(3,9)..".ogg")
	end
	if key == "deathsound" then
		VJ_EmitSound(self,"vj_singularity/mutants/mutant/zombieexhale0"..math.random(1,3)..".ogg")
	end
	if key == "body" then
		VJ_EmitSound(self,"physics/body/body_medium_impact_soft"..math.random(1,7)..".wav")
	end
	if key == "body_hard" then
		VJ_EmitSound(self,"physics/body/body_medium_impact_hard"..math.random(1,6)..".wav")
	end
	print("OnAcceptInput", key, activator, caller, data)
end
--------------------
function ENT:TranslateActivity(act)

	if self.Singularity_Mutant_Crippled then
		if act == ACT_IDLE then
			return ACT_CROUCHIDLE
		end
		if act == ACT_WALK then
			return ACT_WALK_CROUCH
		end
		if act == ACT_RUN then
			if self.Singularity_Mutant_OnFire then
				return ACT_WALK_CROUCH
			else
				return ACT_RUN_CROUCH
			end
		end
	end

	if self.Singularity_Mutant_LayingDown then
		if act == ACT_IDLE then
			return ACT_PRONE_IDLE
		end
	end

	if self.Singularity_Mutant_OnFire then
		if act == ACT_RUN || act == ACT_WALK then
			return ACT_WALK_ON_FIRE
		end
	end

	if self.Singularity_Mutant_Sprinting then
		if act == ACT_RUN then
			return ACT_SPRINT
		end
	end

	if self.Singularity_Mutant_WalkAtTarget then
		if act == ACT_RUN then
			return ACT_WALK_AIM
		end
	end

	return self.BaseClass.TranslateActivity(self, act)
end
--------------------
function ENT:Singularity_Mutant_LieDown()
	self.Singularity_Mutant_LayingDown = true
	self:AddFlags(FL_NOTARGET)
	self.Singularity_Mutant_OldSeeDistance = self:GetMaxLookDistance()
		-- PrintMessage(HUD_PRINTCENTER, ""..self.Singularity_Mutant_OldSeeDistance.."")
	self:SetMaxLookDistance(300)
	self.MovementType = VJ_MOVETYPE_STATIONARY
	self.CanTurnWhileStationary = false
	self.CanInvestigate = false
	self.FindEnemy_UseSphere = true
	self.HasSounds = false
	self.CanFlinch = 0
	self.HasMeleeAttack = false
	self:ResetEnemy(checkAlliesEnemy)
	self.Alerted = false
end
--------------------
function ENT:Singularity_Mutant_GetUp()

	self.IsGuard = false
	self:VJ_ACT_PLAYACTIVITY("vjseq_get_up",true,2)
	self.Singularity_Mutant_LayingDown = false
	self:RemoveFlags(FL_NOTARGET)
	self:SetMaxLookDistance(self.Singularity_Mutant_OldSeeDistance)
	self.CanInvestigate = true
	self.FindEnemy_UseSphere = false
	self.HasSounds = true
	timer.Simple(2, function() if IsValid(self) then
		VJ_EmitSound(self,"vo/k_lab/kl_ahhhh.wav")
		self.MovementType = VJ_MOVETYPE_GROUND
		self.CanTurnWhileStationary = true
		self.CanFlinch = 1
		self.HasMeleeAttack = true
	end end)

end
--------------------
function ENT:OnThinkActive()

	-- PrintMessage(HUD_PRINTCENTER, "sprint impatience level is "..self.Singularity_Mutant_SprintImpatience.."")

	-- if self.Singularity_Mutant_OnFire then
		-- PrintMessage(HUD_PRINTCENTER, "on fire")
	-- else
		-- PrintMessage(HUD_PRINTCENTER, "not on fire")
	-- end

	if self:IsOnFire() && !self.Singularity_Mutant_OnFire then
		self.Singularity_Mutant_OnFire = true
		-- self:StopMoving() -- workaround for vrej's fucking shit
		self.Singularity_Mutant_FireScreamTime = CurTime() + math.random(1,3)
		self.FlinchChance = 7
		self.NextFlinchTime = 2
		self.MeleeAttackAnimationFaceEnemy = false
		if self.Singularity_Mutant_Sprinting then
			self:Singularity_Mutant_ResetSprint()
		end
	end

	if !self:IsOnFire() && self.Singularity_Mutant_OnFire then
		self.Singularity_Mutant_OnFire = false
		-- self:StopMoving() -- workaround for vrej's fucking shit
		self.FlinchChance = 14
		self.NextFlinchTime = 5
		if !self.Singularity_Mutant_Crippled && !self.Singularity_Mutant_Sprinting then
			self.MeleeAttackAnimationFaceEnemy = true
		end
	end

	if self.Singularity_Mutant_OnFire && self.Singularity_Mutant_FireScreamTime < CurTime() && !self.Dead then
		self.Singularity_Mutant_FireScreamTime = CurTime() + math.random(3,6)
		VJ_EmitSound(self,"vj_singularity/mutants/mutant/screammutant0"..math.random(1,9)..".ogg",100)
	end

	if self.Singularity_Mutant_Crippled then return end -- don't bother running this stuff if we're crippled

	if self.IsGuard && !self.Singularity_Mutant_LayingDown then
		self:Singularity_Mutant_LieDown()
	end

	if self:GetEnemy() != nil then
		if self:GetPos():Distance(self:GetEnemy():GetPos()) > 750 && self.Singularity_Mutant_WalkAtTarget then -- start running again if they're too far
			self.Singularity_Mutant_WalkAtTarget = false
		end
		-- retreat time is less than curtime, enemy's distance is less than 300, we can see the enemy, we're not busy, we're not sprinting, we're not dead, we're not laying down, and we're not on fire
		if self.Singularity_Mutant_RetreatTime < CurTime() && self:GetPos():Distance(self:GetEnemy():GetPos()) < 300 && self:Visible(self:GetEnemy()) && !self:IsBusy() && !self.Singularity_Mutant_Sprinting && !self.Dead && !self.Singularity_Mutant_LayingDown && !self.Singularity_Mutant_OnFire then
			self:VJ_ACT_PLAYACTIVITY("vjseq_retreat",true,2)
			self.Singularity_Mutant_RetreatTime = CurTime() + math.random(10,45)
			if self:GetPos():Distance(self:GetEnemy():GetPos()) < 150 then
				self.Singularity_Mutant_WalkAtTarget = true
			else
				self.Singularity_Mutant_WalkAtTarget = false
			end
		end
		-- see if you can make it so they only do this if their enemy is looking at them
		-- enemy is within 75 units, we're not busy, our dodge timer is less than CurTime, we're not dead, the enemy is performing a melee attack, and we're not on fire
		if
			self:GetPos():Distance(self:GetEnemy():GetPos()) <= 75 &&
			!self:IsBusy() &&
			self.Singularity_Mutant_DodgeTime < CurTime() &&
			!self.Dead &&
			(
				self:GetEnemy():GetActivity() == ACT_MELEE_ATTACK1 ||
				self:GetEnemy():GetActivity() == ACT_MELEE_ATTACK2 ||
				self:GetEnemy():GetActivity() == ACT_HL2MP_GESTURE_RANGE_ATTACK_FIST ||
				self:GetEnemy():GetActivity() == ACT_HL2MP_GESTURE_RANGE_ATTACK_KNIFE ||
				self:GetEnemy():GetActivity() == ACT_HL2MP_GESTURE_RANGE_ATTACK_MELEE ||
				self:GetEnemy():GetActivity() == ACT_HL2MP_GESTURE_RANGE_ATTACK_MELEE2 ||
				self:GetEnemy():GetActivity() == ACT_GMOD_GESTURE_MELEE_SHOVE_1HAND ||
				self:GetEnemy():GetActivity() == ACT_GMOD_GESTURE_MELEE_SHOVE_2HAND ||
				self:GetEnemy().AttackType == VJ.ATTACK_TYPE_MELEE
			) &&
			!self.Singularity_Mutant_OnFire
		then
			self:VJ_ACT_PLAYACTIVITY("vjseq_retreat_quick",true,2)
			self.Singularity_Mutant_DodgeTime = CurTime() + math.random(2,7)
			if self:GetPos():Distance(self:GetEnemy():GetPos()) < 150 then
				self.Singularity_Mutant_WalkAtTarget = true
			else
				self.Singularity_Mutant_WalkAtTarget = false
			end
		end
		-- enemy is visible, farther than 1000 units, and our impatience is less than our patience
		if self:Visible(self:GetEnemy()) && self:GetPos():Distance(self:GetEnemy():GetPos()) > 800 && self.Singularity_Mutant_SprintImpatience < self.Singularity_Mutant_SprintPatience then
			self.Singularity_Mutant_SprintImpatience = self.Singularity_Mutant_SprintImpatience + 1
		end
		-- sprint impatience is greater than patience, and we're not sprinting
		if self.Singularity_Mutant_SprintImpatience >= self.Singularity_Mutant_SprintPatience && !self.Singularity_Mutant_Sprinting && !self.Dead && !self.Singularity_Mutant_OnFire then
			self.Singularity_Mutant_Sprinting = true
			self.AnimTbl_MeleeAttack = ACT_SPECIAL_ATTACK1
			self.MeleeAttackDistance = 110
			self.MeleeAttackAnimationFaceEnemy = false
			self.HasLeapAttack = false
			self.SoundTbl_CombatIdle = {
				"vj_singularity/mutants/mutant/zombiefastpursuit01.ogg",
				"vj_singularity/mutants/mutant/zombiefastpursuit02.ogg",
				"vj_singularity/mutants/mutant/zombiefastpursuit03.ogg",
				"vj_singularity/mutants/mutant/zombiefastpursuit04.ogg",
				"vj_singularity/mutants/mutant/zombiefastpursuit05.ogg",
				"vj_singularity/mutants/mutant/zombiefastpursuit06.ogg"
			}
			VJ_EmitSound(self,"vj_singularity/mutants/mutant/zombiesprintrage01.ogg")
		end
	else
		if self.Singularity_Mutant_SprintImpatience > 0 then
			self.Singularity_Mutant_SprintImpatience = self.Singularity_Mutant_SprintImpatience - 1
		end
		if self.Singularity_Mutant_Sprinting then
			self:Singularity_Mutant_ResetSprint()
		end
	end

end
--------------------
function ENT:Singularity_Mutant_ResetSprint()
	self.Singularity_Mutant_Sprinting = false
	self.Singularity_Mutant_SprintImpatience = 0
	self.Singularity_Mutant_SprintPatience = math.random(1,500)
	-- for i, ply in ipairs( player.GetAll() ) do
		-- ply:ChatPrint( "new sprint patience is "..self.Singularity_Mutant_SprintPatience.."" )
	-- end
	self.Singularity_Mutant_RetreatTime = 0
	self.AnimTbl_MeleeAttack = ACT_MELEE_ATTACK1
	self.MeleeAttackDistance = 80
	self.MeleeAttackAnimationFaceEnemy = true
	self.HasLeapAttack = true
	self.SoundTbl_CombatIdle = {
		"vj_singularity/mutants/mutant/zombiepursuit01.ogg",
		"vj_singularity/mutants/mutant/zombiepursuit02.ogg",
		"vj_singularity/mutants/mutant/zombiepursuit03.ogg",
		"vj_singularity/mutants/mutant/zombiepursuit04.ogg"
	}
end
--------------------
function ENT:Singularity_Mutant_BecomeCrippled()
	self.Singularity_Mutant_Crippled = true
	self.CanFlinch = false
	self.AnimTbl_MeleeAttack = ACT_MELEE_ATTACK2
	self.MeleeAttackDistance = 40
	self.MeleeAttackAnimationFaceEnemy = false
	self.HasLeapAttack = false
	self.AnimTbl_Death = {ACT_DIEFORWARD}
end
--------------------
-- function ENT:CustomOnMeleeAttack_BeforeStartTimer(seed)
	-- if && self.self.MeleeAttackDamageDistance != 30 then
		-- self.MeleeAttackDamageDistance = 30
	-- else
		-- self.MeleeAttackDamageDistance = false
	-- end
-- end
--------------------
function ENT:OnAlert(ent)
	if self.Singularity_Mutant_LayingDown then
		self:Singularity_Mutant_GetUp()
	end
	self.IsAbleToLeapAttack = false
	timer.Create("timer_leap_finished_abletoleap"..self:EntIndex(), self:DecideAttackTimer(5,45), 1, function()
		self.IsAbleToLeapAttack = true
	end)
	self.Singularity_Mutant_RetreatTime = CurTime() + math.random(1,20)
end
--------------------
function ENT:CustomOnMeleeAttack_AfterChecks(hitEnt, isProp)
	if self.Singularity_Mutant_Sprinting then
		self:Singularity_Mutant_ResetSprint()
	end
end
--------------------
function ENT:CustomOnMeleeAttack_Miss()
	if self.Singularity_Mutant_Sprinting then
		self:Singularity_Mutant_ResetSprint()
	end
end
--------------------
function ENT:GetLeapAttackVelocity()
	local ene = self:GetEnemy()
	return ((ene:GetPos() + ene:OBBCenter()) - (self:GetPos() + self:OBBCenter())):GetNormal() * 0
end
--------------------
function ENT:OnDamaged(dmginfo, hitgroup, status)
	if status == "PostDamage" then
		if self.Singularity_Mutant_LayingDown then
			self:Singularity_Mutant_GetUp()
		end
		if (hitgroup == HITGROUP_LEFTLEG || hitgroup == HITGROUP_RIGHTLEG) && self.Singularity_Mutant_CanBeCrippled then
			self.Singularity_Mutant_LegHealth = self.Singularity_Mutant_LegHealth -dmginfo:GetDamage()
		end
		if self.Singularity_Mutant_LegHealth <= 0 && !self.Singularity_Mutant_Crippled && !self.Dead then
			self:Singularity_Mutant_BecomeCrippled()
			self:VJ_ACT_PLAYACTIVITY("vjseq_crippled",true,2,false)
		end
	end
end
--------------------
function ENT:OnFlinch(dmginfo, hitgroup, status)
	if status == "Execute" then
		if self.Singularity_Mutant_Sprinting then -- stop sprinting
			self:Singularity_Mutant_ResetSprint()
		end

		if self:GetEnemy() != nil then
			if self:GetPos():Distance(self:GetEnemy():GetPos()) < 300 && !self.Singularity_Mutant_WalkAtTarget then -- walk at them if they're close enough
				self.Singularity_Mutant_WalkAtTarget = true
			elseif self:GetPos():Distance(self:GetEnemy():GetPos()) > 500 && self.Singularity_Mutant_WalkAtTarget then -- too far, keep running
				self.Singularity_Mutant_WalkAtTarget = false
			end
		else
			self.Singularity_Mutant_WalkAtTarget = false -- don't have an enemy, so just run
		end
	end
end
--------------------
function ENT:OnCreateDeathCorpse(dmginfo,hitgroup,corpseEnt)
	-- this was taken from Cry of Fear Resurgence by Darkborn
    corpseEnt:SetMoveType(MOVETYPE_STEP)
    -- VJ_COFR_ApplyCorpse(self,corpseEnt)
    corpseEnt:ResetSequence(self:GetSequence())
    corpseEnt:SetCycle(1)
    corpseEnt:SetCollisionBounds(Vector(1, 1, 1), Vector(-1, -1, 0))
    corpseEnt:SetSolid(SOLID_NONE)
end
--------------------
-- function ENT:MultipleMeleeAttacks()
-- local EnemyDistance = self:VJ_GetNearestPointToEntityDistance(self:GetEnemy(),self:GetPos():Distance(self:GetEnemy():GetPos()))
-- if EnemyDistance > 0 && EnemyDistance < 10000 then -- wtf??
	-- end
	-- local anyattack = math.random(1,4)	
	-- if anyattack == 1 then

		-- self.MeleeAttackDamage = 15
		-- self.AnimTbl_MeleeAttack = {ACT_MELEE_ATTACK2}
		-- self.MeleeAttackDistance = 50
		-- self.TimeUntilMeleeAttackDamage = 0.60
		-- self.NextAnyAttackTime_Melee = 1
		-- self.MeleeAttackExtraTimers = nil

	-- elseif anyattack == 2 then

		-- self.MeleeAttackDamage = 20
		-- self.AnimTbl_MeleeAttack = {ACT_MELEE_ATTACK1}
		-- self.MeleeAttackDistance = 50
		-- self.TimeUntilMeleeAttackDamage = 0.50
		-- self.NextAnyAttackTime_Melee = 2
		-- self.MeleeAttackExtraTimers = nil

	-- elseif anyattack == 3 then

		-- self.MeleeAttackDamage = 20
		-- self.AnimTbl_MeleeAttack = {"Attack3"}
		-- self.MeleeAttackDistance = 50
		-- self.TimeUntilMeleeAttackDamage = 0.60
		-- self.NextAnyAttackTime_Melee = 2
		-- self.MeleeAttackExtraTimers = nil

	-- elseif anyattack == 4 then

		-- self.MeleeAttackDamage = 10
		-- self.AnimTbl_MeleeAttack = {"Attack4"}
		-- self.MeleeAttackDistance = 40
		-- self.TimeUntilMeleeAttackDamage = 0.50
		-- self.NextAnyAttackTime_Melee = 2
		-- self.MeleeAttackExtraTimers = {1.30} 

	-- end

-- end
--------------------
function ENT:OnDeath(dmginfo,hitgroup,status)
	if status == "Initial" then
		self:AddFlags(FL_NOTARGET)
	end
	-- local ent = ents.Create("npc_vj_singularity_mutantcrawler")
	-- ent:SetPos(self:GetPos())
	-- ent:SetAngles(self:GetAngles())
	-- ent:Spawn()
end
--------------------