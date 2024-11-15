local AddonName = "Singularity NPCs"
local AddonType = "NPC"
-------------------------------------------------------
local VJExists = file.Exists("lua/autorun/vj_base_autorun.lua","GAME")
if VJExists == true then
	include('autorun/vj_controls.lua')

	local vCat = "Singularity"
	VJ.AddCategoryInfo(vCat, {Icon = "icons/vj_singularity.png"})

	-- Mutants
	VJ.AddNPC("Mutant","npc_vj_singularity_mutant",vCat)
	-- VJ.AddNPC("Zek","npc_vj_singularity_zek",vCat)
	VJ.AddNPC("Zek Fatty","npc_vj_singularity_zek_fatty",vCat)
	-- VJ.AddNPC("Zek King","npc_vj_singularity_zek_king",vCat)
	-- VJ.AddNPC("Phase Tick","npc_vj_singularity_phasetick",vCat)
	VJ.AddNPC("Revert","npc_vj_singularity_revert",vCat)
	-- VJ.AddNPC("Radion","npc_vj_singularity_radion",vCat)

	-- Humans
	-- VJ.AddNPC("Scientist","npc_vj_singularity_scientist",vCat)
    -- VJ.AddNPC("Spetsnaz","npc_vj_singularity_spetsnaz",vCat)
	-- VJ.AddNPC("Spetsnaz Elite","npc_vj_singularity_spetsnaz_elite",vCat)
	-- VJ.AddNPC("Security Guard", "npc_vj_hlr1_securityguard", spawnCategory)

    -- VJ.AddNPC_HUMAN("Spetsnaz","npc_vj_singularity_spetsnaz",{"weapon_vj_singularity_ar9valkyrie"},vCat)
	-- VJ.AddNPC_HUMAN("Elite Spetsnaz","npc_vj_singularity_spetsnaz_elite",{"weapon_vj_singularity_gatling"},vCat)

	-- NPC Weapons
	-- VJ.AddNPCWeapon("VJ_SINGULARITY_AR9VALKYRIE", "weapon_vj_singularity_ar9valkyrie") -- seems like this isn't necessary
	-- VJ.AddNPCWeapon("VJ_SINGULARITY_GATLING", "weapon_vj_singularity_gatling")

	-- Unused/Cut Content
	-- VJ.AddNPC("Zombie","npc_vj_singularity_zombie",vCat)

	VJ.AddConVar("vj_singularity_mutant_canspawnascrawlers", 1, {FCVAR_ARCHIVE})
	VJ.AddConVar("vj_singularity_mutant_canbecrippled", 1, {FCVAR_ARCHIVE})
	VJ.AddConVar("vj_singularity_mutant_crawlerspawnchance", 5, {FCVAR_ARCHIVE})
	-- VJ.AddConVar("vj_singularity_zek_fatty_canrevive", 1, {FCVAR_ARCHIVE})
	-- VJ.AddConVar("vj_singularity_zek_fatty_canreviveanything", 0, {FCVAR_ARCHIVE})
	-- VJ.AddConVar("vj_singularity_zek_fatty_canphase", 0, {FCVAR_ARCHIVE})
	-- VJ.AddConVar("vj_singularity_zek_fatty_canbreakdoors", 1, {FCVAR_ARCHIVE})
	-- VJ.AddConVar("vj_singularity_reverts_blind", 1, {FCVAR_ARCHIVE})

	if CLIENT then
		hook.Add("PopulateToolMenu", "VJ_ADDTOMENU_SINGULARITY", function()
			spawnmenu.AddToolMenuOption("DrVrej", "SNPC Configures", "Singularity", "Singularity", "", "", function(Panel)
				if !game.SinglePlayer() && !LocalPlayer():IsAdmin() then
					Panel:AddControl("Label", {Text = "#vjbase.menu.general.admin.not"})
					Panel:AddControl( "Label", {Text = "#vjbase.menu.general.admin.only"})
					return
				end
				-- Panel:AddControl("Button", {Text = "#vjbase.menu.general.reset.everything", Command = "vj_hlr1_gonarch_babylimit 20\nvj_hlr1_bradley_deploygrunts 1\nvj_hlr1_osprey_deploysoldiers 1\nvj_hlr2_merkava_gunner 1\nvj_hlr1_assassin_cloaks 1\nvj_hlr1_corpse_effects 1\nvj_hlr1_corpse_gibbable 1\nvj_hlr2_custom_skins 1\nvj_hlr_hd 0"})
				-- Panel:AddControl("Button", {Text = "#vjbase.menu.general.reset.everything", Command = "vj_slashco_slashers_killable 0"})
				Panel:AddControl( "Label", {Text = "Please respawn any existing NPCs after changing stuff in here!"})

				-- local vj_singularity_reset = {Options = {}, CVars = {}, Label = "Gamemode-Accurate Preset:", MenuButton = "0"}
					-- vj_singularity_reset.Options["#vjbase.menugeneral.default"] = {
					-- vj_slashco_slashers_killable = "0",
				-- }
				-- Panel:AddControl("ComboBox", vj_singularity_reset)

				Panel:AddControl("Checkbox", {Label = "Mutants can be crippled?", Command = "vj_singularity_mutant_canbecrippled"})
				Panel:AddControl("Checkbox", {Label = "Mutants can spawn as crawlers?", Command = "vj_singularity_mutant_canspawnascrawlers"})
				Panel:AddControl("Slider", {Label = "Mutant crawler spawn chance:", Command = "vj_singularity_mutant_crawlerspawnchance", Min = 1, Max = 100})
				Panel:ControlHelp("This is a 1 in X chance, with X being the number this is set to.")
				Panel:ControlHelp("Here are some examples:")
				Panel:ControlHelp("1 = 100% Chance")
				Panel:ControlHelp("2 = 50% Chance")
				Panel:ControlHelp("4 = 25% Chance")
				Panel:ControlHelp("5 = 20% Chance")
				Panel:ControlHelp("10 = 10% Chance")
				Panel:ControlHelp("100 = 1% Chance")
				Panel:ControlHelp("Any other chance ConVars like this work the same way.")
				-- Panel:AddControl("Checkbox", {Label = "Mutants can dodge?", Command = "vj_singularity_mutant_canbecrippled"})
				-- Panel:ControlHelp("Mutants can try to dodge enemy NPC melee attacks if the cooldown is over.")

				-- Panel:AddControl("Checkbox", {Label = "Zek Fatties can revive?", Command = "vj_singularity_zek_fatty_canrevive"})
				-- Panel:ControlHelp("If this is enabled, Zek Fatties can revive dead Zeks.")
				-- Panel:AddControl("Checkbox", {Label = "Zek Fatties can revive anything?", Command = "vj_singularity_zek_fatty_canrevive"})
				-- Panel:ControlHelp("If this is enabled, Zek Fatties can revive any Singularity creature that leaves a corpse.")
				-- Panel:ControlHelp("If this is disabled, they can only revive Zeks.")
				-- Panel:AddControl("Checkbox", {Label = "Zek Fatties can phase?", Command = "vj_singularity_zek_fatty_canphase"})
				-- Panel:AddControl("Checkbox", {Label = "Zek Fatties can break down doors?", Command = "vj_singularity_zek_fatty_canbreakdoors"})

				-- Panel:AddControl("Checkbox", {Label = "Reverts are blind?", Command = "vj_singularity_reverts_blind"})
				/*
				convar order should go like this
				- visuals
				- audio
				- general behavior stuff
				- ability-specific stuff
				
				-- also do it in the npc order above
				*/

			end)
		end)
	end

	/*
	examples
	
	Panel:AddControl("Checkbox", {Label = "", Command = ""})
	
	Panel:AddControl("Slider", {Label = "", Command = "", Min = 1, Max = 10000})

	local example_combobox = {Options = {}, CVars = {}, Label = "", MenuButton = "0"}
	example_combobox.Options["Default"] = {convar_name = 1}
	example_combobox.Options["Option 1"] = {convar_name = 2}
	example_combobox.Options["Option 2"] = {convar_name = 3}
	Panel:AddControl("ComboBox", example_combobox)
	
	Panel:ControlHelp("")
	
	Panel:AddControl( "Label", {Text = "Note: Only admins can change these settings!"})
	*/


