AddCSLuaFile("shared.lua")
include('shared.lua')
/*-----------------------------------------------
	*** Copyright (c) 2012-2018 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
ENT.Model = {"models/singularity/elite_spetsnaz.mdl"} -- The game will pick a random model from the table when the SNPC is spawned | Add as many as you want
ENT.StartHealth = 600
ENT.HasHull = true -- Set to false to disable HULL
ENT.HullType = HULL_HUMAN
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
ENT.VJ_NPC_Class = {"CLASS_SINGULARITYHUMAN"} -- NPCs with the same class with be allied to each other
ENT.HasDeathRagdoll = false -- If set to false, it will not spawn the regular ragdoll of the SNPC
ENT.FadeCorpse = false -- Fades the ragdoll on death
ENT.FadeCorpseTime = 0.1 -- How much time until the ragdoll fades | Unit = Seconds
ENT.CallForHelp = true -- Does the SNPC call for help?
ENT.CallForHelpDistance = 2000 -- -- How far away the SNPC's call for help goes | Counted in World Units
ENT.NextCallForHelpTime = 4 -- Time until it calls for help again
ENT.HasCallForHelpAnimation = false -- if true, it will play the call for help animation
ENT.AnimTbl_CallForHelp = {"Hand_Signal_R","Hand_Signal_L"} -- Call For Help Animations
ENT.CallForHelpAnimationDelay = 0.1 -- It will wait certain amount of time before playing the animation
ENT.CallForHelpAnimationPlayBackRate = 0.5 -- How fast should the animation play? | Currently only for gestures!
ENT.CallForHelpStopAnimations = true -- Should it stop attacks for a certain amount of time?
ENT.CallForHelpStopAnimationsTime = 1.5 -- How long should it stop attacks?
ENT.CallForHelpAnimationFaceEnemy = true -- Should it face the enemy when playing the animation?
ENT.NextCallForHelpAnimationTime = 30 -- How much time until it can play the animation again?
ENT.DropWeaponOnDeath = false -- Should it drop its weapon on death?
ENT.CanFlinch = 1 -- 0 = Don't flinch | 1 = Flinch at any damage | 2 = Flinch only from certain damages
ENT.FlinchDamageTypes = {DMG_BLAST} -- If it uses damage-based flinching, which types of damages should it flinch from?
ENT.FlinchChance = 15 -- Chance of it flinching from 1 to x | 1 will make it always flinch
ENT.NextMoveAfterFlinchTime = "LetBaseDecide" -- How much time until it can move, attack, etc. | Use this for schedules or else the base will set the time 0.6 if it sees it's a schedule!
ENT.NextFlinchTime = 6 -- How much time until it can flinch again?
ENT.FlinchAnimation_UseSchedule = false -- false = SCHED_ | true = ACT_
ENT.AnimTbl_Flinch = {"Gatling_Pain_Direction_Front_1","Gatling_Pain_Direction_Front_2","Gatling_Pain_Direction_Front_3"} -- If it uses normal based animation, use this
ENT.FlinchAnimationDecreaseLengthAmount = 0 -- This will decrease the time it can move, attack, etc. | Use it to fix animation pauses after it finished the flinch animation
ENT.HasHitGroupFlinching = false -- It will flinch when hit in certain hitgroups | It can also have certain animations to play in certain hitgroups
ENT.HasFootStepSound = false -- Should the SNPC make a footstep sound when it's moving?
ENT.HasMeleeAttack = false -- Should the SNPC have a melee attack?
ENT.LastSeenEnemyTimeUntilReset = 15 -- Time until it resets its enemy if its current enemy is not visible
ENT.PushProps = false -- Should it push props when trying to move?
ENT.AttackProps = false -- Should it attack props when trying to move?
ENT.HasSounds = true -- Put to false to disable ALL sound
ENT.DisableWeapons = false -- If set to true, it won't be able to use weapons
ENT.Weapon_NoSpawnMenu = false -- If set to true, the NPC weapon setting in the spawnmenu will not be applied for this SNPC
ENT.HasShootWhileMoving = true -- Can it shoot while moving?
ENT.MoveRandomlyWhenShooting = true -- Should it move randomly when shooting?
ENT.HasGrenadeAttack = false -- Should the SNPC have a grenade attack?
ENT.MoveOrHideOnDamageByEnemy = false -- Should the SNPC move or hide when being damaged by an enemy?
ENT.CanDetectGrenades = true -- Set to false to disable the SNPC from running away from grenades
ENT.RunFromGrenadeDistance = 300 -- If the entity is this close to the it, then run!
ENT.CanThrowBackDetectedGrenades = false -- Should it try to pick up the detected grenade and throw it back to the enemy?
ENT.AnimTbl_WeaponAttack = {ACT_RANGE_ATTACK1} -- Animation played when the SNPC does weapon attack | For VJ Weapons
ENT.SoundTbl_FootStep = {"common/footstep_1.ogg","common/footstep_2.ogg","common/footstep_3.ogg","common/footstep_4.ogg"}
ENT.SoundTbl_Death = {"spetsnaz/SD_SPT1_DEATH_LG1.ogg","spetsnaz/SD_SPT1_DEATH_LG2.ogg","spetsnaz/SD_SPT1_DEATH_LG3.ogg","spetsnaz/SD_SPT1_DEATH_LG4.ogg","spetsnaz/SD_SPT1_DEATH_LG5.ogg","spetsnaz/SD_SPT1_DEATH_SM1.ogg","spetsnaz/SD_SPT1_DEATH_SM2.ogg","spetsnaz/SD_SPT1_DEATH_SM3.ogg","spetsnaz/SD_SPT1_DEATH_SM4.ogg","spetsnaz/SD_SPT1_DEATH_SM5.ogg"}
ENT.SoundTbl_CombatIdle = {"spetsnaz/SD_SPT1_MOVE_IN1.ogg","spetsnaz/SD_SPT1_MOVE_IN2.ogg","spetsnaz/SD_SPT1_MOVE_IN3.ogg","spetsnaz/SD_SPT1_MOVE_IN4.ogg","spetsnaz/SD_SPT1_MOVE_IN5.ogg"}
ENT.SoundTbl_CallForHelp = {"spetsnaz/SD_SPT1_SEE_TARGET1.ogg","spetsnaz/SD_SPT1_SEE_TARGET2.ogg","spetsnaz/SD_SPT1_SEE_TARGET3.ogg","spetsnaz/SD_SPT1_SEE_TARGET4.ogg","spetsnaz/SD_SPT1_SEE_TARGET5.ogg"}
ENT.SoundTbl_Pain = {"spetsnaz/SD_SPT1_PAIN_SM1.ogg","spetsnaz/SD_SPT1_PAIN_SM2.ogg","spetsnaz/SD_SPT1_PAIN_SM3.ogg","spetsnaz/SD_SPT1_PAIN_SM4.ogg","spetsnaz/SD_SPT1_PAIN_SM5.ogg"}
ENT.SoundTbl_OnReceiveOrder = {"spetsnaz/SD_SPT1_SRCH_KILL1.ogg","spetsnaz/SD_SPT1_SRCH_KILL2.ogg"}
ENT.SoundTbl_OnGrenadeSight = {"spetsnaz/SD_SPT2_SEE_GRENADE1.ogg","spetsnaz/SD_SPT2_MOVE_RETREAT1.ogg","spetsnaz/SD_SPT2_MOVE_RETREAT2.ogg","spetsnaz/SD_SPT2_MOVE_RETREAT3.ogg"}
ENT.DistanceToRunFromEnemy = 300 -- When the enemy is this close, the SNPC will back away | Put to 0, to never back away
ENT.WeaponReloadAnimationFaceEnemy = false -- Should it face the enemy while playing the weapon reload animation?
--------------------------------------------------------------------------------------------------------------------------------------------
-- All functions and variables are located inside the base files. It can be found in the GitHub Repository: https://github.com/DrVrej/VJ-Base

/*-----------------------------------------------
	*** Copyright (c) 2012-2018 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/