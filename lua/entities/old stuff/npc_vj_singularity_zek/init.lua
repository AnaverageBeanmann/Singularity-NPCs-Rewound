AddCSLuaFile("shared.lua")
include('shared.lua')
/*-----------------------------------------------
	*** Copyright (c) 2012-2018 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
ENT.Model = {"models/singularity/zek1.mdl","models/singularity/zek2.mdl","models/singularity/zek3.mdl","models/singularity/zek4.mdl"} -- The game will pick a random model from the table when the SNPC is spawned | Add as many as you want
ENT.StartHealth = 150
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
ENT.HasLeapAttack = true -- Should the SNPC have a leap attack?
ENT.CanFlinch = 1 -- 0 = Don't flinch | 1 = Flinch at any damage | 2 = Flinch only from certain damages
ENT.FlinchDamageTypes = {DMG_BLAST} -- If it uses damage-based flinching, which types of damages should it flinch from?
ENT.FlinchChance = 20 -- Chance of it flinching from 1 to x | 1 will make it always flinch
ENT.NextMoveAfterFlinchTime = "LetBaseDecide" -- How much time until it can move, attack, etc. | Use this for schedules or else the base will set the time 0.6 if it sees it's a schedule!
ENT.NextFlinchTime = 4 -- How much time until it can flinch again?
ENT.FlinchAnimation_UseSchedule = false -- false = SCHED_ | true = ACT_
ENT.AnimTbl_Flinch = {"Pain_1","Pain_2"} -- If it uses normal based animation, use this
ENT.FlinchAnimationDecreaseLengthAmount = 0 -- This will decrease the time it can move, attack, etc. | Use it to fix animation pauses after it finished the flinch animation
ENT.HasHitGroupFlinching = false -- It will flinch when hit in certain hitgroups | It can also have certain animations to play in certain hitgroups
ENT.HasSounds = true -- Put to false to disable ALL sound
ENT.SoundTbl_FootStep = {"common/footstepBareFast05.ogg","common/footstepBareFast06.ogg","common/footstepBareFast07.ogg","common/footstepBareFast08.ogg"}
ENT.SoundTbl_Breath = {"zek/zekBreatheExhaleFast01.ogg","zek/zekBreatheExhaleFast02.ogg","zek/zekBreatheExhaleFast03.ogg","zek/zekBreatheExhaleFast04.ogg","zek/zekBreatheExhaleFast05.ogg","zek/zekBreatheExhaleFast06.ogg","zek/zekBreatheExhaleFast07.ogg","zek/zekBreatheExhaleFast08.ogg","zek/zekBreatheExhaleFast09.ogg","zek/zekBreatheExhaleFast10.ogg","zek/zekBreatheExhaleFast11.ogg","zek/zekBreatheExhaleFast12.ogg","zek/zekBreatheExhaleFast13.ogg","zek/zekBreatheExhaleFast14.ogg","zek/zekBreatheExhaleFast15.ogg","zek/zekBreatheExhaleFast16.ogg","zek/zekBreatheExhaleFast17.ogg","zek/zekBreatheExhaleFast18.ogg","zek/zekBreatheInhaleFast01.ogg","zek/zekBreatheInhaleFast02.ogg","zek/zekBreatheInhaleFast03.ogg","zek/zekBreatheInhaleFast04.ogg","zek/zekBreatheInhaleFast05.ogg","zek/zekBreatheInhaleFast06.ogg","zek/zekBreatheInhaleFast07.ogg","zek/zekBreatheInhaleFast08.ogg","zek/zekBreatheInhaleFast09.ogg","zek/zekBreatheInhaleFast10.ogg","zek/zekBreatheInhaleFast11.ogg","zek/zekBreatheInhaleFast12.ogg","zek/zekBreatheInhaleFast13.ogg","zek/zekBreatheInhaleFast14.ogg","zek/zekBreatheInhaleFast15.ogg","zek/zekBreatheInhaleFast16.ogg","zek/zekBreatheInhaleFast17.ogg","zek/zekBreatheInhaleFast18.ogg"}
ENT.SoundTbl_Idle = {"zek/zekAmbientHowl01.ogg","zek/zekAmbientHowl02.ogg","zek/zekAmbientHowl03.ogg","zek/zekAmbientHowl04.ogg","zek/zekAmbientHowl05.ogg","zek/zekAmbientHowlAnswer01.ogg","zek/zekAmbientHowlAnswer02.ogg","zek/zekAmbientHowlAnswer03.ogg","zek/zekAmbientHowlAnswer04.ogg","zek/zekAmbientHowlAnswer05.ogg","zek/zekAmbientHowlAnswer06.ogg","zek/zekAmbientHowlAnswer07.ogg","zek/zekAmbientHowlAnswer08.ogg","zek/zekAmbientHowlAnswer09.ogg","zek/zekAmbientHowlAnswer10.ogg","zek/zekAmbientHowlAnswer11.ogg","zek/zekAmbientHowlAnswer12.ogg","zek/zekAmbientHowlAnswer13.ogg","zek/zekAmbientHowlAnswer14.ogg","zek/zekAmbientHowlAnswer15.ogg","zek/zekAmbientHowlCall01.ogg","zek/zekAmbientHowlCall02.ogg","zek/zekAmbientHowlCall03.ogg","zek/zekAmbientHowlCall04.ogg","zek/zekAmbientHowlCall05.ogg","zek/zekAmbientHowlCall06.ogg","zek/zekAmbientHowlCall07.ogg"}
ENT.SoundTbl_CombatIdle = {"zek/zekGrunt01.ogg","zek/zekGrunt02.ogg","zek/zekGrunt03.ogg","zek/zekGrunt04.ogg","zek/zekGrunt05.ogg"}
ENT.SoundTbl_Pain = {"zek/zekPain01.ogg","zek/zekPain02.ogg","zek/zekPain03.ogg","zek/zekPain04.ogg","zek/zekPain05.ogg","zek/zekPain06.ogg","zek/zekPain07.ogg","zek/zekPain08.ogg","zek/zekPainSmall01.ogg","zek/zekPainSmall02.ogg","zek/zekPainSmall03.ogg","zek/zekPainSmall04.ogg","zek/zekPainSmall05.ogg","zek/zekPainSmall06.ogg"}
ENT.HasLeapAttack = true -- Should the SNPC have a leap attack?
ENT.HasDeathAnimation = true -- Does it play an animation when it dies?
ENT.AnimTbl_Death = {"Death_Direction_Front_1","Death_Direction_Front_2","Death_Direction_Front_3","Death_Direction_Front_4","Death_Direction_Front_5","Death_Direction_Front_6","Death_Run_1","Death_Run_2","Death_Run_3"} -- Death Animations
ENT.DeathAnimationTime = 30 -- Time until the SNPC spawns its corpse and gets removed
ENT.DeathAnimationChance = 1 -- Put 1 if you want it to play the animation all the time
--------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnInitialize()
	self:SetCollisionBounds(Vector(20, 20, 60), Vector(-20, -20, 0))
	self:SetRenderFX(0)
	self:CreateDemTimer()
	self:ZekCloak()
	self:ZekCloakDisable()
end
--------------------------------------------------------------------------------------------------------------------------------------------
function ENT:MultipleLeapAttacks()
        local anyleapattack = math.random(1,2)	
		if anyleapattack == 1 then
        self.AnimTbl_LeapAttack = {ACT_LEAP} 
        self.LeapAttackAnimationDelay = 0 
        self.LeapAttackAnimationFaceEnemy = false
        self.LeapAttackAnimationDecreaseLengthAmount = 0
        self.LeapDistance = 200 
        self.LeapToMeleeDistance = 100 
        self.TimeUntilLeapAttackDamage = 1.60
        self.NextLeapAttackTime = 20 
        self.NextLeapAttackTime_DoRand = false
        self.NextAnyAttackTime_Leap = 1 
        self.NextAnyAttackTime_Leap_DoRand = false 
        self.LeapAttackReps = 1 
        self.LeapAttackExtraTimers = {/* Ex: 1,1.4 */} 
        self.StopLeapAttackAfterFirstHit = true 
        self.TimeUntilLeapAttackVelocity = 0.1
        self.LeapAttackUseCustomVelocity = false 
        self.LeapAttackVelocityForward = -999999999
        self.LeapAttackVelocityUp = -999999999 
        self.LeapAttackVelocityRight = 0
        self.LeapAttackDamage = 25
        self.LeapAttackDamageDistance = 100 
        self.LeapAttackDamageType = DMG_SLASH 
        self.DisableLeapAttackAnimation = false 
		self.SoundTbl_LeapAttackJump = {"zek/ZekJump01.ogg","zek/ZekJump02.ogg","zek/ZekJump03.ogg","zek/ZekJump04.ogg","zek/ZekJump05.ogg"}
   
		elseif anyleapattack == 2 then
		self.AnimTbl_LeapAttack = {"Dodge_Left","Dodge_Right"} 
        self.LeapAttackAnimationDelay = 0 
        self.LeapAttackAnimationFaceEnemy = false
        self.LeapAttackAnimationDecreaseLengthAmount = 0 
        self.LeapDistance = 200
        self.LeapToMeleeDistance = 10 
        self.TimeUntilLeapAttackDamage = 0
        self.NextLeapAttackTime = 15 
        self.NextLeapAttackTime_DoRand = false 
        self.NextAnyAttackTime_Leap = 1 
        self.NextAnyAttackTime_Leap_DoRand = false
        self.LeapAttackReps = 1
        self.LeapAttackExtraTimers = {/* Ex: 1,1.4 */} 
        self.StopLeapAttackAfterFirstHit = true 
        self.TimeUntilLeapAttackVelocity = 0.1 
        self.LeapAttackUseCustomVelocity = false
        self.LeapAttackVelocityForward = -999999999 
        self.LeapAttackVelocityUp = -999999999 
        self.LeapAttackVelocityRight = 0 
        self.LeapAttackDamage = 0
        self.LeapAttackDamageDistance = 0 
        self.LeapAttackDamageType = DMG_SLASH 
        self.DisableLeapAttackAnimation = false 
    end
