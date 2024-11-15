AddCSLuaFile("shared.lua")
include('shared.lua')
/*-----------------------------------------------
	*** Copyright (c) 2012-2018 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
ENT.Model = {"models/singularity/zombiecrawler.mdl"} -- The game will pick a random model from the table when the SNPC is spawned | Add as many as you want
ENT.StartHealth = 50
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
ENT.HasMeleeAttack = true -- Should the SNPC have a melee attack?
ENT.MeleeAttackDamage = 10
ENT.MeleeAttackDamageType = DMG_SLASH -- Type of Damage
ENT.AnimTbl_MeleeAttack = {ACT_MELEE_ATTACK1} -- Melee Attack Animations
ENT.MeleeAttackAnimationDelay = 0 -- It will wait certain amount of time before playing the animation
ENT.MeleeAttackAnimationFaceEnemy = false -- Should it face the enemy while playing the melee attack animation?
ENT.MeleeAttackAnimationDecreaseLengthAmount = 0 -- This will decrease the time until starts chasing again. Use it to fix animation pauses until it chases the enemy.
ENT.MeleeAttackDistance = 20 -- How close does it have to be until it attacks?
ENT.MeleeAttackAngleRadius = 100 -- What is the attack angle radius? | 100 = In front of the SNPC | 180 = All around the SNPC
ENT.MeleeAttackDamageDistance = 40 -- How far does the damage go?
ENT.MeleeAttackDamageAngleRadius = 100 -- What is the damage angle radius? | 100 = In front of the SNPC | 180 = All around the SNPC
ENT.TimeUntilMeleeAttackDamage = 0.70 -- This counted in seconds | This calculates the time until it hits something
ENT.NextMeleeAttackTime = 1.5 -- How much time until it can use a melee attack?
ENT.NextMeleeAttackTime_DoRand = false -- False = Don't use random time | Number = Picks a random number between the regular timer and this timer
ENT.NextAnyAttackTime_Melee = 0.5 -- How much time until it can use any attack again? | Counted in Seconds
ENT.NextAnyAttackTime_Melee_DoRand = false -- False = Don't use random time | Number = Picks a random number between the regular timer and this timer
ENT.MeleeAttackReps = 1 -- How many times does it run the melee attack code?
ENT.MeleeAttackExtraTimers = {/* Ex: 1,1.4 */} -- Extra melee attack timers | it will run the damage code after the given amount of seconds
ENT.StopMeleeAttackAfterFirstHit = false -- Should it stop the melee attack from running rest of timers when it hits an enemy?
ENT.MeleeAttack_NoProps = false -- If set to true, it won't attack or push any props (Mostly used with multiple melee attacks)
ENT.HasSounds = true -- Put to false to disable ALL sound
ENT.SoundTbl_FootStep = {"common/footstepBareFast05.ogg","common/footstepBareFast06.ogg","common/footstepBareFast07.ogg","common/footstepBareFast08.ogg"}
ENT.SoundTbl_Breath = {"zombie/zombieInhale01.ogg","zombie/zombieInhale02.ogg","zombie/zombieExhale01.ogg","zombie/zombieExhale02.ogg","zombie/zombieExhale03.ogg"}
ENT.SoundTbl_Idle = {"zombie/zombieChatter03.ogg","zombie/zombieChatter04.ogg","zombie/zombieChatter05.ogg","zombie/zombieChatter06.ogg","zombie/zombieChatter08.ogg","zombie/zombieChatter09.ogg","zombie/zombieChatter10.ogg","zombie/zombieChatter13.ogg","zombie/zombieChatter14.ogg","zombie/zombieChatter16.ogg","zombie/zombieChatter18.ogg","zombie/zombieChatter19.ogg","zombie/zombieChatter20.ogg","zombie/zombieChatter22.ogg","zombie/zombieChatter23.ogg"}
ENT.SoundTbl_CombatIdle = {"zombie/zombieBark01.ogg","zombie/zombieBark02.ogg","zombie/zombieBark03.ogg","zombie/zombieBark04.ogg","zombie/zombieBark05.ogg","zombie/zombieBark06.ogg","zombie/zombieBark07.ogg","zombie/zombieBark08.ogg","zombie/zombieBark09.ogg","zombie/zombieBark10.ogg","zombie/zombieBark11.ogg","zombie/zombieVocal01.ogg","zombie/zombieVocal02.ogg","zombie/zombieVocal03.ogg","zombie/zombieVocal04.ogg","zombie/zombieVocal05.ogg","zombie/zombieVocal06.ogg","zombie/zombieVocal07.ogg","zombie/zombieVocal08.ogg","zombie/zombiePursuit01.ogg","zombie/zombiePursuit02.ogg","zombie/zombiePursuit03.ogg","zombie/zombiePursuit04.ogg"}
ENT.SoundTbl_BeforeMeleeAttack = {"zombie/zombieAttack01.ogg","zombie/zombieAttack02.ogg","zombie/zombieAttack03.ogg","zombie/zombieAttack04.ogg"}
--------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnInitialize()
self:SetCollisionBounds(Vector(20, 20, 30), Vector(-20, -20, 0))
end
--------------------------------------------------------------------------------------------------------------------------------------------
-- All functions and variables are located inside the base files. It can be found in the GitHub Repository: https://github.com/DrVrej/VJ-Base

/*-----------------------------------------------
	*** Copyright (c) 2012-2018 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/