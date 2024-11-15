AddCSLuaFile("shared.lua")
include('shared.lua')
/*-----------------------------------------------
	*** Copyright (c) 2012-2018 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
ENT.Model = {"models/singularity/zek_boss.mdl"} -- The game will pick a random model from the table when the SNPC is spawned | Add as many as you want
ENT.StartHealth = 2000
ENT.HasHull = true -- Set to false to disable HULL
ENT.HullSizeNormal = true -- set to false to cancel out the self:SetHullSizeNormal()
ENT.HasSetSolid = true -- set to false to disable SetSolid
ENT.SightDistance = 10000 -- How far it can see
ENT.SightAngle = 80 -- The sight angle | Example: 180 would make the it see all around it | Measured in degrees and then converted to radians
ENT.TurningSpeed = 20 -- How fast it can turn
ENT.Bleeds = true -- Does the SNPC bleed? (Blood decal, particle, etc.)
ENT.BloodColor = "Red" -- The blood type, this will determine what it should use (decal, particle, etc.)
ENT.HasBloodParticle = true -- Does it spawn a particle when damaged?
ENT.HasBloodDecal = true -- Does it spawn a decal when damaged?
ENT.HasBloodPool = true -- Does it have a blood pool?
ENT.AllowIgnition = true -- Can this SNPC be set on fire?
ENT.RunAwayOnUnknownDamage = true -- Should run away on damage
ENT.NextRunAwayOnDamageTime = 5 -- Until next run after being shot when not alerted
ENT.CallForBackUpOnDamage = true -- Should the SNPC call for help when damaged? (Only happens if the SNPC hasn't seen a enemy)
ENT.CallForBackUpOnDamageDistance = 800 -- How far away the SNPC's call for help goes | Counted in World Units
ENT.CallForBackUpOnDamageUseCertainAmount = true -- Should the SNPC only call certain amount of people?
ENT.CallForBackUpOnDamageUseCertainAmountNumber = 3 -- How many people should it call if certain amount is enabled?
ENT.VJ_NPC_Class = {"CLASS_SINGULARITYCREATURE"} -- NPCs with the same class with be allied to each other
ENT.HasDeathRagdoll = false -- If set to false, it will not spawn the regular ragdoll of the SNPC
ENT.FadeCorpse = false -- Fades the ragdoll on death
ENT.FadeCorpseTime = 0.1 -- How much time until the ragdoll fades | Unit = Seconds
ENT.Immune_Dissolve = true -- Immune to dissolving | Example: Combine Ball
ENT.HasSounds = true -- Put to false to disable ALL sound
ENT.SoundTbl_FootStep = {"common/footstepBareFast05.ogg","common/footstepBareFast06.ogg","common/footstepBareFast07.ogg","common/footstepBareFast08.ogg"}
ENT.SoundTbl_CombatIdle = {"zek boss/zekBossGrowlMed01.ogg","zek boss/zekBossGrowlMed02.ogg","zek boss/zekBossGrowlMed03.ogg","zek boss/zekBossGrowlMed04.ogg","zek boss/zekBossGrowlMed05.ogg","zek boss/zekBossGrowlMed06.ogg","zek boss/zekBossGrowlMed07.ogg","zek boss/zekBossGrowlMed08.ogg"}
ENT.HasDeathAnimation = true -- Does it play an animation when it dies?
ENT.AnimTbl_Death = {"Death"} -- Death Animations
ENT.DeathAnimationTime = 30 -- Time until the SNPC spawns its corpse and gets removed
ENT.DeathAnimationChance = 1 -- Put 1 if you want it to play the animation all the time
ENT.AnimTbl_Walk = {ACT_WALK} -- Set the walking animations | Put multiple to let the base pick a random animation when it moves
ENT.AnimTbl_Run = {ACT_WALK} -- Set the running animations | Put multiple to let the base pick a random animation when it moves
--------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnInitialize()
	self:SetCollisionBounds(Vector(30, 30, 110), Vector(-30, -30, 0))
	self:ZekKingRage()
	self:ZekKingRageStop()
end
--------------------------------------------------------------------------------------------------------------------------------------------
function ENT:MultipleMeleeAttacks()
local EnemyDistance = self:VJ_GetNearestPointToEntityDistance(self:GetEnemy(),self:GetPos():Distance(self:GetEnemy():GetPos()))
if EnemyDistance > 0 && EnemyDistance < 10000 then
    local anyattack = math.random(1,3)	
		if anyattack == 1 then
		self.MeleeAttackDistance = 50
		self.TimeUntilMeleeAttackDamage = 1.50
		self.NextAnyAttackTime_Melee = 3
		self.AnimTbl_MeleeAttack = {ACT_MELEE_ATTACK1}
		self.MeleeAttackAngleRadius = 100
		self.MeleeAttackAnimationFaceEnemy = false
		self.MeleeAttackDamage = 30
		self.MeleeAttackDamageAngleRadius = 80
		self.MeleeAttackDamageDistance = 60
		self.MeleeAttackDamageType = DMG_SLASH
		self.MeleeAttackAnimationDecreaseLengthAmount = 0
		self.MeleeAttackExtraTimers = {} 
		
		elseif anyattack == 2 then
		self.MeleeAttackDistance = 20
		self.TimeUntilMeleeAttackDamage = 1.60
		self.NextAnyAttackTime_Melee = 3
		self.AnimTbl_MeleeAttack = {ACT_MELEE_ATTACK2}
		self.MeleeAttackAngleRadius = 100
		self.MeleeAttackAnimationFaceEnemy = false
		self.MeleeAttackDamage = 40
		self.MeleeAttackDamageAngleRadius = 80
		self.MeleeAttackDamageDistance = 60
		self.MeleeAttackDamageType = DMG_SLASH
		self.MeleeAttackAnimationDecreaseLengthAmount = 0
		self.MeleeAttackExtraTimers = {} 
		
		elseif anyattack == 3 then
		self.MeleeAttackDistance = 50
		self.TimeUntilMeleeAttackDamage = 2
		self.NextAnyAttackTime_Melee = 3
		self.AnimTbl_MeleeAttack = {"Attack_C"}
		self.MeleeAttackAngleRadius = 100
		self.MeleeAttackAnimationFaceEnemy = false
		self.MeleeAttackDamage = 25
		self.MeleeAttackDamageAngleRadius = 100
		self.MeleeAttackDamageDistance = 60
		self.MeleeAttackDamageType = DMG_SLASH
		self.MeleeAttackAnimationDecreaseLengthAmount = 0
		self.MeleeAttackExtraTimers = {1.15} 
		
end
end
end
--------------------------------------------------------------------------------------------------------------------------------------------
function ENT:ZekKingRage()
timer.Create("Rage"..self:EntIndex().."",math.random(10,20,30), 0,function()
if IsValid(self:GetEnemy()) then
	Enemy = self:GetEnemy()
	self.AnimTbl_Run = {ACT_RUN}
	    end
	end)
end
--------------------------------------------------------------------------------------------------------------------------------------------
function ENT:ZekKingRageStop()
timer.Create("Rage Stop"..self:EntIndex().."",math.random(20,40,60), 0,function()
if IsValid(self:GetEnemy()) then
	Enemy = self:GetEnemy()
	self.AnimTbl_Run = {ACT_WALK}
	    end
	end)
end
--------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnRemove()
	timer.Remove( "Rage"..self:EntIndex().."" )
	timer.Remove( "Rage Stop"..self:EntIndex().."" )
end
--------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomDeathAnimationCode(dmginfo,hitgroup)
    timer.Remove( "Rage"..self:EntIndex().."" )
	timer.Remove( "Rage Stop"..self:EntIndex().."" )
end
--------------------------------------------------------------------------------------------------------------------------------------------
-- All functions and variables are located inside the base files. It can be found in the GitHub Repository: https://github.com/DrVrej/VJ-Base

/*-----------------------------------------------
	*** Copyright (c) 2012-2018 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/