end
--------------------------------------------------------------------------------------------------------------------------------------------
function ENT:MultipleMeleeAttacks()
        local anyattack = math.random(1,3)	
		if anyattack == 1 then
		self.MeleeAttackDistance = 20
		self.TimeUntilMeleeAttackDamage = 1.10
		self.NextAnyAttackTime_Melee = 2
		self.AnimTbl_MeleeAttack = {ACT_MELEE_ATTACK1}
		self.MeleeAttackAngleRadius = 100
		self.MeleeAttackAnimationFaceEnemy = false
		self.MeleeAttackDamage = 25
		self.MeleeAttackDamageAngleRadius = 25
		self.MeleeAttackDamageDistance = 50
		self.MeleeAttackDamageType = DMG_SLASH
		self.MeleeAttackAnimationDecreaseLengthAmount = 1
		self.MeleeAttackExtraTimers = {} 
		self.SoundTbl_BeforeMeleeAttack = {"zek/zekAttackMelee01.ogg","zek/zekAttackMelee02.ogg","zek/zekAttackMelee03.ogg","zek/zekAttackMelee04.ogg","zek/zekAttackMelee05.ogg","zek/zekAttackMelee06.ogg","zek/zekAttackMelee07.ogg","zek/zekAttackMelee08.ogg","zek/zekAttackMelee09.ogg","zek/zekAttackMelee10.ogg","zek/zekAttackMelee11.ogg","zek/zekAttackMelee12.ogg"}
		
		elseif anyattack == 2 then
		self.MeleeAttackDistance = 20
		self.TimeUntilMeleeAttackDamage = 0.90
		self.NextAnyAttackTime_Melee = 3
		self.AnimTbl_MeleeAttack = {ACT_MELEE_ATTACK2}
		self.MeleeAttackAngleRadius = 100
		self.MeleeAttackAnimationFaceEnemy = false
		self.MeleeAttackDamage = 20
		self.MeleeAttackDamageAngleRadius = 25
		self.MeleeAttackDamageDistance = 50
		self.MeleeAttackDamageType = DMG_SLASH
		self.MeleeAttackAnimationDecreaseLengthAmount = 0.30
		self.MeleeAttackExtraTimers = {} 
		self.SoundTbl_BeforeMeleeAttack = {"zek/zekAttackCombo01.ogg","zek/zekAttackCombo02.ogg","zek/zekAttackCombo03.ogg","zek/zekAttackCombo04.ogg"}
		
		elseif anyattack == 3 then
		self.MeleeAttackDistance = 20
		self.TimeUntilMeleeAttackDamage = 0.70
		self.NextAnyAttackTime_Melee = 2.10
		self.AnimTbl_MeleeAttack = {"Attack_Melee_2hand"}
		self.MeleeAttackAngleRadius = 100
		self.MeleeAttackAnimationFaceEnemy = false
		self.MeleeAttackDamage = 20
		self.MeleeAttackDamageAngleRadius = 25
		self.MeleeAttackDamageDistance = 50
		self.MeleeAttackDamageType = DMG_SLASH
		self.MeleeAttackAnimationDecreaseLengthAmount = 0
		self.MeleeAttackExtraTimers = {1.50} 
		self.SoundTbl_BeforeMeleeAttack = {"zek/zekAttackCombo01.ogg","zek/zekAttackCombo02.ogg","zek/zekAttackCombo03.ogg","zek/zekAttackCombo04.ogg"}
		
	
	
