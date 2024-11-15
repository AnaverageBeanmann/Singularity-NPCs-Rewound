AddCSLuaFile("shared.lua")
include('shared.lua')
/*-----------------------------------------------
	*** Copyright (c) 2012-2018 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
ENT.Model = {"models/singularity/revert.mdl"} -- The game will pick a random model from the table when the SNPC is spawned | Add as many as you want
ENT.StartHealth = 250
ENT.HasHull = true -- Set to false to disable HULL
ENT.HullSizeNormal = true -- set to false to cancel out the self:SetHullSizeNormal()
ENT.HasSetSolid = true -- set to false to disable SetSolid
ENT.SightDistance = 200 -- How far it can see
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
ENT.CallForBackUpOnDamageDistance = 1000 -- How far away the SNPC's call for help goes | Counted in World Units
ENT.CallForBackUpOnDamageUseCertainAmount = true -- Should the SNPC only call certain amount of people?
ENT.CallForBackUpOnDamageUseCertainAmountNumber = 3 -- How many people should it call if certain amount is enabled?
ENT.VJ_NPC_Class = {"CLASS_SINGULARITYCREATURE"} -- NPCs with the same class with be allied to each other
ENT.HasDeathRagdoll = false -- If set to false, it will not spawn the regular ragdoll of the SNPC
ENT.FadeCorpse = false -- Fades the ragdoll on death
ENT.FadeCorpseTime = 0.1 -- How much time until the ragdoll fades | Unit = Seconds
ENT.CallForHelp = true -- Does the SNPC call for help?
ENT.CallForHelpDistance = 1000 -- -- How far away the SNPC's call for help goes | Counted in World Units
ENT.NextCallForHelpTime = 10 -- Time until it calls for help again
ENT.AnimTbl_CallForHelp = {"Taunt"} -- Call For Help Animations
ENT.HasSounds = true -- Put to false to disable ALL sound
ENT.SoundTbl_FootStep = {"common/footstep_1.ogg","common/footstep_2.ogg","common/footstep_3.ogg","common/footstep_4.ogg"}
ENT.SoundTbl_Alert = {"revert/revertAlerted01.ogg","revert/revertAlerted02.ogg","revert/revertAlerted03.ogg","revert/revertAlerted04.ogg"}
ENT.DisableInitializeCapabilities = true -- If enabled, all of the Capabilities will be disabled, allowing you to add your own
ENT.HasRangeAttack = false -- Should the SNPC have a range attack?
ENT.RangeAttackEntityToSpawn = "grenade_spit" -- The entity that is spawned when range attacking
ENT.AnimTbl_RangeAttack = {ACT_RANGE_ATTACK1} -- Range Attack Animations
ENT.RangeAttackAnimationDelay = 0 -- It will wait certain amount of time before playing the animation
ENT.RangeAttackAnimationFaceEnemy = false -- Should it face the enemy while playing the range attack animation?
ENT.RangeAttackAnimationDecreaseLengthAmount = 0 -- This will decrease the time until starts chasing again. Use it to fix animation pauses until it chases the enemy.
ENT.RangeAttackAnimationStopMovement = true -- Should it stop moving when performing a range attack?
ENT.RangeDistance = 40 -- This is how far away it can shoot
ENT.RangeToMeleeDistance = 0 -- How close does it have to be until it uses melee?
ENT.RangeAttackAngleRadius = 100 -- What is the attack angle radius? | 100 = In front of the SNPC | 180 = All around the SNPC
ENT.RangeUseAttachmentForPos = false -- Should the projectile spawn on a attachment?
ENT.RangeUseAttachmentForPosID = "muzzle" -- The attachment used on the range attack if RangeUseAttachmentForPos is set to true
ENT.RangeAttackPos_Up = 20 -- Up/Down spawning position for range attack
ENT.RangeAttackPos_Forward = 0 -- Forward/ Backward spawning position for range attack
ENT.RangeAttackPos_Right = 0 -- Right/Left spawning position for range attack
ENT.TimeUntilRangeAttackProjectileRelease = 1.5 -- How much time until the projectile code is ran?
ENT.NextRangeAttackTime = 3 -- How much time until it can use a range attack?
ENT.NextRangeAttackTime_DoRand = false -- False = Don't use random time | Number = Picks a random number between the regular timer and this timer
ENT.NextAnyAttackTime_Range = 0.1 -- How much time until it can use any attack again? | Counted in Seconds
ENT.NextAnyAttackTime_Range_DoRand = false -- False = Don't use random time | Number = Picks a random number between the regular timer and this timer
ENT.RangeAttackReps = 1 -- How many times does it run the projectile code?
ENT.RangeAttackExtraTimers = {/* Ex: 1,1.4 */} -- Extra range attack timers | it will run the projectile code after the given amount of seconds
ENT.DisableDefaultRangeAttackCode = false -- When true, it won't spawn the range attack entity, allowing you to make your own
ENT.DisableRangeAttackAnimation = false -- if true, it will disable the animation code
--------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnInitialize()
	self:SetCollisionBounds(Vector(20, 20, 70), Vector(-20, -20, 0))
	self:CapabilitiesAdd( CAP_MOVE_JUMP )
	self:CapabilitiesAdd( CAP_OPEN_DOORS )
	self:CapabilitiesAdd( CAP_AUTO_DOORS )
