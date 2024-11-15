AddCSLuaFile("shared.lua")
include("shared.lua")
/*-----------------------------------------------
	*** Copyright (c) 2012-2018 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
ENT.Model = {"models/Items/AR2_Grenade.mdl"} -- The models it should spawn with | Picks a random one from the table
ENT.RemoveOnHit = true -- Should it remove itself when it touches something? | It will run the hit sound, place a decal, etc.
ENT.DoesRadiusDamage = false -- Should it do a blast damage when it hits something?
ENT.DoesDirectDamage = true -- Should it do a direct damage when it hits something?
ENT.DirectDamage = 1 -- How much damage should it do when it hits something
ENT.DirectDamageType = DMG_BULLET -- Damage type
ENT.HasStartupSounds = true -- Does it make a sound when the projectile is created?
ENT.SoundTbl_Startup = {"weapons/ar2/fire1.wav"}
ENT.StartupSoundChance = 1 -- How much chance to play the sound? 1 = always
ENT.StartupSoundLevel = 80
ENT.StartupSoundPitch1 = 30
ENT.StartupSoundPitch2 = 90
ENT.StartupSoundPitch2 = 90
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnInitialize()
    ParticleEffectAttach("steam_jet_50", PATTACH_ABSORIGIN_FOLLOW, self, 0)
	ParticleEffectAttach("explosion_turret_break_sparks", PATTACH_ABSORIGIN_FOLLOW, self, 0)
	self:SetNoDraw(true)
end
---------------------------------------------------------------------------------------------------------------------------------------------
/*-----------------------------------------------
	*** Copyright (c) 2012-2018 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/