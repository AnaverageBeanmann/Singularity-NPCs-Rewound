AddCSLuaFile("shared.lua")
include('shared.lua')
/*-----------------------------------------------
	*** Copyright (c) 2012-2018 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
ENT.Model = {"models/singularity/zombie.mdl"} -- The game will pick a random model from the table when the SNPC is spawned | Add as many as you want
ENT.StartHealth = 100
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
ENT.CanFlinch = 1 -- 0 = Don't flinch | 1 = Flinch at any damage | 2 = Flinch only from certain damages
ENT.FlinchDamageTypes = {DMG_BLAST} -- If it uses damage-based flinching, which types of damages should it flinch from?
ENT.FlinchChance = 20 -- Chance of it flinching from 1 to x | 1 will make it always flinch
ENT.NextMoveAfterFlinchTime = "LetBaseDecide" -- How much time until it can move, attack, etc. | Use this for schedules or else the base will set the time 0.6 if it sees it's a schedule!
ENT.NextFlinchTime = 4 -- How much time until it can flinch again?
ENT.FlinchAnimation_UseSchedule = false -- false = SCHED_ | true = ACT_
ENT.AnimTbl_Flinch = {ACT_FLINCH_PHYSICS} -- If it uses normal based animation, use this
ENT.FlinchAnimationDecreaseLengthAmount = 0 -- This will decrease the time it can move, attack, etc. | Use it to fix animation pauses after it finished the flinch animation
ENT.HasHitGroupFlinching = false -- It will flinch when hit in certain hitgroups | It can also have certain animations to play in certain hitgroups
ENT.HasSounds = true -- Put to false to disable ALL sound
ENT.SoundTbl_FootStep = {"common/footstepBareFast05.ogg","common/footstepBareFast06.ogg","common/footstepBareFast07.ogg","common/footstepBareFast08.ogg"}
ENT.SoundTbl_Breath = {"zombie/zombieInhale01.ogg","zombie/zombieInhale02.ogg","zombie/zombieExhale01.ogg","zombie/zombieExhale02.ogg","zombie/zombieExhale03.ogg"}
ENT.SoundTbl_Idle = {"zombie/zombieChatter03.ogg","zombie/zombieChatter04.ogg","zombie/zombieChatter05.ogg","zombie/zombieChatter06.ogg","zombie/zombieChatter08.ogg","zombie/zombieChatter09.ogg","zombie/zombieChatter10.ogg","zombie/zombieChatter13.ogg","zombie/zombieChatter14.ogg","zombie/zombieChatter16.ogg","zombie/zombieChatter18.ogg","zombie/zombieChatter19.ogg","zombie/zombieChatter20.ogg","zombie/zombieChatter22.ogg","zombie/zombieChatter23.ogg"}
ENT.SoundTbl_CombatIdle = {"zombie/zombieBark01.ogg","zombie/zombieBark02.ogg","zombie/zombieBark03.ogg","zombie/zombieBark04.ogg","zombie/zombieBark05.ogg","zombie/zombieBark06.ogg","zombie/zombieBark07.ogg","zombie/zombieBark08.ogg","zombie/zombieBark09.ogg","zombie/zombieBark10.ogg","zombie/zombieBark11.ogg","zombie/zombieVocal01.ogg","zombie/zombieVocal02.ogg","zombie/zombieVocal03.ogg","zombie/zombieVocal04.ogg","zombie/zombieVocal05.ogg","zombie/zombieVocal06.ogg","zombie/zombieVocal07.ogg","zombie/zombieVocal08.ogg","zombie/zombiePursuit01.ogg","zombie/zombiePursuit02.ogg","zombie/zombiePursuit03.ogg","zombie/zombiePursuit04.ogg"}
ENT.SoundTbl_BeforeMeleeAttack = {"zombie/zombieAttack01.ogg","zombie/zombieAttack02.ogg","zombie/zombieAttack03.ogg","zombie/zombieAttack04.ogg"}
--------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnInitialize()
	self:SetCollisionBounds(Vector(20, 20, 60), Vector(-20, -20, 0))
end
--------------------------------------------------------------------------------------------------------------------------------------------
function ENT:MultipleMeleeAttacks()
local EnemyDistance = self:VJ_GetNearestPointToEntityDistance(self:GetEnemy(),self:GetPos():Distance(self:GetEnemy():GetPos()))
if EnemyDistance > 0 && EnemyDistance < 10000 then
    local anyattack = math.random(1,2)	
		if anyattack == 1 then
		self.MeleeAttackDistance = 130
		self.TimeUntilMeleeAttackDamage = 0.6
		self.NextAnyAttackTime_Melee = 3
		self.AnimTbl_MeleeAttack = {ACT_MELEE_ATTACK1}
		self.MeleeAttackAngleRadius = 100
		self.MeleeAttackAnimationFaceEnemy = false
		self.MeleeAttackDamage = 15
		self.MeleeAttackDamageAngleRadius = 15
		self.MeleeAttackDamageDistance = 60
		self.MeleeAttackDamageType = DMG_SLASH
		self.MeleeAttackAnimationDecreaseLengthAmount = 0.5
		
		elseif anyattack == 2 then
		self.MeleeAttackDistance = 20
		self.TimeUntilMeleeAttackDamage = 0.6
		self.NextAnyAttackTime_Melee = 1
		self.AnimTbl_MeleeAttack = {ACT_MELEE_ATTACK2}
		self.MeleeAttackAngleRadius = 100
		self.MeleeAttackAnimationFaceEnemy = false
		self.MeleeAttackDamage = 15
		self.MeleeAttackDamageAngleRadius = 15
		self.MeleeAttackDamageDistance = 40
		self.MeleeAttackDamageType = DMG_SLASH
		self.MeleeAttackAnimationDecreaseLengthAmount = 0.5
		
end
end
end
--------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnKilled(dmginfo,hitgroup)
	local ent = ents.Create("npc_vj_singularity_zombiecrawler")
	ent:SetPos(self:GetPos())
	ent:SetAngles(self:GetAngles())
	ent:Spawn()
end
--------------------------------------------------------------------------------------------------------------------------------------------
-- All functions and variables are located inside the base files. It can be found in the GitHub Repository: https://github.com/DrVrej/VJ-Base

/*-----------------------------------------------
	*** Copyright (c) 2012-2018 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/