end
end
--------------------------------------------------------------------------------------------------------------------------------------------
function ENT:ZekCloak() 
	timer.Create("Cloak"..self:EntIndex().."",math.random(12,24), 0,function()
	if IsValid(self:GetEnemy()) then
	Enemy = self:GetEnemy()
	self:EntIndex()
	self:SetRenderFX(15)
	self:SetColor( Color( 109, 200, 253, 255 ) )
    self.GodMode = true 
    end
	end)       
end
--------------------------------------------------------------------------------------------------------------------------------------------
function ENT:ZekCloakDisable() 
	timer.Create("Cloak Disable"..self:EntIndex().."",math.random(3,6), 0,function()
	if IsValid(self:GetEnemy()) then
	Enemy = self:GetEnemy()
	self:EntIndex()
	self:SetRenderFX(0)
	self:SetColor( Color( 255, 255, 255, 255 ) )
	self.GodMode = false 
    end
	end)
end
--------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CreateDemTimer() 
	timer.Create("Zek Teleport"..self:EntIndex().."",math.random(15,20,25,30), 0,function()
	if IsValid(self:GetEnemy()) then
	Enemy = self:GetEnemy()
	self:ZekTeleporty(Enemy)
	self:VJ_ACT_PLAYACTIVITY("Teleport_Exit",true,2,true)
	sound.Play("npc/assassin/ball_zap1.wav", self:GetPos())
	ParticleEffectAttach("aurora_shockwave", PATTACH_ABSORIGIN_FOLLOW, self, 0)
        end
	end)
