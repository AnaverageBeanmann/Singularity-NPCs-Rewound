AddCSLuaFile("shared.lua")
include('shared.lua')
/*-----------------------------------------------
	*** Copyright (c) 2012-2018 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
ENT.Model = {"models/singularity/zek_fatty.mdl"} -- The game will pick a random model from the table when the SNPC is spawned | Add as many as you want
ENT.StartHealth = 600
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
ENT.HasSounds = true -- Put to false to disable ALL sound
ENT.SoundTbl_FootStep = {"common/footstepBareFast05.ogg","common/footstepBareFast06.ogg","common/footstepBareFast07.ogg","common/footstepBareFast08.ogg"}
ENT.SoundTbl_Breath = {"JellyBelly/jellyBellyBreath01.ogg","JellyBelly/jellyBellyBreath02.ogg","JellyBelly/jellyBellyBreath03.ogg","JellyBelly/jellyBellyBreath04.ogg","JellyBelly/jellyBellyBreath05.ogg","JellyBelly/jellyBellyBreath06.ogg","JellyBelly/jellyBellyBreath07.ogg","JellyBelly/jellyBellyBreath08.ogg","JellyBelly/jellyBellyBreatheExhale01.ogg","JellyBelly/jellyBellyBreatheExhale02.ogg","JellyBelly/jellyBellyBreatheExhale03.ogg","JellyBelly/jellyBellyBreatheExhale04.ogg","JellyBelly/jellyBellyBreatheInhale01.ogg","JellyBelly/jellyBellyBreatheInhale02.ogg","JellyBelly/jellyBellyBreatheInhale03.ogg","JellyBelly/jellyBellyBreatheInhale04.ogg"}
ENT.SoundTbl_Idle = {"JellyBelly/jellyBellyGasp05.ogg","JellyBelly/jellyBellyGasp07.ogg","JellyBelly/jellyBellyGroan05.ogg","JellyBelly/jellyBellyGroan06.ogg","JellyBelly/jellyBellyGroan08.ogg","JellyBelly/jellyBellyGroan09.ogg","JellyBelly/jellyBellyGroan10.ogg","JellyBelly/jellyBellyGroan11.ogg","JellyBelly/jellyBellyGurgle01.ogg","JellyBelly/jellyBellyGurgle10.ogg","JellyBelly/jellyBellyGurgle11.ogg"}
ENT.SoundTbl_CombatIdle = {"JellyBelly/jellyBellyGasp05.ogg","JellyBelly/jellyBellyGasp07.ogg","JellyBelly/jellyBellyGroan05.ogg","JellyBelly/jellyBellyGroan06.ogg","JellyBelly/jellyBellyGroan08.ogg","JellyBelly/jellyBellyGroan09.ogg","JellyBelly/jellyBellyGroan10.ogg","JellyBelly/jellyBellyGroan11.ogg","JellyBelly/jellyBellyGurgle01.ogg","JellyBelly/jellyBellyGurgle10.ogg","JellyBelly/jellyBellyGurgle11.ogg","JellyBelly/jellyBellySayHelpMe01.ogg","JellyBelly/jellyBellySayHelpMe02.ogg","JellyBelly/jellyBellySayKillMe01.ogg","JellyBelly/jellyBellySayKillMe02.ogg","JellyBelly/jellyBellySayKillMe03.ogg","JellyBelly/jellyBellySayKillMe04.ogg","JellyBelly/jellyBellySayKillMe05.ogg","JellyBelly/jellyBellySayKillMe06.ogg","JellyBelly/jellyBellySayKillMe07.ogg","zek/zekfatty_growl01.ogg","zek/zekfatty_growl02.ogg","zek/zekfatty_growl03.ogg"}
ENT.SoundTbl_Pain = {"JellyBelly/jellyBellyPain01.ogg","JellyBelly/jellyBellyPain02.ogg","JellyBelly/jellyBellyPain03.ogg","JellyBelly/jellyBellyPain04.ogg"}
ENT.SoundTbl_Death = {"JellyBelly/jellyBellyDeath01.ogg","JellyBelly/jellyBellyDeath02.ogg","JellyBelly/jellyBellyDeath03.ogg"}
ENT.HasDeathAnimation = true -- Does it play an animation when it dies?
ENT.AnimTbl_Death = {"Death1","Death2","Death_Head"} -- Death Animations
ENT.DeathAnimationTime = 30 -- Time until the SNPC spawns its corpse and gets removed
ENT.DeathAnimationChance = 1 -- Put 1 if you want it to play the animation all the time
--------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnInitialize()
	self:SetCollisionBounds(Vector(30, 30, 110), Vector(-30, -30, 0))
end
--------------------------------------------------------------------------------------------------------------------------------------------
function ENT:MultipleMeleeAttacks()
local EnemyDistance = self:VJ_GetNearestPointToEntityDistance(self:GetEnemy(),self:GetPos():Distance(self:GetEnemy():GetPos()))
if EnemyDistance > 0 && EnemyDistance < 10000 then
    local anyattack = math.random(1,3)	
		if anyattack == 1 then
		self.MeleeAttackDistance = 60
		self.TimeUntilMeleeAttackDamage = 1.30
		self.NextAnyAttackTime_Melee = 3
		self.AnimTbl_MeleeAttack = {"Attack1"}
		self.MeleeAttackAngleRadius = 100
		self.MeleeAttackAnimationFaceEnemy = false
		self.MeleeAttackDamage = 20
		self.MeleeAttackDamageAngleRadius = 80
		self.MeleeAttackDamageDistance = 90
		self.MeleeAttackDamageType = DMG_SLASH
		self.MeleeAttackAnimationDecreaseLengthAmount = 0
		self.HasMeleeAttackKnockBack = true 
        self.MeleeAttackKnockBack_Forward1 = 400 
        self.MeleeAttackKnockBack_Forward2 = 400 
        self.MeleeAttackKnockBack_Up1 = 300 
        self.MeleeAttackKnockBack_Up2 = 300 
		
		elseif anyattack == 2 then
		self.MeleeAttackDistance = 70
		self.TimeUntilMeleeAttackDamage = 2.70
		self.NextAnyAttackTime_Melee = 3
		self.AnimTbl_MeleeAttack = {"Attack2"}
		self.MeleeAttackAngleRadius = 100
		self.MeleeAttackAnimationFaceEnemy = false
		self.MeleeAttackDamage = 30
		self.MeleeAttackDamageAngleRadius = 80
		self.MeleeAttackDamageDistance = 80
		self.MeleeAttackDamageType = DMG_SLASH
		self.MeleeAttackAnimationDecreaseLengthAmount = 0
		self.HasMeleeAttackKnockBack = true 
        self.MeleeAttackKnockBack_Forward1 = 500
        self.MeleeAttackKnockBack_Forward2 = 500 
        self.MeleeAttackKnockBack_Up1 = 300 
        self.MeleeAttackKnockBack_Up2 = 300 
		
		elseif anyattack == 3 then
		self.MeleeAttackDistance = 70
		self.TimeUntilMeleeAttackDamage = 1.70
		self.NextAnyAttackTime_Melee = 3
		self.AnimTbl_MeleeAttack = {"Attack_Slam"}
		self.MeleeAttackAngleRadius = 100
		self.MeleeAttackAnimationFaceEnemy = false
		self.MeleeAttackDamage = 50
		self.MeleeAttackDamageAngleRadius = 80
		self.MeleeAttackDamageDistance = 80
		self.MeleeAttackDamageType = DMG_SLASH
		self.MeleeAttackAnimationDecreaseLengthAmount = 0
		self.HasMeleeAttackKnockBack = true 
        self.MeleeAttackKnockBack_Forward1 = 600
        self.MeleeAttackKnockBack_Forward2 = 600 
        self.MeleeAttackKnockBack_Up1 = 400 
        self.MeleeAttackKnockBack_Up2 = 400 
		
end
end
end
--------------------------------------------------------------------------------------------------------------------------------------------
-- All functions and variables are located inside the base files. It can be found in the GitHub Repository: https://github.com/DrVrej/VJ-Base

/*-----------------------------------------------
	*** Copyright (c) 2012-2018 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/