end
--------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnTakeDamage_BeforeDamage(dmginfo,hitgroup)
self.SightDistance = 1000
self.RunAwayOnUnknownDamage = false -- Should run away on damage
end
--------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnAlert() 
self.SightDistance = 1000
end
--------------------------------------------------------------------------------------------------------------------------------------------
function ENT:MultipleMeleeAttacks()
local EnemyDistance = self:VJ_GetNearestPointToEntityDistance(self:GetEnemy(),self:GetPos():Distance(self:GetEnemy():GetPos()))
if EnemyDistance > 0 && EnemyDistance < 10000 then
    local anyattack = math.random(1,3)	
		if anyattack == 1 then
		self.MeleeAttackDistance = 70
		self.TimeUntilMeleeAttackDamage = 0.50
		self.NextAnyAttackTime_Melee = 2
		self.AnimTbl_MeleeAttack = {ACT_MELEE_ATTACK1}
		self.MeleeAttackAngleRadius = 100
		self.MeleeAttackAnimationFaceEnemy = false
		self.MeleeAttackDamage = 35
		self.MeleeAttackDamageAngleRadius = 15
		self.MeleeAttackDamageDistance = 50
		self.MeleeAttackDamageType = DMG_SLASH
		self.MeleeAttackAnimationDecreaseLengthAmount = 0
		
		elseif anyattack == 2 then
		self.MeleeAttackDistance = 60
		self.TimeUntilMeleeAttackDamage = 0.70
		self.NextAnyAttackTime_Melee = 3
		self.AnimTbl_MeleeAttack = {ACT_MELEE_ATTACK2}
		self.MeleeAttackAngleRadius = 100
		self.MeleeAttackAnimationFaceEnemy = false
		self.MeleeAttackDamage = 35
		self.MeleeAttackDamageAngleRadius = 15
		self.MeleeAttackDamageDistance = 50
		self.MeleeAttackDamageType = DMG_SLASH
		self.MeleeAttackAnimationDecreaseLengthAmount = 0
		
		elseif anyattack == 3 then
		self.MeleeAttackDistance = 60
		self.TimeUntilMeleeAttackDamage = 0.50
		self.NextAnyAttackTime_Melee = 3
		self.AnimTbl_MeleeAttack = {"Attack_Light3"}
		self.MeleeAttackAngleRadius = 100
		self.MeleeAttackAnimationFaceEnemy = false
		self.MeleeAttackDamage = 40
		self.MeleeAttackDamageAngleRadius = 15
		self.MeleeAttackDamageDistance = 50
		self.MeleeAttackDamageType = DMG_SLASH
		self.MeleeAttackAnimationDecreaseLengthAmount = 0

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