-- !!!!!! DON'T TOUCH ANYTHING BELOW THIS !!!!!! -------------------------------------------------------------------------------------------------------------------------
	AddCSLuaFile()
	VJ.AddAddonProperty(AddonName, AddonType)
else
	if CLIENT then
		chat.AddText(Color(0, 200, 200), AddonName,
		Color(0, 255, 0), " was unable to install, you are missing ",
		Color(255, 100, 0), "VJ Base!")
	end
	
	timer.Simple(1, function()
		if not VJBASE_ERROR_MISSING then
			VJBASE_ERROR_MISSING = true
			if CLIENT then
				// Get rid of old error messages from addons running on older code...
				if VJF && type(VJF) == "Panel" then
					VJF:Close()
				end
				VJF = true
				
				local frame = vgui.Create("DFrame")
				frame:SetSize(600, 160)
				frame:SetPos((ScrW() - frame:GetWide()) / 2, (ScrH() - frame:GetTall()) / 2)
				frame:SetTitle("Error: VJ Base is missing!")
				frame:SetBackgroundBlur(true)
				frame:MakePopup()
	
				local labelTitle = vgui.Create("DLabel", frame)
				labelTitle:SetPos(250, 30)
				labelTitle:SetText("VJ BASE IS MISSING!")
				labelTitle:SetTextColor(Color(255,128,128))
				labelTitle:SizeToContents()
				
				local label1 = vgui.Create("DLabel", frame)
				label1:SetPos(170, 50)
				label1:SetText("Garry's Mod was unable to find VJ Base in your files!")
				label1:SizeToContents()
				
				local label2 = vgui.Create("DLabel", frame)
				label2:SetPos(10, 70)
				label2:SetText("You have an addon installed that requires VJ Base but VJ Base is missing. To install VJ Base, click on the link below. Once\n                                                   installed, make sure it is enabled and then restart your game.")
				label2:SizeToContents()
				
				local link = vgui.Create("DLabelURL", frame)
				link:SetSize(300, 20)
				link:SetPos(195, 100)
				link:SetText("VJ_Base_Download_Link_(Steam_Workshop)")
				link:SetURL("https://steamcommunity.com/sharedfiles/filedetails/?id=131759821")
				
				local buttonClose = vgui.Create("DButton", frame)
				buttonClose:SetText("CLOSE")
				buttonClose:SetPos(260, 120)
				buttonClose:SetSize(80, 35)
				buttonClose.DoClick = function()
					frame:Close()
				end
			elseif (SERVER) then
				VJF = true
				timer.Remove("VJBASEMissing")
				timer.Create("VJBASE_ERROR_CONFLICT", 5, 0, function()
					print("VJ Base is missing! Download it from the Steam Workshop! Link: https://steamcommunity.com/sharedfiles/filedetails/?id=131759821")
				end)
			end
		end
	end)
end