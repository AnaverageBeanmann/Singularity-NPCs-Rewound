AddCSLuaFile("shared.lua")
include('shared.lua')
/*-----------------------------------------------
	*** Copyright (c) 2012-2018 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
ENT.Model = {"models/singularity/phase_tick.mdl"} -- The game will pick a random model from the table when the SNPC is spawned | Add as many as you want
ENT.StartHealth = 50
ENT.HasHull = true -- Set to false to disable HULL
ENT.HullSizeNormal = true -- set to false to cancel out the self:SetHullSizeNormal()
ENT.HasSetSolid = true -- set to false to disable SetSolid
ENT.SightDistance = 10000 -- How far it can see
ENT.SightAngle = 80 -- The sight angle | Example: 180 would make the it see all around it | Measured in degrees and then converted to radians
ENT.TurningSpeed = 20 -- How fast it can turn
ENT.Bleeds = true -- Does the SNPC bleed? (Blood decal, particle, etc.)
ENT.BloodColor = "Orange" -- The blood type, this will determine what it should use (decal, particle, etc.)
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
ENT.CanFlinch = 1 -- 0 = Don't flinch | 1 = Flinch at any damage | 2 = Flinch only from certain damages
ENT.FlinchDamageTypes = {DMG_BLAST} -- If it uses damage-based flinching, which types of damages should it flinch from?
ENT.FlinchChance = 10 -- Chance of it flinching from 1 to x | 1 will make it always flinch
ENT.NextMoveAfterFlinchTime = "LetBaseDecide" -- How much time until it can move, attack, etc. | Use this for schedules or else the base will set the time 0.6 if it sees it's a schedule!
ENT.NextFlinchTime = 6 -- How much time until it can flinch again?
ENT.FlinchAnimation_UseSchedule = false -- false = SCHED_ | true = ACT_
ENT.AnimTbl_Flinch = {"Pain_Impulse_Back","Pain_Impulse_Front","Pain_Impulse_Left","Pain_Impulse_Right"} -- If it uses normal based animation, use this
ENT.FlinchAnimationDecreaseLengthAmount = 0 -- This will decrease the time it can move, attack, etc. | Use it to fix animation pauses after it finished the flinch animation
ENT.HasHitGroupFlinching = false -- It will flinch when hit in certain hitgroups | It can also have certain animations to play in certain hitgroups
ENT.HasMeleeAttack = false -- Should the SNPC have a melee attack?
ENT.HasLeapAttack = true -- Should the SNPC have a leap attack?
ENT.AnimTbl_LeapAttack = {ACT_SPECIAL_ATTACK1} -- Melee Attack Animations
ENT.LeapAttackAnimationDelay = 0 -- It will wait certain amount of time before playing the animation
ENT.LeapAttackAnimationFaceEnemy = false -- Should it face the enemy while playing the leap attack animation?
ENT.LeapAttackAnimationDecreaseLengthAmount = 0 -- This will decrease the time until starts chasing again. Use it to fix animation pauses until it chases the enemy.
ENT.LeapDistance = 100 -- The distance of the leap, for example if it is set to 500, when the SNPC is 500 Unit away, it will jump
ENT.LeapToMeleeDistance = 0 -- How close does it have to be until it uses melee?
ENT.TimeUntilLeapAttackDamage = 0.2 -- How much time until it runs the leap damage code?
ENT.NextLeapAttackTime = 1 -- How much time until it can use a leap attack?
ENT.NextLeapAttackTime_DoRand = false -- False = Don't use random time | Number = Picks a random number between the regular timer and this timer
ENT.NextAnyAttackTime_Leap = 1 -- How much time until it can use any attack again? | Counted in Seconds
ENT.NextAnyAttackTime_Leap_DoRand = false -- False = Don't use random time | Number = Picks a random number between the regular timer and this timer
ENT.LeapAttackReps = 1 -- How many times does it run the leap attack code?
ENT.LeapAttackExtraTimers = {/* Ex: 1,1.4 */} -- Extra leap attack timers | it will run the damage code after the given amount of seconds
ENT.StopLeapAttackAfterFirstHit = true -- Should it stop the leap attack from running rest of timers when it hits an enemy?
ENT.TimeUntilLeapAttackVelocity = 0.1 -- How much time until it runs the velocity code?
ENT.LeapAttackUseCustomVelocity = false -- Should it disable the default velocity system?
ENT.LeapAttackVelocityForward = 50 -- How much forward force should it apply?
ENT.LeapAttackVelocityUp = 250 -- How much upward force should it apply?
ENT.LeapAttackVelocityRight = 0 -- How much right force should it apply?
ENT.LeapAttackDamage = 20
ENT.LeapAttackDamageDistance = 50 -- How far does the damage go?
ENT.LeapAttackDamageType = DMG_SLASH -- Type of Damage
ENT.DisableLeapAttackAnimation = false -- if true, it will disable the animation code
ENT.HasSounds = true -- Put to false to disable ALL sound
ENT.SoundTbl_Idle = {"phase tick/phaseTickChatter01.ogg","phase tick/phaseTickChatter02.ogg","phase tick/phaseTickChatter03.ogg","phase tick/phaseTickChatter04.ogg","phase tick/phaseTickChatter05.ogg","phase tick/phaseTickChatter06.ogg","phase tick/phaseTickChatter07.ogg","phase tick/phaseTickChatter08.ogg","phase tick/phaseTickChatter09.ogg","phase tick/phaseTickChatter10.ogg","phase tick/phaseTickChatter11.ogg","phase tick/phaseTickChatter12.ogg","phase tick/phaseTickChatter13.ogg","phase tick/phaseTickChatter14.ogg","phase tick/phaseTickChatter15.ogg","phase tick/phaseTickChatter16.ogg","phase tick/phaseTickChatter17.ogg","phase tick/phaseTickChatter18.ogg"}
ENT.SoundTbl_CombatIdle = {"phase tick/phaseTickChatter01.ogg","phase tick/phaseTickChatter02.ogg","phase tick/phaseTickChatter03.ogg","phase tick/phaseTickChatter04.ogg","phase tick/phaseTickChatter05.ogg","phase tick/phaseTickChatter06.ogg","phase tick/phaseTickChatter07.ogg","phase tick/phaseTickChatter08.ogg","phase tick/phaseTickChatter09.ogg","phase tick/phaseTickChatter10.ogg","phase tick/phaseTickChatter11.ogg","phase tick/phaseTickChatter12.ogg","phase tick/phaseTickChatter13.ogg","phase tick/phaseTickChatter14.ogg","phase tick/phaseTickChatter15.ogg","phase tick/phaseTickChatter16.ogg","phase tick/phaseTickChatter17.ogg","phase tick/phaseTickChatter18.ogg"}
ENT.SoundTbl_Death = {"phase tick/phaseTickDeath09.ogg","phase tick/phaseTickDeath10.ogg","phase tick/phaseTickDeath11.ogg","phase tick/phaseTickDeath12.ogg"}
ENT.SoundTbl_LeapAttackJump = {"phase tick/phaseTickJump01.ogg","phase tick/phaseTickJump02.ogg","phase tick/phaseTickJump03.ogg","phase tick/phaseTickJump04.ogg","phase tick/phaseTickJump05.ogg","phase tick/phaseTickJump06.ogg"}
ENT.SoundTbl_LeapAttackDamage = {"phase tick/phaseTickAttack01.ogg","phase tick/phaseTickAttack02.ogg","phase tick/phaseTickAttack03.ogg","phase tick/phaseTickAttack04.ogg"}
ENT.SoundTbl_Pain = {"phase tick/phaseTickPain01.ogg","phase tick/phaseTickPain02.ogg","phase tick/phaseTickPain03.ogg","phase tick/phaseTickPain04.ogg","phase tick/phaseTickPain05.ogg","phase tick/phaseTickPain06.ogg","phase tick/phaseTickPain07.ogg","phase tick/phaseTickPain08.ogg"}
--------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnInitialize()
	self:SetCollisionBounds(Vector(10, 10, 15), Vector(-10, -10, 0))
end
--------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnLeapAttack_AfterChecks(TheHitEntity) 
self:TakeDamage(999999999,self,self)
end
--------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Flank()
if IsValid(self) then
local GetAnyEnemy = ent:GetEnemy()
if GetAnyEnemy and self.OnGroundNow == true and ent:GetPos():Distance(GetAnyEnemy:GetPos()) > 300 and !ent:IsCurrentSchedule( SCHED_FORCED_GO_RUN ) then
Go1 = ent:GetRight() * math.random(300,-600) + ent:GetForward() * math.random(300, 600)
if self.Spawning == false then
if self:IsOnGround() and self.OnGroundNow == nil then
self.OnGroundNow = true
self.CanWalk = true
end
end
local Place = {}
Place[1] = (Go1)
self:SetLastPosition(ent:GetPos() + Place[1])
self:SetSchedule(SCHED_FORCED_GO_RUN)
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