end
--------------------------------------------------------------------------------------------------------------------------------------------
function ENT:ZekTeleporty(target)
	if IsValid(target) then
	if self:GetPos():Distance(target:GetPos()) > 0 then
	self:SetPos(target:GetPos() + target:GetForward() * math.random(-300,300) + target:GetRight() * math.random(-300,300) + target:GetUp() * math.random(130))
	self:SetGravity(50)
	self:IsInWorld(world)
	self.GodMode = false
	self:SetRenderFX(0)
	self:SetColor( Color( 255, 255, 255, 255 ) )

	--[[
	in that self:SetPos()
	in the ()
	put something related to the enemy's position
	like
	self:SetPos(target:GetForward()*math.random(-200,200)) this would make it pick a number between -200 and 200 to teleport forward (or if it is behind)
	now I will put an example you could do:
	-self:SetPos(target:GetForward()*math.random(-200,200)+target:GetRight()*math.random(-200,200))
	
	you can also specify vectors, but that would be using as a base the ent's position or a map

	]] 
	--self:VJ_PLAY_SOUND( "path/to/spoopy/sound" )
	
	--That's it
	--The most important part is the self:SetPos() thingy
	--We could also create a timer to teleport if we are stuck
	--If we are stuck, we can't move, so the target could get away, so the timer I created should teleport the zek again within 5 seconds if the target gets away, but if not, the code below will do its work
	end
	if !self:IsMoving() then --Could say we are stuck, so we could try another SetPos to unstuck
		self:SetPos(target:GetPos() + target:GetForward() * math.random(-300,300) + target:GetRight() * math.random(-300,300) + target:GetUp() * math.random(130)) --Customize as how you want the SNPC to teleport around the target, I said some examples above
	    self:SetGravity(50)
		self:IsInWorld(world)
		self.GodMode = false
		self:SetRenderFX(0)
	    self:SetColor( Color( 255, 255, 255, 255 ) )
		end
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnRemove()
	timer.Remove( "Zek Teleport"..self:EntIndex().."" )
	timer.Remove( "Cloak"..self:EntIndex().."" )
	timer.Remove( "Cloak Disable"..self:EntIndex().."" )
end
--------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomDeathAnimationCode(dmginfo,hitgroup)
    timer.Remove( "Zek Teleport"..self:EntIndex().."" )
	timer.Remove( "Cloak"..self:EntIndex().."" )
	timer.Remove( "Cloak Disable"..self:EntIndex().."" )
end
---------------------------------------------------------------------------------------------------------------------------------------------
-- All functions and variables are located inside the base files. It can be found in the GitHub Repository: https://github.com/DrVrej/VJ-Base

/*-----------------------------------------------
	*** Copyright (c) 2012-2018 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/