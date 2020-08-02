local L = LibStub("AceLocale-3.0"):GetLocale("PallyPower")

PallyPower.commPrefix = "PLPWR"
C_ChatInfo.RegisterAddonMessagePrefix(PallyPower.commPrefix)

PALLYPOWER_MAXCLASSES = 9
PALLYPOWER_MAXPERCLASS = 15
PALLYPOWER_NORMALBLESSINGDURATION = 5 * 60
PALLYPOWER_GREATERBLESSINGDURATION = 15 * 60
PALLYPOWER_MAXAURAS = 7

PALLYPOWER_DEFAULT_VALUES = {
	profile = {
		aura = 1,
		auras = true,
		autobuff = {
			autobutton = true,
			waitforpeople = true
		},
		border = "Blizzard Tooltip",
		buffscale = 0.90,
		cBuffNeedAll = {r = 1.0, g = 0.0, b = 0.0, t = 0.5},
		cBuffNeedSome = {r = 1.0, g = 1.0, b = 0.5, t = 0.5},
		cBuffNeedSpecial = {r = 0.0, g = 0.0, b = 1.0, t = 0.5},
		cBuffGood = {r = 0.0, g = 0.7, b = 0.0, t = 0.5},
		configscale = 0.90,
		display = {
			buffDuration = true,
			buttonWidth = 100,
			buttonHeight = 34,
			enableDragHandle = true,
			frameLocked = false,
			HideKeyText = false,
			HideCount = false,
			HideCountText = false,
			HideTimerText = false,
			LockBuffBars = false,
			showPlayerButtons = true,
			showClassButtons = true
		},
		enabled = true,
		layout = "Layout 2",
		mainTank = true,
		mainTankGSpellsDP = 4,
		mainTankSpellsDP = 7,
		mainTankGSpellsW = 4,
		mainTankSpellsW = 7,
		mainAssist = false,
		mainAssistGSpellsDP = 4,
		mainAssistSpellsDP = 7,
		mainAssistGSpellsW = 4,
		mainAssistSpellsW = 7,
		minimap = {
            ["minimapPos"] = 190,
            ["show"] = true,
		},
		ReportChannel = 0,
		rfbuff = true,
		SalvInCombat = false,
		seal = 4,
		ShowInParty = true,
		ShowPets = true,
		ShowTooltips = true,
		ShowWhenSolo = true,
		skin = "Smooth",
		SmartBuffs = true
	}
}

PALLYPOWER_OTHER_VALUES = {
	profile = {
		aura = 0,
		auras = false,
		autobuff = {
			autobutton = false,
			waitforpeople = false
		},
		border = "Blizzard Tooltip",
		buffscale = 0.90,
		cBuffNeedAll = {r = 1.0, g = 0.0, b = 0.0, t = 0.5},
		cBuffNeedSome = {r = 1.0, g = 1.0, b = 0.5, t = 0.5},
		cBuffNeedSpecial = {r = 0.0, g = 0.0, b = 1.0, t = 0.5},
		cBuffGood = {r = 0.0, g = 0.7, b = 0.0, t = 0.5},
		configscale = 0.90,
		display = {
			buffDuration = false,
			buttonWidth = 100,
			buttonHeight = 34,
			enableDragHandle = false,
			frameLocked = false,
			HideKeyText = false,
			HideCount = false,
			HideCountText = false,
			HideTimerText = false,
			LockBuffBars = false,
			showPlayerButtons = false,
			showClassButtons = false
		},
		enabled = true,
		layout = "Layout 2",
		mainTank = false,
		mainTankGSpellsDP = 0,
		mainTankSpellsDP = 0,
		mainTankGSpellsW = 0,
		mainTankSpellsW = 0,
		mainAssist = false,
		mainAssistGSpellsDP = 0,
		mainAssistSpellsDP = 0,
		mainAssistGSpellsW = 0,
		mainAssistSpellsW = 0,
		minimap = {
            ["minimapPos"] = 190,
            ["show"] = true,
		},
		ReportChannel = 0,
		rfbuff = false,
		SalvInCombat = false,
		seal = 0,
		ShowInParty = true,
		ShowPets = true,
		ShowTooltips = true,
		ShowWhenSolo = true,
		skin = "Smooth",
		SmartBuffs = false
	}
}

PallyPower_Credits1 = "Originally written by Aznamir"
PallyPower_Credits2 = "Updated for Classic by Dyaxler"

PallyPower.BuffBarTitle = "Pally Buffs (%d)"

PallyPower.ClassID = {
	[1] = "WARRIOR",
	[2] = "ROGUE",
	[3] = "PRIEST",
	[4] = "DRUID",
	[5] = "PALADIN",
	[6] = "HUNTER",
	[7] = "MAGE",
	[8] = "WARLOCK",
	[9] = "PET"
}

PallyPower.ClassToID = {
	["WARRIOR"] = 1,
	["ROGUE"] = 2,
	["PRIEST"] = 3,
	["DRUID"] = 4,
	["PALADIN"] = 5,
	["HUNTER"] = 6,
	["MAGE"] = 7,
	["WARLOCK"] = 8,
	["PET"] = 9
}

PallyPower.ClassIcons = {
	[1] = "Interface\\AddOns\\PallyPower\\Icons\\Warrior",
	[2] = "Interface\\AddOns\\PallyPower\\Icons\\Rogue",
	[3] = "Interface\\AddOns\\PallyPower\\Icons\\Priest",
	[4] = "Interface\\AddOns\\PallyPower\\Icons\\Druid",
	[5] = "Interface\\AddOns\\PallyPower\\Icons\\Paladin",
	[6] = "Interface\\AddOns\\PallyPower\\Icons\\Hunter",
	[7] = "Interface\\AddOns\\PallyPower\\Icons\\Mage",
	[8] = "Interface\\AddOns\\PallyPower\\Icons\\Warlock",
	[9] = "Interface\\AddOns\\PallyPower\\Icons\\Pet"
}

PallyPower.BlessingIcons = {
	[-1] = "",
	[1] = "Interface\\Icons\\Spell_Holy_GreaterBlessingofWisdom",
	[2] = "Interface\\Icons\\Spell_Holy_GreaterBlessingofKings",
	[3] = "Interface\\Icons\\Spell_Magic_GreaterBlessingofKings",
	[4] = "Interface\\Icons\\Spell_Holy_GreaterBlessingofSalvation",
	[5] = "Interface\\Icons\\Spell_Holy_GreaterBlessingofLight",
	[6] = "Interface\\Icons\\Spell_Holy_GreaterBlessingofSanctuary",
	[7] = "Interface\\Icons\\Spell_Holy_SealOfSacrifice"
}

PallyPower.NormalBlessingIcons = {
	[-1] = "",
	[1] = "Interface\\Icons\\Spell_Holy_SealOfWisdom",
	[2] = "Interface\\Icons\\Spell_Holy_FistOfJustice",
	[3] = "Interface\\Icons\\Spell_Magic_MageArmor",
	[4] = "Interface\\Icons\\Spell_Holy_SealOfSalvation",
	[5] = "Interface\\Icons\\Spell_Holy_PrayerOfHealing02",
	[6] = "Interface\\Icons\\Spell_Nature_LightningShield",
	[7] = "Interface\\Icons\\Spell_Holy_SealOfSacrifice"
}

PallyPower.AuraIcons = {
	[-1] = "",
	[1] = "Interface\\Icons\\Spell_Holy_DevotionAura",
	[2] = "Interface\\Icons\\Spell_Holy_AuraOfLight",
	[3] = "Interface\\Icons\\Spell_Holy_MindSooth",
	[4] = "Interface\\Icons\\Spell_Shadow_SealOfKings",
	[5] = "Interface\\Icons\\Spell_Frost_WizardMark",
	[6] = "Interface\\Icons\\Spell_Fire_SealOfFire",
	[7] = "Interface\\Icons\\Spell_Holy_MindVision"
}

-- XML Aliases
PALLYPOWER_NAME = "  " .. L["PP_NAME"] .. " (" .. string.trim(GetAddOnMetadata("PallyPower", "Version")) .. ")"
PALLYPOWER_CLEAR = L["PP_CLEAR"]
PALLYPOWER_CLEAR_DESC = L["PP_CLEAR_DESC"]
PALLYPOWER_REFRESH = L["PP_REFRESH"]
PALLYPOWER_REFRESH_DESC = L["PP_REFRESH_DESC"]
PALLYPOWER_AUTOASSIGN = L["AUTOASSIGN"]
PALLYPOWER_AUTOASSIGN_DESC = L["AUTOASSIGN_DESC"]
PALLYPOWER_REPORT = L["BRPT"]
PALLYPOWER_REPORT_DESC = L["BRPT_DESC"]
PALLYPOWER_FREEASSIGN = L["FREEASSIGN"]
PALLYPOWER_FREEASSIGN_DESC = L["FREEASSIGN_DESC"]
PALLYPOWER_ASSIGNMENTS1 = L["PP_RAS1"]
PALLYPOWER_ASSIGNMENTS2 = L["PP_RAS2"]
PALLYPOWER_ASSIGNMENTS3 = L["PP_RAS3"]
PALLYPOWER_ASSIGNMENTS4 = L["PP_RAS4"]
PALLYPOWER_OPTIONS = L["OPTIONS"]
PALLYPOWER_OPTIONS_DESC = L["OPTIONS_DESC"]

PallyPower.CONFIG_DRAGHANDLE = L["DRAGHANDLE"]
PallyPower.CONFIG_RESIZEGRIP = L["RESIZEGRIP"]

BINDING_NAME_AUTOKEY1 = L["AUTOKEY1"]
BINDING_NAME_AUTOKEY2 = L["AUTOKEY2"]

-- get translations directly
PallyPower.Spells = {
	[0] = "",
	[1] = GetSpellInfo(19742), --BS["Blessing of Wisdom"],
	[2] = GetSpellInfo(19740), --BS["Blessing of Might"],
	[3] = GetSpellInfo(20217), --BS["Blessing of Kings"],
	[4] = GetSpellInfo(1038), --BS["Blessing of Salvation"],
	[5] = GetSpellInfo(19977), --BS["Blessing of Light"],
	[6] = GetSpellInfo(20911), --BS["Blessing of Sanctuary"],
	[7] = GetSpellInfo(6940) --BS["Blessing of Sacrifice"],
}

PallyPower.GSpells = {
	[0] = "",
	[1] = GetSpellInfo(25894), --BS["Greater Blessing of Wisdom"], (R1:54, R2:60)
	[2] = GetSpellInfo(25782), --BS["Greater Blessing of Might"], (R1:52, R2:60)
	[3] = GetSpellInfo(25898), --BS["Greater Blessing of Kings"],
	[4] = GetSpellInfo(25895), --BS["Greater Blessing of Salvation"],
	[5] = GetSpellInfo(25890), --BS["Greater Blessing of Light"],
	[6] = GetSpellInfo(25899) --BS["Greater Blessing of Sanctuary"],
}

PallyPower.GSpellsSet = {
    [25894]=true, --BS["Greater Blessing of Wisdom"], R1
    [25918]=true, --BS["Greater Blessing of Wisdom"], R2
    [25782]=true, --BS["Greater Blessing of Might"], R1
    [25916]=true, --BS["Greater Blessing of Might"], R2
    [25898]=true, --BS["Greater Blessing of Kings"],
    [25895]=true, --BS["Greater Blessing of Salvation"],
    [25890]=true, --BS["Greater Blessing of Light"],
    [25899]=true, --BS["Greater Blessing of Sanctuary"],
}

-- spell ranks
PallyPower.NormalBuffs = {
	[1] = {{50, 25290}, {44, 19854}, {34, 19853}, {24, 19852}, {14, 19850}, {4, 19742}},
	[2] = {{50, 25291}, {42, 19838}, {32, 19837}, {22, 19836}, {12, 19835}, {4, 19834}, {0, 19740}},
	[3] = {{10, 20217}},
	[4] = {{16, 1038}},
	[5] = {{50, 19979}, {40, 19978}, {30, 19977}},
	[6] = {{50, 20914}, {40, 20913}, {30, 20912}, {20, 20911}},
	[7] = {{44, 20729}, {36, 6940}}
}

PallyPower.GreaterBuffs = {
	[1] = {{50, 25918}, {44, 25894}},
	[2] = {{50, 25916}, {42, 25782}},
	[3] = {{50, 25898}},
	[4] = {{50, 25895}},
	[5] = {{50, 25890}},
	[6] = {{50, 25899}}
}

PallyPower.RFSpell = GetSpellInfo(25780) --BS["Righteous Fury"]

PallyPower.HLSpell = GetSpellInfo(635)

PallyPower.Skins = {
	["None"] = "Interface\\Tooltips\\UI-Tooltip-Background",
	["Banto"] = "Interface\\AddOns\\PallyPower\\Skins\\Banto",
	["BantoBarReverse"] = "Interface\\AddOns\\PallyPower\\Skins\\BantoBarReverse",
	["Glaze"] = "Interface\\AddOns\\PallyPower\\Skins\\Glaze",
	["Gloss"] = "Interface\\AddOns\\PallyPower\\Skins\\Gloss",
	["Healbot"] = "Interface\\AddOns\\PallyPower\\Skins\\Healbot",
	["oCB"] = "Interface\\AddOns\\PallyPower\\Skins\\oCB",
	["Smooth"] = "Interface\\AddOns\\PallyPower\\Skins\\Smooth"
}

PallyPower.Edge = "Interface\\Tooltips\\UI-Tooltip-Border"

PallyPower.Seals = {
	[0] = "",
	[1] = GetSpellInfo(20164), -- seal of justice
	[2] = GetSpellInfo(20165), -- seal of light
	[3] = GetSpellInfo(20166), -- seal of wisdom
	[4] = GetSpellInfo(21084), -- seal of righteousness
	[5] = GetSpellInfo(21082), -- seal of the crusader
	[6] = GetSpellInfo(20375) -- seal of command
}

PallyPower.Auras = {
	[0] = "",
	[1] = GetSpellInfo(465), --BS["Devotion Aura"],
	[2] = GetSpellInfo(7294), --BS["Retribution Aura"],
	[3] = GetSpellInfo(19746), --BS["Concentration Aura"],
	[4] = GetSpellInfo(19876), --BS["Shadow Resistance Aura"],
	[5] = GetSpellInfo(19888), --BS["Frost Resistance Aura"],
	[6] = GetSpellInfo(19891), --BS["Fire Resistance Aura"],
	[7] = GetSpellInfo(20218) --BS["Sanctity Aura"],
}

PallyPower.Cooldowns = {
	[1] = {633, 2800, 10310}, -- Improved Lay On Hands
	[2] = {19752} -- Divine Intervention
}

-- Buff templates
-- Table [1] is for a single Paladin but not all Paladins have Kings and if it's not there it defaults to the next prio so something gets assigned so on and so forth down the list of tables.

-- Paladin Battleground Templates
PallyPower.BattleGroundTemplates = {
	[1] = {
		[1] = {3, 2, 6, 5},
		[2] = {2, 3, 6, 5},
		[3] = {3, 1, 6, 5},
		[4] = {3, 2, 6, 1, 5},
		[5] = {3, 2, 6, 1, 5},
		[6] = {3, 1, 6, 5},
		[7] = {3, 1, 6, 5},
		[8] = {3, 1, 6, 5},
		[9] = {3, 2, 6, 5}
	},
	[2] = {
		[1] = {3, 2, 6, 5},
		[2] = {3, 2, 6, 5},
		[3] = {3, 1, 6, 5},
		[4] = {3, 2, 6, 1, 5},
		[5] = {3, 2, 6, 1, 5},
		[6] = {3, 1, 6, 5},
		[7] = {3, 1, 6, 5},
		[8] = {3, 1, 6, 5},
		[9] = {3, 2, 6, 5}
	},
	[3] = {
		[1] = {3, 2, 6, 5},
		[2] = {3, 2, 6, 5},
		[3] = {3, 1, 6, 5},
		[4] = {3, 2, 6, 1, 5},
		[5] = {3, 2, 6, 1, 5},
		[6] = {3, 1, 6, 5},
		[7] = {3, 1, 6, 5},
		[8] = {3, 1, 6, 5},
		[9] = {3, 2, 6, 5}
	},
	[4] = {
		[1] = {3, 2, 6, 5},
		[2] = {3, 2, 6, 5},
		[3] = {3, 1, 6, 5},
		[4] = {3, 2, 6, 1, 5},
		[5] = {3, 2, 6, 1, 5},
		[6] = {3, 1, 6, 5},
		[7] = {3, 1, 6, 5},
		[8] = {3, 1, 6, 5},
		[9] = {3, 2, 6, 5}
	},
	[5] = {
		[1] = {3, 2, 6, 5},
		[2] = {3, 2, 6, 5},
		[3] = {3, 1, 6, 5},
		[4] = {3, 2, 6, 1, 5},
		[5] = {3, 2, 6, 1, 5},
		[6] = {3, 1, 6, 5},
		[7] = {3, 1, 6, 5},
		[8] = {3, 1, 6, 5},
		[9] = {3, 2, 6, 5}
	},
	[6] = {
		[1] = {3, 2, 0, 6, 5},
		[2] = {3, 2, 0, 6, 5},
		[3] = {3, 0, 1, 6, 5},
		[4] = {3, 2, 1, 6, 5},
		[5] = {3, 2, 1, 6, 5},
		[6] = {3, 0, 1, 6, 5},
		[7] = {3, 0, 1, 6, 5},
		[8] = {3, 0, 1, 6, 5},
		[9] = {3, 2, 0, 6, 5}
	}
}

-- Paladin Raid Templates
PallyPower.RaidTemplates = {
	[1] = {
		[1] = {4, 3, 2},
		[2] = {4, 2, 3},
		[3] = {4, 3, 1},
		[4] = {4, 3, 1, 2},
		[5] = {4, 3, 1, 2},
		[6] = {4, 3, 1},
		[7] = {4, 3, 1},
		[8] = {4, 3, 1},
		[9] = {4, 3, 2}
	},
	[2] = {
		[1] = {4, 3, 2, 6, 5},
		[2] = {4, 2, 3, 6, 5},
		[3] = {4, 3, 1, 6, 5},
		[4] = {4, 3, 1, 2, 6, 5},
		[5] = {4, 3, 1, 2, 6, 5},
		[6] = {4, 3, 1, 6, 5},
		[7] = {4, 3, 1, 6, 5},
		[8] = {4, 3, 1, 6, 5},
		[9] = {4, 3, 2, 6, 5}
	},
	[3] = {
		[1] = {4, 3, 2, 6, 5},
		[2] = {4, 3, 2, 6, 5},
		[3] = {4, 3, 1, 6, 5},
		[4] = {4, 3, 1, 2, 6, 5},
		[5] = {4, 3, 1, 2, 6, 5},
		[6] = {4, 3, 1, 6, 5},
		[7] = {4, 3, 1, 6, 5},
		[8] = {4, 3, 1, 6, 5},
		[9] = {4, 3, 2, 6, 5}
	},
	[4] = {
		[1] = {6, 4, 3, 2, 5},
		[2] = {6, 4, 3, 2, 5},
		[3] = {6, 4, 3, 1, 5},
		[4] = {6, 4, 3, 1, 2, 5},
		[5] = {6, 4, 3, 1, 2, 5},
		[6] = {6, 4, 3, 1, 5},
		[7] = {6, 4, 3, 1, 5},
		[8] = {6, 4, 3, 1, 5},
		[9] = {6, 4, 3, 2, 5}
	},
	[5] = {
		[1] = {6, 4, 3, 2, 5},
		[2] = {6, 4, 3, 2, 5},
		[3] = {6, 4, 3, 1, 5},
		[4] = {6, 4, 3, 1, 2, 5},
		[5] = {6, 4, 3, 1, 2, 5},
		[6] = {6, 4, 3, 1, 5},
		[7] = {6, 4, 3, 1, 5},
		[8] = {6, 4, 3, 1, 5},
		[9] = {6, 4, 3, 2, 5}
	},
	[6] = {
		[1] = {6, 4, 3, 2, 0, 5},
		[2] = {6, 4, 3, 2, 0, 5},
		[3] = {6, 4, 3, 0, 1, 5},
		[4] = {6, 4, 3, 2, 1, 5},
		[5] = {6, 4, 3, 2, 1, 5},
		[6] = {6, 4, 3, 0, 1, 5},
		[7] = {6, 4, 3, 0, 1, 5},
		[8] = {6, 4, 3, 0, 1, 5},
		[9] = {6, 4, 3, 2, 0, 5}
	}
}
-- Normal Paladin Tmplates
PallyPower.Templates = {
	[1] = {
		[1] = {3, 2, 4, 5},
		[2] = {2, 3, 4, 5},
		[3] = {3, 1, 4, 5},
		[4] = {3, 1, 4, 2, 5},
		[5] = {3, 1, 4, 2, 5},
		[6] = {3, 1, 4, 5},
		[7] = {3, 1, 4, 5},
		[8] = {3, 1, 4, 5},
		[9] = {3, 2, 4, 1, 5}
	},
	[2] = {
		[1] = {3, 2, 4, 5},
		[2] = {3, 2, 4, 5},
		[3] = {3, 1, 4, 5},
		[4] = {3, 1, 4, 2, 5},
		[5] = {3, 1, 4, 2, 5},
		[6] = {3, 1, 4, 5},
		[7] = {3, 1, 4, 5},
		[8] = {3, 1, 4, 5},
		[9] = {3, 2, 4, 1, 5}
	},
	[3] = {
		[1] = {3, 2, 4, 5},
		[2] = {3, 2, 4, 5},
		[3] = {3, 1, 4, 5},
		[4] = {3, 1, 4, 2, 5},
		[5] = {3, 1, 4, 2, 5},
		[6] = {3, 1, 4, 5},
		[7] = {3, 1, 4, 5},
		[8] = {3, 1, 4, 5},
		[9] = {3, 2, 4, 1, 5}
	},
	[4] = {
		[1] = {6, 4, 3, 2, 5},
		[2] = {6, 4, 3, 2, 5},
		[3] = {6, 4, 3, 1, 5},
		[4] = {6, 4, 3, 1, 2, 5},
		[5] = {6, 4, 3, 1, 2, 5},
		[6] = {6, 4, 3, 1, 5},
		[7] = {6, 4, 3, 1, 5},
		[8] = {6, 4, 3, 1, 5},
		[9] = {6, 4, 3, 2, 1, 5}
	},
	[5] = {
		[1] = {6, 4, 3, 2, 5},
		[2] = {6, 4, 3, 2, 5},
		[3] = {6, 4, 3, 1, 5},
		[4] = {6, 4, 3, 1, 2, 5},
		[5] = {6, 4, 3, 1, 2, 5},
		[6] = {6, 4, 3, 1, 5},
		[7] = {6, 4, 3, 1, 5},
		[8] = {6, 4, 3, 1, 5},
		[9] = {6, 4, 3, 2, 1, 5}
	},
	[6] = {
		[1] = {6, 4, 3, 2, 0, 5},
		[2] = {6, 4, 3, 2, 0, 5},
		[3] = {6, 4, 3, 0, 1, 5},
		[4] = {6, 4, 3, 2, 1, 5},
		[5] = {6, 4, 3, 2, 1, 5},
		[6] = {6, 4, 3, 0, 1, 5},
		[7] = {6, 4, 3, 0, 1, 5},
		[8] = {6, 4, 3, 0, 1, 5},
		[9] = {6, 4, 3, 2, 0, 5}
	}
}

-- Layouts
PallyPower.Layouts = {
	-- Vertical Down | Right
	["Layout 1"] = {
		c = {
			[1] = {
				x = 0,
				y = 0,
				p = {
					[1] = {x = 1, y = 0},
					[2] = {x = 1, y = -1},
					[3] = {x = 1, y = -2},
					[4] = {x = 1, y = -3},
					[5] = {x = 1, y = -4},
					[6] = {x = 1, y = -5},
					[7] = {x = 1, y = -6},
					[8] = {x = 1, y = -7},
					[9] = {x = 1, y = -8},
					[10] = {x = 1, y = -9},
					[11] = {x = 1, y = -10},
					[12] = {x = 1, y = -11},
					[13] = {x = 1, y = -12},
					[14] = {x = 1, y = -13},
					[15] = {x = 1, y = -14}
				}
			},
			[2] = {
				x = 0,
				y = -1,
				p = {
					[1] = {x = 1, y = 0},
					[2] = {x = 1, y = -1},
					[3] = {x = 1, y = -2},
					[4] = {x = 1, y = -3},
					[5] = {x = 1, y = -4},
					[6] = {x = 1, y = -5},
					[7] = {x = 1, y = -6},
					[8] = {x = 1, y = -7},
					[9] = {x = 1, y = -8},
					[10] = {x = 1, y = -9},
					[11] = {x = 1, y = -10},
					[12] = {x = 1, y = -11},
					[13] = {x = 1, y = -12},
					[14] = {x = 1, y = -13},
					[15] = {x = 1, y = -14}
				}
			},
			[3] = {
				x = 0,
				y = -2,
				p = {
					[1] = {x = 1, y = 0},
					[2] = {x = 1, y = -1},
					[3] = {x = 1, y = -2},
					[4] = {x = 1, y = -3},
					[5] = {x = 1, y = -4},
					[6] = {x = 1, y = -5},
					[7] = {x = 1, y = -6},
					[8] = {x = 1, y = -7},
					[9] = {x = 1, y = -8},
					[10] = {x = 1, y = -9},
					[11] = {x = 1, y = -10},
					[12] = {x = 1, y = -11},
					[13] = {x = 1, y = -12},
					[14] = {x = 1, y = -13},
					[15] = {x = 1, y = -14}
				}
			},
			[4] = {
				x = 0,
				y = -3,
				p = {
					[1] = {x = 1, y = 0},
					[2] = {x = 1, y = -1},
					[3] = {x = 1, y = -2},
					[4] = {x = 1, y = -3},
					[5] = {x = 1, y = -4},
					[6] = {x = 1, y = -5},
					[7] = {x = 1, y = -6},
					[8] = {x = 1, y = -7},
					[9] = {x = 1, y = -8},
					[10] = {x = 1, y = -9},
					[11] = {x = 1, y = -10},
					[12] = {x = 1, y = -11},
					[13] = {x = 1, y = -12},
					[14] = {x = 1, y = -13},
					[15] = {x = 1, y = -14}
				}
			},
			[5] = {
				x = 0,
				y = -4,
				p = {
					[1] = {x = 1, y = 0},
					[2] = {x = 1, y = -1},
					[3] = {x = 1, y = -2},
					[4] = {x = 1, y = -3},
					[5] = {x = 1, y = -4},
					[6] = {x = 1, y = -5},
					[7] = {x = 1, y = -6},
					[8] = {x = 1, y = -7},
					[9] = {x = 1, y = -8},
					[10] = {x = 1, y = -9},
					[11] = {x = 1, y = -10},
					[12] = {x = 1, y = -11},
					[13] = {x = 1, y = -12},
					[14] = {x = 1, y = -13},
					[15] = {x = 1, y = -14}
				}
			},
			[6] = {
				x = 0,
				y = -5,
				p = {
					[1] = {x = 1, y = 0},
					[2] = {x = 1, y = -1},
					[3] = {x = 1, y = -2},
					[4] = {x = 1, y = -3},
					[5] = {x = 1, y = -4},
					[6] = {x = 1, y = -5},
					[7] = {x = 1, y = -6},
					[8] = {x = 1, y = -7},
					[9] = {x = 1, y = -8},
					[10] = {x = 1, y = -9},
					[11] = {x = 1, y = -10},
					[12] = {x = 1, y = -11},
					[13] = {x = 1, y = -12},
					[14] = {x = 1, y = -13},
					[15] = {x = 1, y = -14}
				}
			},
			[7] = {
				x = 0,
				y = -6,
				p = {
					[1] = {x = 1, y = 0},
					[2] = {x = 1, y = -1},
					[3] = {x = 1, y = -2},
					[4] = {x = 1, y = -3},
					[5] = {x = 1, y = -4},
					[6] = {x = 1, y = -5},
					[7] = {x = 1, y = -6},
					[8] = {x = 1, y = -7},
					[9] = {x = 1, y = -8},
					[10] = {x = 1, y = -9},
					[11] = {x = 1, y = -10},
					[12] = {x = 1, y = -11},
					[13] = {x = 1, y = -12},
					[14] = {x = 1, y = -13},
					[15] = {x = 1, y = -14}
				}
			},
			[8] = {
				x = 0,
				y = -7,
				p = {
					[1] = {x = 1, y = 0},
					[2] = {x = 1, y = -1},
					[3] = {x = 1, y = -2},
					[4] = {x = 1, y = -3},
					[5] = {x = 1, y = -4},
					[6] = {x = 1, y = -5},
					[7] = {x = 1, y = -6},
					[8] = {x = 1, y = -7},
					[9] = {x = 1, y = -8},
					[10] = {x = 1, y = -9},
					[11] = {x = 1, y = -10},
					[12] = {x = 1, y = -11},
					[13] = {x = 1, y = -12},
					[14] = {x = 1, y = -13},
					[15] = {x = 1, y = -14}
				}
			},
			[9] = {
				x = 0,
				y = -8,
				p = {
					[1] = {x = 1, y = 0},
					[2] = {x = 1, y = -1},
					[3] = {x = 1, y = -2},
					[4] = {x = 1, y = -3},
					[5] = {x = 1, y = -4},
					[6] = {x = 1, y = -5},
					[7] = {x = 1, y = -6},
					[8] = {x = 1, y = -7},
					[9] = {x = 1, y = -8},
					[10] = {x = 1, y = -9},
					[11] = {x = 1, y = -10},
					[12] = {x = 1, y = -11},
					[13] = {x = 1, y = -12},
					[14] = {x = 1, y = -13},
					[15] = {x = 1, y = -14}
				}
			},
			[10] = {
				x = 0,
				y = -9,
				p = {
					[1] = {x = 1, y = 0},
					[2] = {x = 1, y = -1},
					[3] = {x = 1, y = -2},
					[4] = {x = 1, y = -3},
					[5] = {x = 1, y = -4},
					[6] = {x = 1, y = -5},
					[7] = {x = 1, y = -6},
					[8] = {x = 1, y = -7},
					[9] = {x = 1, y = -8},
					[10] = {x = 1, y = -9},
					[11] = {x = 1, y = -10},
					[12] = {x = 1, y = -11},
					[13] = {x = 1, y = -12},
					[14] = {x = 1, y = -13},
					[15] = {x = 1, y = -14}
				}
			},
			[11] = {
				x = 0,
				y = -10,
				p = {
					[1] = {x = 1, y = 0},
					[2] = {x = 1, y = -1},
					[3] = {x = 1, y = -2},
					[4] = {x = 1, y = -3},
					[5] = {x = 1, y = -4},
					[6] = {x = 1, y = -5},
					[7] = {x = 1, y = -6},
					[8] = {x = 1, y = -7},
					[9] = {x = 1, y = -8},
					[10] = {x = 1, y = -9},
					[11] = {x = 1, y = -10},
					[12] = {x = 1, y = -11},
					[13] = {x = 1, y = -12},
					[14] = {x = 1, y = -13},
					[15] = {x = 1, y = -14}
				}
			}
		},
		ab = {x = 0, y = 1},
		rf = {x = 0, y = 2},
		rfd = {x = 0, y = 1},
		au = {x = 0, y = 3},
		aud1 = {x = 0, y = 2},
		aud2 = {x = 0, y = 1}
	},
	-- Vertical Down | Left
	["Layout 2"] = {
		c = {
			[1] = {
				x = 0,
				y = 0,
				p = {
					[1] = {x = -1, y = 0},
					[2] = {x = -1, y = -1},
					[3] = {x = -1, y = -2},
					[4] = {x = -1, y = -3},
					[5] = {x = -1, y = -4},
					[6] = {x = -1, y = -5},
					[7] = {x = -1, y = -6},
					[8] = {x = -1, y = -7},
					[9] = {x = -1, y = -8},
					[10] = {x = -1, y = -9},
					[11] = {x = -1, y = -10},
					[12] = {x = -1, y = -11},
					[13] = {x = -1, y = -12},
					[14] = {x = -1, y = -13},
					[15] = {x = -1, y = -14}
				}
			},
			[2] = {
				x = 0,
				y = -1,
				p = {
					[1] = {x = -1, y = 0},
					[2] = {x = -1, y = -1},
					[3] = {x = -1, y = -2},
					[4] = {x = -1, y = -3},
					[5] = {x = -1, y = -4},
					[6] = {x = -1, y = -5},
					[7] = {x = -1, y = -6},
					[8] = {x = -1, y = -7},
					[9] = {x = -1, y = -8},
					[10] = {x = -1, y = -9},
					[11] = {x = -1, y = -10},
					[12] = {x = -1, y = -11},
					[13] = {x = -1, y = -12},
					[14] = {x = -1, y = -13},
					[15] = {x = -1, y = -14}
				}
			},
			[3] = {
				x = 0,
				y = -2,
				p = {
					[1] = {x = -1, y = 0},
					[2] = {x = -1, y = -1},
					[3] = {x = -1, y = -2},
					[4] = {x = -1, y = -3},
					[5] = {x = -1, y = -4},
					[6] = {x = -1, y = -5},
					[7] = {x = -1, y = -6},
					[8] = {x = -1, y = -7},
					[9] = {x = -1, y = -8},
					[10] = {x = -1, y = -9},
					[11] = {x = -1, y = -10},
					[12] = {x = -1, y = -11},
					[13] = {x = -1, y = -12},
					[14] = {x = -1, y = -13},
					[15] = {x = -1, y = -14}
				}
			},
			[4] = {
				x = 0,
				y = -3,
				p = {
					[1] = {x = -1, y = 0},
					[2] = {x = -1, y = -1},
					[3] = {x = -1, y = -2},
					[4] = {x = -1, y = -3},
					[5] = {x = -1, y = -4},
					[6] = {x = -1, y = -5},
					[7] = {x = -1, y = -6},
					[8] = {x = -1, y = -7},
					[9] = {x = -1, y = -8},
					[10] = {x = -1, y = -9},
					[11] = {x = -1, y = -10},
					[12] = {x = -1, y = -11},
					[13] = {x = -1, y = -12},
					[14] = {x = -1, y = -13},
					[15] = {x = -1, y = -14}
				}
			},
			[5] = {
				x = 0,
				y = -4,
				p = {
					[1] = {x = -1, y = 0},
					[2] = {x = -1, y = -1},
					[3] = {x = -1, y = -2},
					[4] = {x = -1, y = -3},
					[5] = {x = -1, y = -4},
					[6] = {x = -1, y = -5},
					[7] = {x = -1, y = -6},
					[8] = {x = -1, y = -7},
					[9] = {x = -1, y = -8},
					[10] = {x = -1, y = -9},
					[11] = {x = -1, y = -10},
					[12] = {x = -1, y = -11},
					[13] = {x = -1, y = -12},
					[14] = {x = -1, y = -13},
					[15] = {x = -1, y = -14}
				}
			},
			[6] = {
				x = 0,
				y = -5,
				p = {
					[1] = {x = -1, y = 0},
					[2] = {x = -1, y = -1},
					[3] = {x = -1, y = -2},
					[4] = {x = -1, y = -3},
					[5] = {x = -1, y = -4},
					[6] = {x = -1, y = -5},
					[7] = {x = -1, y = -6},
					[8] = {x = -1, y = -7},
					[9] = {x = -1, y = -8},
					[10] = {x = -1, y = -9},
					[11] = {x = -1, y = -10},
					[12] = {x = -1, y = -11},
					[13] = {x = -1, y = -12},
					[14] = {x = -1, y = -13},
					[15] = {x = -1, y = -14}
				}
			},
			[7] = {
				x = 0,
				y = -6,
				p = {
					[1] = {x = -1, y = 0},
					[2] = {x = -1, y = -1},
					[3] = {x = -1, y = -2},
					[4] = {x = -1, y = -3},
					[5] = {x = -1, y = -4},
					[6] = {x = -1, y = -5},
					[7] = {x = -1, y = -6},
					[8] = {x = -1, y = -7},
					[9] = {x = -1, y = -8},
					[10] = {x = -1, y = -9},
					[11] = {x = -1, y = -10},
					[12] = {x = -1, y = -11},
					[13] = {x = -1, y = -12},
					[14] = {x = -1, y = -13},
					[15] = {x = -1, y = -14}
				}
			},
			[8] = {
				x = 0,
				y = -7,
				p = {
					[1] = {x = -1, y = 0},
					[2] = {x = -1, y = -1},
					[3] = {x = -1, y = -2},
					[4] = {x = -1, y = -3},
					[5] = {x = -1, y = -4},
					[6] = {x = -1, y = -5},
					[7] = {x = -1, y = -6},
					[8] = {x = -1, y = -7},
					[9] = {x = -1, y = -8},
					[10] = {x = -1, y = -9},
					[11] = {x = -1, y = -10},
					[12] = {x = -1, y = -11},
					[13] = {x = -1, y = -12},
					[14] = {x = -1, y = -13},
					[15] = {x = -1, y = -14}
				}
			},
			[9] = {
				x = 0,
				y = -8,
				p = {
					[1] = {x = -1, y = 0},
					[2] = {x = -1, y = -1},
					[3] = {x = -1, y = -2},
					[4] = {x = -1, y = -3},
					[5] = {x = -1, y = -4},
					[6] = {x = -1, y = -5},
					[7] = {x = -1, y = -6},
					[8] = {x = -1, y = -7},
					[9] = {x = -1, y = -8},
					[10] = {x = -1, y = -9},
					[11] = {x = -1, y = -10},
					[12] = {x = -1, y = -11},
					[13] = {x = -1, y = -12},
					[14] = {x = -1, y = -13},
					[15] = {x = -1, y = -14}
				}
			},
			[10] = {
				x = 0,
				y = -9,
				p = {
					[1] = {x = -1, y = 0},
					[2] = {x = -1, y = -1},
					[3] = {x = -1, y = -2},
					[4] = {x = -1, y = -3},
					[5] = {x = -1, y = -4},
					[6] = {x = -1, y = -5},
					[7] = {x = -1, y = -6},
					[8] = {x = -1, y = -7},
					[9] = {x = -1, y = -8},
					[10] = {x = -1, y = -9},
					[11] = {x = -1, y = -10},
					[12] = {x = -1, y = -11},
					[13] = {x = -1, y = -12},
					[14] = {x = -1, y = -13},
					[15] = {x = -1, y = -14}
				}
			},
			[11] = {
				x = 0,
				y = -10,
				p = {
					[1] = {x = -1, y = 0},
					[2] = {x = -1, y = -1},
					[3] = {x = -1, y = -2},
					[4] = {x = -1, y = -3},
					[5] = {x = -1, y = -4},
					[6] = {x = -1, y = -5},
					[7] = {x = -1, y = -6},
					[8] = {x = -1, y = -7},
					[9] = {x = -1, y = -8},
					[10] = {x = -1, y = -9},
					[11] = {x = -1, y = -10},
					[12] = {x = -1, y = -11},
					[13] = {x = -1, y = -12},
					[14] = {x = -1, y = -13},
					[15] = {x = -1, y = -14}
				}
			}
		},
		ab = {x = 0, y = 1},
		rf = {x = 0, y = 2},
		rfd = {x = 0, y = 1},
		au = {x = 0, y = 3},
		aud1 = {x = 0, y = 2},
		aud2 = {x = 0, y = 1}
	},
	-- Vertical Up | Right
	["Layout 3"] = {
		c = {
			[1] = {
				x = 0,
				y = 1,
				p = {
					[1] = {x = 1, y = 0},
					[2] = {x = 1, y = 1},
					[3] = {x = 1, y = 2},
					[4] = {x = 1, y = 3},
					[5] = {x = 1, y = 4},
					[6] = {x = 1, y = 5},
					[7] = {x = 1, y = 6},
					[8] = {x = 1, y = 7},
					[9] = {x = 1, y = 8},
					[10] = {x = 1, y = 9},
					[11] = {x = 1, y = 10},
					[12] = {x = 1, y = 11},
					[13] = {x = 1, y = 12},
					[14] = {x = 1, y = 13},
					[15] = {x = 1, y = 14}
				}
			},
			[2] = {
				x = 0,
				y = 2,
				p = {
					[1] = {x = 1, y = 0},
					[2] = {x = 1, y = 1},
					[3] = {x = 1, y = 2},
					[4] = {x = 1, y = 3},
					[5] = {x = 1, y = 4},
					[6] = {x = 1, y = 5},
					[7] = {x = 1, y = 6},
					[8] = {x = 1, y = 7},
					[9] = {x = 1, y = 8},
					[10] = {x = 1, y = 9},
					[11] = {x = 1, y = 10},
					[12] = {x = 1, y = 11},
					[13] = {x = 1, y = 12},
					[14] = {x = 1, y = 13},
					[15] = {x = 1, y = 14}
				}
			},
			[3] = {
				x = 0,
				y = 3,
				p = {
					[1] = {x = 1, y = 0},
					[2] = {x = 1, y = 1},
					[3] = {x = 1, y = 2},
					[4] = {x = 1, y = 3},
					[5] = {x = 1, y = 4},
					[6] = {x = 1, y = 5},
					[7] = {x = 1, y = 6},
					[8] = {x = 1, y = 7},
					[9] = {x = 1, y = 8},
					[10] = {x = 1, y = 9},
					[11] = {x = 1, y = 10},
					[12] = {x = 1, y = 11},
					[13] = {x = 1, y = 12},
					[14] = {x = 1, y = 13},
					[15] = {x = 1, y = 14}
				}
			},
			[4] = {
				x = 0,
				y = 4,
				p = {
					[1] = {x = 1, y = 0},
					[2] = {x = 1, y = 1},
					[3] = {x = 1, y = 2},
					[4] = {x = 1, y = 3},
					[5] = {x = 1, y = 4},
					[6] = {x = 1, y = 5},
					[7] = {x = 1, y = 6},
					[8] = {x = 1, y = 7},
					[9] = {x = 1, y = 8},
					[10] = {x = 1, y = 9},
					[11] = {x = 1, y = 10},
					[12] = {x = 1, y = 11},
					[13] = {x = 1, y = 12},
					[14] = {x = 1, y = 13},
					[15] = {x = 1, y = 14}
				}
			},
			[5] = {
				x = 0,
				y = 5,
				p = {
					[1] = {x = 1, y = 0},
					[2] = {x = 1, y = 1},
					[3] = {x = 1, y = 2},
					[4] = {x = 1, y = 3},
					[5] = {x = 1, y = 4},
					[6] = {x = 1, y = 5},
					[7] = {x = 1, y = 6},
					[8] = {x = 1, y = 7},
					[9] = {x = 1, y = 8},
					[10] = {x = 1, y = 9},
					[11] = {x = 1, y = 10},
					[12] = {x = 1, y = 11},
					[13] = {x = 1, y = 12},
					[14] = {x = 1, y = 13},
					[15] = {x = 1, y = 14}
				}
			},
			[6] = {
				x = 0,
				y = 6,
				p = {
					[1] = {x = 1, y = 0},
					[2] = {x = 1, y = 1},
					[3] = {x = 1, y = 2},
					[4] = {x = 1, y = 3},
					[5] = {x = 1, y = 4},
					[6] = {x = 1, y = 5},
					[7] = {x = 1, y = 6},
					[8] = {x = 1, y = 7},
					[9] = {x = 1, y = 8},
					[10] = {x = 1, y = 9},
					[11] = {x = 1, y = 10},
					[12] = {x = 1, y = 11},
					[13] = {x = 1, y = 12},
					[14] = {x = 1, y = 13},
					[15] = {x = 1, y = 14}
				}
			},
			[7] = {
				x = 0,
				y = 7,
				p = {
					[1] = {x = 1, y = 0},
					[2] = {x = 1, y = 1},
					[3] = {x = 1, y = 2},
					[4] = {x = 1, y = 3},
					[5] = {x = 1, y = 4},
					[6] = {x = 1, y = 5},
					[7] = {x = 1, y = 6},
					[8] = {x = 1, y = 7},
					[9] = {x = 1, y = 8},
					[10] = {x = 1, y = 9},
					[11] = {x = 1, y = 10},
					[12] = {x = 1, y = 11},
					[13] = {x = 1, y = 12},
					[14] = {x = 1, y = 13},
					[15] = {x = 1, y = 14}
				}
			},
			[8] = {
				x = 0,
				y = 8,
				p = {
					[1] = {x = 1, y = 0},
					[2] = {x = 1, y = 1},
					[3] = {x = 1, y = 2},
					[4] = {x = 1, y = 3},
					[5] = {x = 1, y = 4},
					[6] = {x = 1, y = 5},
					[7] = {x = 1, y = 6},
					[8] = {x = 1, y = 7},
					[9] = {x = 1, y = 8},
					[10] = {x = 1, y = 9},
					[11] = {x = 1, y = 10},
					[12] = {x = 1, y = 11},
					[13] = {x = 1, y = 12},
					[14] = {x = 1, y = 13},
					[15] = {x = 1, y = 14}
				}
			},
			[9] = {
				x = 0,
				y = 9,
				p = {
					[1] = {x = 1, y = 0},
					[2] = {x = 1, y = 1},
					[3] = {x = 1, y = 2},
					[4] = {x = 1, y = 3},
					[5] = {x = 1, y = 4},
					[6] = {x = 1, y = 5},
					[7] = {x = 1, y = 6},
					[8] = {x = 1, y = 7},
					[9] = {x = 1, y = 8},
					[10] = {x = 1, y = 9},
					[11] = {x = 1, y = 10},
					[12] = {x = 1, y = 11},
					[13] = {x = 1, y = 12},
					[14] = {x = 1, y = 13},
					[15] = {x = 1, y = 14}
				}
			},
			[10] = {
				x = 0,
				y = 10,
				p = {
					[1] = {x = 1, y = 0},
					[2] = {x = 1, y = 1},
					[3] = {x = 1, y = 2},
					[4] = {x = 1, y = 3},
					[5] = {x = 1, y = 4},
					[6] = {x = 1, y = 5},
					[7] = {x = 1, y = 6},
					[8] = {x = 1, y = 7},
					[9] = {x = 1, y = 8},
					[10] = {x = 1, y = 9},
					[11] = {x = 1, y = 10},
					[12] = {x = 1, y = 11},
					[13] = {x = 1, y = 12},
					[14] = {x = 1, y = 13},
					[15] = {x = 1, y = 14}
				}
			},
			[11] = {
				x = 0,
				y = 11,
				p = {
					[1] = {x = 1, y = 0},
					[2] = {x = 1, y = 1},
					[3] = {x = 1, y = 2},
					[4] = {x = 1, y = 3},
					[5] = {x = 1, y = 4},
					[6] = {x = 1, y = 5},
					[7] = {x = 1, y = 6},
					[8] = {x = 1, y = 7},
					[9] = {x = 1, y = 8},
					[10] = {x = 1, y = 9},
					[11] = {x = 1, y = 10},
					[12] = {x = 1, y = 11},
					[13] = {x = 1, y = 12},
					[14] = {x = 1, y = 13},
					[15] = {x = 1, y = 14}
				}
			}
		},
		ab = {x = 0, y = 0},
		rf = {x = 0, y = -1},
		rfd = {x = 0, y = 0},
		au = {x = 0, y = -2},
		aud1 = {x = 0, y = -1},
		aud2 = {x = 0, y = 0}
	},
	-- Vertical Up | Left
	["Layout 4"] = {
		c = {
			[1] = {
				x = 0,
				y = 1,
				p = {
					[1] = {x = -1, y = 0},
					[2] = {x = -1, y = 1},
					[3] = {x = -1, y = 2},
					[4] = {x = -1, y = 3},
					[5] = {x = -1, y = 4},
					[6] = {x = -1, y = 5},
					[7] = {x = -1, y = 6},
					[8] = {x = -1, y = 7},
					[9] = {x = -1, y = 8},
					[10] = {x = -1, y = 9},
					[11] = {x = -1, y = 10},
					[12] = {x = -1, y = 11},
					[13] = {x = -1, y = 12},
					[14] = {x = -1, y = 13},
					[15] = {x = -1, y = 14}
				}
			},
			[2] = {
				x = 0,
				y = 2,
				p = {
					[1] = {x = -1, y = 0},
					[2] = {x = -1, y = 1},
					[3] = {x = -1, y = 2},
					[4] = {x = -1, y = 3},
					[5] = {x = -1, y = 4},
					[6] = {x = -1, y = 5},
					[7] = {x = -1, y = 6},
					[8] = {x = -1, y = 7},
					[9] = {x = -1, y = 8},
					[10] = {x = -1, y = 9},
					[11] = {x = -1, y = 10},
					[12] = {x = -1, y = 11},
					[13] = {x = -1, y = 12},
					[14] = {x = -1, y = 13},
					[15] = {x = -1, y = 14}
				}
			},
			[3] = {
				x = 0,
				y = 3,
				p = {
					[1] = {x = -1, y = 0},
					[2] = {x = -1, y = 1},
					[3] = {x = -1, y = 2},
					[4] = {x = -1, y = 3},
					[5] = {x = -1, y = 4},
					[6] = {x = -1, y = 5},
					[7] = {x = -1, y = 6},
					[8] = {x = -1, y = 7},
					[9] = {x = -1, y = 8},
					[10] = {x = -1, y = 9},
					[11] = {x = -1, y = 10},
					[12] = {x = -1, y = 11},
					[13] = {x = -1, y = 12},
					[14] = {x = -1, y = 13},
					[15] = {x = -1, y = 14}
				}
			},
			[4] = {
				x = 0,
				y = 4,
				p = {
					[1] = {x = -1, y = 0},
					[2] = {x = -1, y = 1},
					[3] = {x = -1, y = 2},
					[4] = {x = -1, y = 3},
					[5] = {x = -1, y = 4},
					[6] = {x = -1, y = 5},
					[7] = {x = -1, y = 6},
					[8] = {x = -1, y = 7},
					[9] = {x = -1, y = 8},
					[10] = {x = -1, y = 9},
					[11] = {x = -1, y = 10},
					[12] = {x = -1, y = 11},
					[13] = {x = -1, y = 12},
					[14] = {x = -1, y = 13},
					[15] = {x = -1, y = 14}
				}
			},
			[5] = {
				x = 0,
				y = 5,
				p = {
					[1] = {x = -1, y = 0},
					[2] = {x = -1, y = 1},
					[3] = {x = -1, y = 2},
					[4] = {x = -1, y = 3},
					[5] = {x = -1, y = 4},
					[6] = {x = -1, y = 5},
					[7] = {x = -1, y = 6},
					[8] = {x = -1, y = 7},
					[9] = {x = -1, y = 8},
					[10] = {x = -1, y = 9},
					[11] = {x = -1, y = 10},
					[12] = {x = -1, y = 11},
					[13] = {x = -1, y = 12},
					[14] = {x = -1, y = 13},
					[15] = {x = -1, y = 14}
				}
			},
			[6] = {
				x = 0,
				y = 6,
				p = {
					[1] = {x = -1, y = 0},
					[2] = {x = -1, y = 1},
					[3] = {x = -1, y = 2},
					[4] = {x = -1, y = 3},
					[5] = {x = -1, y = 4},
					[6] = {x = -1, y = 5},
					[7] = {x = -1, y = 6},
					[8] = {x = -1, y = 7},
					[9] = {x = -1, y = 8},
					[10] = {x = -1, y = 9},
					[11] = {x = -1, y = 10},
					[12] = {x = -1, y = 11},
					[13] = {x = -1, y = 12},
					[14] = {x = -1, y = 13},
					[15] = {x = -1, y = 14}
				}
			},
			[7] = {
				x = 0,
				y = 7,
				p = {
					[1] = {x = -1, y = 0},
					[2] = {x = -1, y = 1},
					[3] = {x = -1, y = 2},
					[4] = {x = -1, y = 3},
					[5] = {x = -1, y = 4},
					[6] = {x = -1, y = 5},
					[7] = {x = -1, y = 6},
					[8] = {x = -1, y = 7},
					[9] = {x = -1, y = 8},
					[10] = {x = -1, y = 9},
					[11] = {x = -1, y = 10},
					[12] = {x = -1, y = 11},
					[13] = {x = -1, y = 12},
					[14] = {x = -1, y = 13},
					[15] = {x = -1, y = 14}
				}
			},
			[8] = {
				x = 0,
				y = 8,
				p = {
					[1] = {x = -1, y = 0},
					[2] = {x = -1, y = 1},
					[3] = {x = -1, y = 2},
					[4] = {x = -1, y = 3},
					[5] = {x = -1, y = 4},
					[6] = {x = -1, y = 5},
					[7] = {x = -1, y = 6},
					[8] = {x = -1, y = 7},
					[9] = {x = -1, y = 8},
					[10] = {x = -1, y = 9},
					[11] = {x = -1, y = 10},
					[12] = {x = -1, y = 11},
					[13] = {x = -1, y = 12},
					[14] = {x = -1, y = 13},
					[15] = {x = -1, y = 14}
				}
			},
			[9] = {
				x = 0,
				y = 9,
				p = {
					[1] = {x = -1, y = 0},
					[2] = {x = -1, y = 1},
					[3] = {x = -1, y = 2},
					[4] = {x = -1, y = 3},
					[5] = {x = -1, y = 4},
					[6] = {x = -1, y = 5},
					[7] = {x = -1, y = 6},
					[8] = {x = -1, y = 7},
					[9] = {x = -1, y = 8},
					[10] = {x = -1, y = 9},
					[11] = {x = -1, y = 10},
					[12] = {x = -1, y = 11},
					[13] = {x = -1, y = 12},
					[14] = {x = -1, y = 13},
					[15] = {x = -1, y = 14}
				}
			},
			[10] = {
				x = 0,
				y = 10,
				p = {
					[1] = {x = -1, y = 0},
					[2] = {x = -1, y = 1},
					[3] = {x = -1, y = 2},
					[4] = {x = -1, y = 3},
					[5] = {x = -1, y = 4},
					[6] = {x = -1, y = 5},
					[7] = {x = -1, y = 6},
					[8] = {x = -1, y = 7},
					[9] = {x = -1, y = 8},
					[10] = {x = -1, y = 9},
					[11] = {x = -1, y = 10},
					[12] = {x = -1, y = 11},
					[13] = {x = -1, y = 12},
					[14] = {x = -1, y = 13},
					[15] = {x = -1, y = 14}
				}
			},
			[11] = {
				x = 0,
				y = 11,
				p = {
					[1] = {x = -1, y = 0},
					[2] = {x = -1, y = 1},
					[3] = {x = -1, y = 2},
					[4] = {x = -1, y = 3},
					[5] = {x = -1, y = 4},
					[6] = {x = -1, y = 5},
					[7] = {x = -1, y = 6},
					[8] = {x = -1, y = 7},
					[9] = {x = -1, y = 8},
					[10] = {x = -1, y = 9},
					[11] = {x = -1, y = 10},
					[12] = {x = -1, y = 11},
					[13] = {x = -1, y = 12},
					[14] = {x = -1, y = 13},
					[15] = {x = -1, y = 14}
				}
			}
		},
		ab = {x = 0, y = 0},
		rf = {x = 0, y = -1},
		rfd = {x = 0, y = 0},
		au = {x = 0, y = -2},
		aud1 = {x = 0, y = -1},
		aud2 = {x = 0, y = 0}
	},
	-- Horizontal Right | Down
	["Layout 5"] = {
		c = {
			[1] = {
				x = 0,
				y = 0,
				p = {
					[1] = {x = 0, y = -1},
					[2] = {x = 0, y = -2},
					[3] = {x = 0, y = -3},
					[4] = {x = 0, y = -4},
					[5] = {x = 0, y = -5},
					[6] = {x = 0, y = -6},
					[7] = {x = 0, y = -7},
					[8] = {x = 0, y = -8},
					[9] = {x = 0, y = -9},
					[10] = {x = 0, y = -10},
					[11] = {x = 0, y = -11},
					[12] = {x = 0, y = -12},
					[13] = {x = 0, y = -13},
					[14] = {x = 0, y = -14},
					[15] = {x = 0, y = -15}
				}
			},
			[2] = {
				x = 1,
				y = 0,
				p = {
					[1] = {x = 0, y = -1},
					[2] = {x = 0, y = -2},
					[3] = {x = 0, y = -3},
					[4] = {x = 0, y = -4},
					[5] = {x = 0, y = -5},
					[6] = {x = 0, y = -6},
					[7] = {x = 0, y = -7},
					[8] = {x = 0, y = -8},
					[9] = {x = 0, y = -9},
					[10] = {x = 0, y = -10},
					[11] = {x = 0, y = -11},
					[12] = {x = 0, y = -12},
					[13] = {x = 0, y = -13},
					[14] = {x = 0, y = -14},
					[15] = {x = 0, y = -15}
				}
			},
			[3] = {
				x = 2,
				y = 0,
				p = {
					[1] = {x = 0, y = -1},
					[2] = {x = 0, y = -2},
					[3] = {x = 0, y = -3},
					[4] = {x = 0, y = -4},
					[5] = {x = 0, y = -5},
					[6] = {x = 0, y = -6},
					[7] = {x = 0, y = -7},
					[8] = {x = 0, y = -8},
					[9] = {x = 0, y = -9},
					[10] = {x = 0, y = -10},
					[11] = {x = 0, y = -11},
					[12] = {x = 0, y = -12},
					[13] = {x = 0, y = -13},
					[14] = {x = 0, y = -14},
					[15] = {x = 0, y = -15}
				}
			},
			[4] = {
				x = 3,
				y = 0,
				p = {
					[1] = {x = 0, y = -1},
					[2] = {x = 0, y = -2},
					[3] = {x = 0, y = -3},
					[4] = {x = 0, y = -4},
					[5] = {x = 0, y = -5},
					[6] = {x = 0, y = -6},
					[7] = {x = 0, y = -7},
					[8] = {x = 0, y = -8},
					[9] = {x = 0, y = -9},
					[10] = {x = 0, y = -10},
					[11] = {x = 0, y = -11},
					[12] = {x = 0, y = -12},
					[13] = {x = 0, y = -13},
					[14] = {x = 0, y = -14},
					[15] = {x = 0, y = -15}
				}
			},
			[5] = {
				x = 4,
				y = 0,
				p = {
					[1] = {x = 0, y = -1},
					[2] = {x = 0, y = -2},
					[3] = {x = 0, y = -3},
					[4] = {x = 0, y = -4},
					[5] = {x = 0, y = -5},
					[6] = {x = 0, y = -6},
					[7] = {x = 0, y = -7},
					[8] = {x = 0, y = -8},
					[9] = {x = 0, y = -9},
					[10] = {x = 0, y = -10},
					[11] = {x = 0, y = -11},
					[12] = {x = 0, y = -12},
					[13] = {x = 0, y = -13},
					[14] = {x = 0, y = -14},
					[15] = {x = 0, y = -15}
				}
			},
			[6] = {
				x = 5,
				y = 0,
				p = {
					[1] = {x = 0, y = -1},
					[2] = {x = 0, y = -2},
					[3] = {x = 0, y = -3},
					[4] = {x = 0, y = -4},
					[5] = {x = 0, y = -5},
					[6] = {x = 0, y = -6},
					[7] = {x = 0, y = -7},
					[8] = {x = 0, y = -8},
					[9] = {x = 0, y = -9},
					[10] = {x = 0, y = -10},
					[11] = {x = 0, y = -11},
					[12] = {x = 0, y = -12},
					[13] = {x = 0, y = -13},
					[14] = {x = 0, y = -14},
					[15] = {x = 0, y = -15}
				}
			},
			[7] = {
				x = 6,
				y = 0,
				p = {
					[1] = {x = 0, y = -1},
					[2] = {x = 0, y = -2},
					[3] = {x = 0, y = -3},
					[4] = {x = 0, y = -4},
					[5] = {x = 0, y = -5},
					[6] = {x = 0, y = -6},
					[7] = {x = 0, y = -7},
					[8] = {x = 0, y = -8},
					[9] = {x = 0, y = -9},
					[10] = {x = 0, y = -10},
					[11] = {x = 0, y = -11},
					[12] = {x = 0, y = -12},
					[13] = {x = 0, y = -13},
					[14] = {x = 0, y = -14},
					[15] = {x = 0, y = -15}
				}
			},
			[8] = {
				x = 7,
				y = 0,
				p = {
					[1] = {x = 0, y = -1},
					[2] = {x = 0, y = -2},
					[3] = {x = 0, y = -3},
					[4] = {x = 0, y = -4},
					[5] = {x = 0, y = -5},
					[6] = {x = 0, y = -6},
					[7] = {x = 0, y = -7},
					[8] = {x = 0, y = -8},
					[9] = {x = 0, y = -9},
					[10] = {x = 0, y = -10},
					[11] = {x = 0, y = -11},
					[12] = {x = 0, y = -12},
					[13] = {x = 0, y = -13},
					[14] = {x = 0, y = -14},
					[15] = {x = 0, y = -15}
				}
			},
			[9] = {
				x = 8,
				y = 0,
				p = {
					[1] = {x = 0, y = -1},
					[2] = {x = 0, y = -2},
					[3] = {x = 0, y = -3},
					[4] = {x = 0, y = -4},
					[5] = {x = 0, y = -5},
					[6] = {x = 0, y = -6},
					[7] = {x = 0, y = -7},
					[8] = {x = 0, y = -8},
					[9] = {x = 0, y = -9},
					[10] = {x = 0, y = -10},
					[11] = {x = 0, y = -11},
					[12] = {x = 0, y = -12},
					[13] = {x = 0, y = -13},
					[14] = {x = 0, y = -14},
					[15] = {x = 0, y = -15}
				}
			},
			[10] = {
				x = 9,
				y = 0,
				p = {
					[1] = {x = 0, y = -1},
					[2] = {x = 0, y = -2},
					[3] = {x = 0, y = -3},
					[4] = {x = 0, y = -4},
					[5] = {x = 0, y = -5},
					[6] = {x = 0, y = -6},
					[7] = {x = 0, y = -7},
					[8] = {x = 0, y = -8},
					[9] = {x = 0, y = -9},
					[10] = {x = 0, y = -10},
					[11] = {x = 0, y = -11},
					[12] = {x = 0, y = -12},
					[13] = {x = 0, y = -13},
					[14] = {x = 0, y = -14},
					[15] = {x = 0, y = -15}
				}
			},
			[11] = {
				x = 10,
				y = 0,
				p = {
					[1] = {x = 0, y = -1},
					[2] = {x = 0, y = -2},
					[3] = {x = 0, y = -3},
					[4] = {x = 0, y = -4},
					[5] = {x = 0, y = -5},
					[6] = {x = 0, y = -6},
					[7] = {x = 0, y = -7},
					[8] = {x = 0, y = -8},
					[9] = {x = 0, y = -9},
					[10] = {x = 0, y = -10},
					[11] = {x = 0, y = -11},
					[12] = {x = 0, y = -12},
					[13] = {x = 0, y = -13},
					[14] = {x = 0, y = -14},
					[15] = {x = 0, y = -15}
				}
			}
		},
		ab = {x = -1, y = 0},
		rf = {x = -2, y = 0},
		rfd = {x = -1, y = 0},
		au = {x = -3, y = 0},
		aud1 = {x = -2, y = 0},
		aud2 = {x = -1, y = 0}
	},
	-- Horizontal Right | Up
	["Layout 6"] = {
		c = {
			[1] = {
				x = 0,
				y = 0,
				p = {
					[1] = {x = 0, y = 1},
					[2] = {x = 0, y = 2},
					[3] = {x = 0, y = 3},
					[4] = {x = 0, y = 4},
					[5] = {x = 0, y = 5},
					[6] = {x = 0, y = 6},
					[7] = {x = 0, y = 7},
					[8] = {x = 0, y = 8},
					[9] = {x = 0, y = 9},
					[10] = {x = 0, y = 10},
					[11] = {x = 0, y = 11},
					[12] = {x = 0, y = 12},
					[13] = {x = 0, y = 13},
					[14] = {x = 0, y = 14},
					[15] = {x = 0, y = 15}
				}
			},
			[2] = {
				x = 1,
				y = 0,
				p = {
					[1] = {x = 0, y = 1},
					[2] = {x = 0, y = 2},
					[3] = {x = 0, y = 3},
					[4] = {x = 0, y = 4},
					[5] = {x = 0, y = 5},
					[6] = {x = 0, y = 6},
					[7] = {x = 0, y = 7},
					[8] = {x = 0, y = 8},
					[9] = {x = 0, y = 9},
					[10] = {x = 0, y = 10},
					[11] = {x = 0, y = 11},
					[12] = {x = 0, y = 12},
					[13] = {x = 0, y = 13},
					[14] = {x = 0, y = 14},
					[15] = {x = 0, y = 15}
				}
			},
			[3] = {
				x = 2,
				y = 0,
				p = {
					[1] = {x = 0, y = 1},
					[2] = {x = 0, y = 2},
					[3] = {x = 0, y = 3},
					[4] = {x = 0, y = 4},
					[5] = {x = 0, y = 5},
					[6] = {x = 0, y = 6},
					[7] = {x = 0, y = 7},
					[8] = {x = 0, y = 8},
					[9] = {x = 0, y = 9},
					[10] = {x = 0, y = 10},
					[11] = {x = 0, y = 11},
					[12] = {x = 0, y = 12},
					[13] = {x = 0, y = 13},
					[14] = {x = 0, y = 14},
					[15] = {x = 0, y = 15}
				}
			},
			[4] = {
				x = 3,
				y = 0,
				p = {
					[1] = {x = 0, y = 1},
					[2] = {x = 0, y = 2},
					[3] = {x = 0, y = 3},
					[4] = {x = 0, y = 4},
					[5] = {x = 0, y = 5},
					[6] = {x = 0, y = 6},
					[7] = {x = 0, y = 7},
					[8] = {x = 0, y = 8},
					[9] = {x = 0, y = 9},
					[10] = {x = 0, y = 10},
					[11] = {x = 0, y = 11},
					[12] = {x = 0, y = 12},
					[13] = {x = 0, y = 13},
					[14] = {x = 0, y = 14},
					[15] = {x = 0, y = 15}
				}
			},
			[5] = {
				x = 4,
				y = 0,
				p = {
					[1] = {x = 0, y = 1},
					[2] = {x = 0, y = 2},
					[3] = {x = 0, y = 3},
					[4] = {x = 0, y = 4},
					[5] = {x = 0, y = 5},
					[6] = {x = 0, y = 6},
					[7] = {x = 0, y = 7},
					[8] = {x = 0, y = 8},
					[9] = {x = 0, y = 9},
					[10] = {x = 0, y = 10},
					[11] = {x = 0, y = 11},
					[12] = {x = 0, y = 12},
					[13] = {x = 0, y = 13},
					[14] = {x = 0, y = 14},
					[15] = {x = 0, y = 15}
				}
			},
			[6] = {
				x = 5,
				y = 0,
				p = {
					[1] = {x = 0, y = 1},
					[2] = {x = 0, y = 2},
					[3] = {x = 0, y = 3},
					[4] = {x = 0, y = 4},
					[5] = {x = 0, y = 5},
					[6] = {x = 0, y = 6},
					[7] = {x = 0, y = 7},
					[8] = {x = 0, y = 8},
					[9] = {x = 0, y = 9},
					[10] = {x = 0, y = 10},
					[11] = {x = 0, y = 11},
					[12] = {x = 0, y = 12},
					[13] = {x = 0, y = 13},
					[14] = {x = 0, y = 14},
					[15] = {x = 0, y = 15}
				}
			},
			[7] = {
				x = 6,
				y = 0,
				p = {
					[1] = {x = 0, y = 1},
					[2] = {x = 0, y = 2},
					[3] = {x = 0, y = 3},
					[4] = {x = 0, y = 4},
					[5] = {x = 0, y = 5},
					[6] = {x = 0, y = 6},
					[7] = {x = 0, y = 7},
					[8] = {x = 0, y = 8},
					[9] = {x = 0, y = 9},
					[10] = {x = 0, y = 10},
					[11] = {x = 0, y = 11},
					[12] = {x = 0, y = 12},
					[13] = {x = 0, y = 13},
					[14] = {x = 0, y = 14},
					[15] = {x = 0, y = 15}
				}
			},
			[8] = {
				x = 7,
				y = 0,
				p = {
					[1] = {x = 0, y = 1},
					[2] = {x = 0, y = 2},
					[3] = {x = 0, y = 3},
					[4] = {x = 0, y = 4},
					[5] = {x = 0, y = 5},
					[6] = {x = 0, y = 6},
					[7] = {x = 0, y = 7},
					[8] = {x = 0, y = 8},
					[9] = {x = 0, y = 9},
					[10] = {x = 0, y = 10},
					[11] = {x = 0, y = 11},
					[12] = {x = 0, y = 12},
					[13] = {x = 0, y = 13},
					[14] = {x = 0, y = 14},
					[15] = {x = 0, y = 15}
				}
			},
			[9] = {
				x = 8,
				y = 0,
				p = {
					[1] = {x = 0, y = 1},
					[2] = {x = 0, y = 2},
					[3] = {x = 0, y = 3},
					[4] = {x = 0, y = 4},
					[5] = {x = 0, y = 5},
					[6] = {x = 0, y = 6},
					[7] = {x = 0, y = 7},
					[8] = {x = 0, y = 8},
					[9] = {x = 0, y = 9},
					[10] = {x = 0, y = 10},
					[11] = {x = 0, y = 11},
					[12] = {x = 0, y = 12},
					[13] = {x = 0, y = 13},
					[14] = {x = 0, y = 14},
					[15] = {x = 0, y = 15}
				}
			},
			[10] = {
				x = 9,
				y = 0,
				p = {
					[1] = {x = 0, y = 1},
					[2] = {x = 0, y = 2},
					[3] = {x = 0, y = 3},
					[4] = {x = 0, y = 4},
					[5] = {x = 0, y = 5},
					[6] = {x = 0, y = 6},
					[7] = {x = 0, y = 7},
					[8] = {x = 0, y = 8},
					[9] = {x = 0, y = 9},
					[10] = {x = 0, y = 10},
					[11] = {x = 0, y = 11},
					[12] = {x = 0, y = 12},
					[13] = {x = 0, y = 13},
					[14] = {x = 0, y = 14},
					[15] = {x = 0, y = 15}
				}
			},
			[11] = {
				x = 10,
				y = 0,
				p = {
					[1] = {x = 0, y = 1},
					[2] = {x = 0, y = 2},
					[3] = {x = 0, y = 3},
					[4] = {x = 0, y = 4},
					[5] = {x = 0, y = 5},
					[6] = {x = 0, y = 6},
					[7] = {x = 0, y = 7},
					[8] = {x = 0, y = 8},
					[9] = {x = 0, y = 9},
					[10] = {x = 0, y = 10},
					[11] = {x = 0, y = 11},
					[12] = {x = 0, y = 12},
					[13] = {x = 0, y = 13},
					[14] = {x = 0, y = 14},
					[15] = {x = 0, y = 15}
				}
			}
		},
		ab = {x = -1, y = 0},
		rf = {x = -2, y = 0},
		rfd = {x = -1, y = 0},
		au = {x = -3, y = 0},
		aud1 = {x = -2, y = 0},
		aud2 = {x = -1, y = 0}
	},
	-- Horizontal Left | Down
	["Layout 7"] = {
		c = {
			[1] = {
				x = -1,
				y = 0,
				p = {
					[1] = {x = 0, y = -1},
					[2] = {x = 0, y = -2},
					[3] = {x = 0, y = -3},
					[4] = {x = 0, y = -4},
					[5] = {x = 0, y = -5},
					[6] = {x = 0, y = -6},
					[7] = {x = 0, y = -7},
					[8] = {x = 0, y = -8},
					[9] = {x = 0, y = -9},
					[10] = {x = 0, y = -10},
					[11] = {x = 0, y = -11},
					[12] = {x = 0, y = -12},
					[13] = {x = 0, y = -13},
					[14] = {x = 0, y = -14},
					[15] = {x = 0, y = -15}
				}
			},
			[2] = {
				x = -2,
				y = 0,
				p = {
					[1] = {x = 0, y = -1},
					[2] = {x = 0, y = -2},
					[3] = {x = 0, y = -3},
					[4] = {x = 0, y = -4},
					[5] = {x = 0, y = -5},
					[6] = {x = 0, y = -6},
					[7] = {x = 0, y = -7},
					[8] = {x = 0, y = -8},
					[9] = {x = 0, y = -9},
					[10] = {x = 0, y = -10},
					[11] = {x = 0, y = -11},
					[12] = {x = 0, y = -12},
					[13] = {x = 0, y = -13},
					[14] = {x = 0, y = -14},
					[15] = {x = 0, y = -15}
				}
			},
			[3] = {
				x = -3,
				y = 0,
				p = {
					[1] = {x = 0, y = -1},
					[2] = {x = 0, y = -2},
					[3] = {x = 0, y = -3},
					[4] = {x = 0, y = -4},
					[5] = {x = 0, y = -5},
					[6] = {x = 0, y = -6},
					[7] = {x = 0, y = -7},
					[8] = {x = 0, y = -8},
					[9] = {x = 0, y = -9},
					[10] = {x = 0, y = -10},
					[11] = {x = 0, y = -11},
					[12] = {x = 0, y = -12},
					[13] = {x = 0, y = -13},
					[14] = {x = 0, y = -14},
					[15] = {x = 0, y = -15}
				}
			},
			[4] = {
				x = -4,
				y = 0,
				p = {
					[1] = {x = 0, y = -1},
					[2] = {x = 0, y = -2},
					[3] = {x = 0, y = -3},
					[4] = {x = 0, y = -4},
					[5] = {x = 0, y = -5},
					[6] = {x = 0, y = -6},
					[7] = {x = 0, y = -7},
					[8] = {x = 0, y = -8},
					[9] = {x = 0, y = -9},
					[10] = {x = 0, y = -10},
					[11] = {x = 0, y = -11},
					[12] = {x = 0, y = -12},
					[13] = {x = 0, y = -13},
					[14] = {x = 0, y = -14},
					[15] = {x = 0, y = -15}
				}
			},
			[5] = {
				x = -5,
				y = 0,
				p = {
					[1] = {x = 0, y = -1},
					[2] = {x = 0, y = -2},
					[3] = {x = 0, y = -3},
					[4] = {x = 0, y = -4},
					[5] = {x = 0, y = -5},
					[6] = {x = 0, y = -6},
					[7] = {x = 0, y = -7},
					[8] = {x = 0, y = -8},
					[9] = {x = 0, y = -9},
					[10] = {x = 0, y = -10},
					[11] = {x = 0, y = -11},
					[12] = {x = 0, y = -12},
					[13] = {x = 0, y = -13},
					[14] = {x = 0, y = -14},
					[15] = {x = 0, y = -15}
				}
			},
			[6] = {
				x = -6,
				y = 0,
				p = {
					[1] = {x = 0, y = -1},
					[2] = {x = 0, y = -2},
					[3] = {x = 0, y = -3},
					[4] = {x = 0, y = -4},
					[5] = {x = 0, y = -5},
					[6] = {x = 0, y = -6},
					[7] = {x = 0, y = -7},
					[8] = {x = 0, y = -8},
					[9] = {x = 0, y = -9},
					[10] = {x = 0, y = -10},
					[11] = {x = 0, y = -11},
					[12] = {x = 0, y = -12},
					[13] = {x = 0, y = -13},
					[14] = {x = 0, y = -14},
					[15] = {x = 0, y = -15}
				}
			},
			[7] = {
				x = -7,
				y = 0,
				p = {
					[1] = {x = 0, y = -1},
					[2] = {x = 0, y = -2},
					[3] = {x = 0, y = -3},
					[4] = {x = 0, y = -4},
					[5] = {x = 0, y = -5},
					[6] = {x = 0, y = -6},
					[7] = {x = 0, y = -7},
					[8] = {x = 0, y = -8},
					[9] = {x = 0, y = -9},
					[10] = {x = 0, y = -10},
					[11] = {x = 0, y = -11},
					[12] = {x = 0, y = -12},
					[13] = {x = 0, y = -13},
					[14] = {x = 0, y = -14},
					[15] = {x = 0, y = -15}
				}
			},
			[8] = {
				x = -8,
				y = 0,
				p = {
					[1] = {x = 0, y = -1},
					[2] = {x = 0, y = -2},
					[3] = {x = 0, y = -3},
					[4] = {x = 0, y = -4},
					[5] = {x = 0, y = -5},
					[6] = {x = 0, y = -6},
					[7] = {x = 0, y = -7},
					[8] = {x = 0, y = -8},
					[9] = {x = 0, y = -9},
					[10] = {x = 0, y = -10},
					[11] = {x = 0, y = -11},
					[12] = {x = 0, y = -12},
					[13] = {x = 0, y = -13},
					[14] = {x = 0, y = -14},
					[15] = {x = 0, y = -15}
				}
			},
			[9] = {
				x = -9,
				y = 0,
				p = {
					[1] = {x = 0, y = -1},
					[2] = {x = 0, y = -2},
					[3] = {x = 0, y = -3},
					[4] = {x = 0, y = -4},
					[5] = {x = 0, y = -5},
					[6] = {x = 0, y = -6},
					[7] = {x = 0, y = -7},
					[8] = {x = 0, y = -8},
					[9] = {x = 0, y = -9},
					[10] = {x = 0, y = -10},
					[11] = {x = 0, y = -11},
					[12] = {x = 0, y = -12},
					[13] = {x = 0, y = -13},
					[14] = {x = 0, y = -14},
					[15] = {x = 0, y = -15}
				}
			},
			[10] = {
				x = -10,
				y = 0,
				p = {
					[1] = {x = 0, y = -1},
					[2] = {x = 0, y = -2},
					[3] = {x = 0, y = -3},
					[4] = {x = 0, y = -4},
					[5] = {x = 0, y = -5},
					[6] = {x = 0, y = -6},
					[7] = {x = 0, y = -7},
					[8] = {x = 0, y = -8},
					[9] = {x = 0, y = -9},
					[10] = {x = 0, y = -10},
					[11] = {x = 0, y = -11},
					[12] = {x = 0, y = -12},
					[13] = {x = 0, y = -13},
					[14] = {x = 0, y = -14},
					[15] = {x = 0, y = -15}
				}
			},
			[11] = {
				x = -11,
				y = 0,
				p = {
					[1] = {x = 0, y = -1},
					[2] = {x = 0, y = -2},
					[3] = {x = 0, y = -3},
					[4] = {x = 0, y = -4},
					[5] = {x = 0, y = -5},
					[6] = {x = 0, y = -6},
					[7] = {x = 0, y = -7},
					[8] = {x = 0, y = -8},
					[9] = {x = 0, y = -9},
					[10] = {x = 0, y = -10},
					[11] = {x = 0, y = -11},
					[12] = {x = 0, y = -12},
					[13] = {x = 0, y = -13},
					[14] = {x = 0, y = -14},
					[15] = {x = 0, y = -15}
				}
			}
		},
		ab = {x = 0, y = 0},
		rf = {x = 1, y = 0},
		rfd = {x = 0, y = 0},
		au = {x = 2, y = 0},
		aud1 = {x = 1, y = 0},
		aud2 = {x = 0, y = 0}
	},
	-- Horizontal Left | Up
	["Layout 8"] = {
		c = {
			[1] = {
				x = -1,
				y = 0,
				p = {
					[1] = {x = 0, y = 1},
					[2] = {x = 0, y = 2},
					[3] = {x = 0, y = 3},
					[4] = {x = 0, y = 4},
					[5] = {x = 0, y = 5},
					[6] = {x = 0, y = 6},
					[7] = {x = 0, y = 7},
					[8] = {x = 0, y = 8},
					[9] = {x = 0, y = 9},
					[10] = {x = 0, y = 10},
					[11] = {x = 0, y = 11},
					[12] = {x = 0, y = 12},
					[13] = {x = 0, y = 13},
					[14] = {x = 0, y = 14},
					[15] = {x = 0, y = 15}
				}
			},
			[2] = {
				x = -2,
				y = 0,
				p = {
					[1] = {x = 0, y = 1},
					[2] = {x = 0, y = 2},
					[3] = {x = 0, y = 3},
					[4] = {x = 0, y = 4},
					[5] = {x = 0, y = 5},
					[6] = {x = 0, y = 6},
					[7] = {x = 0, y = 7},
					[8] = {x = 0, y = 8},
					[9] = {x = 0, y = 9},
					[10] = {x = 0, y = 10},
					[11] = {x = 0, y = 11},
					[12] = {x = 0, y = 12},
					[13] = {x = 0, y = 13},
					[14] = {x = 0, y = 14},
					[15] = {x = 0, y = 15}
				}
			},
			[3] = {
				x = -3,
				y = 0,
				p = {
					[1] = {x = 0, y = 1},
					[2] = {x = 0, y = 2},
					[3] = {x = 0, y = 3},
					[4] = {x = 0, y = 4},
					[5] = {x = 0, y = 5},
					[6] = {x = 0, y = 6},
					[7] = {x = 0, y = 7},
					[8] = {x = 0, y = 8},
					[9] = {x = 0, y = 9},
					[10] = {x = 0, y = 10},
					[11] = {x = 0, y = 11},
					[12] = {x = 0, y = 12},
					[13] = {x = 0, y = 13},
					[14] = {x = 0, y = 14},
					[15] = {x = 0, y = 15}
				}
			},
			[4] = {
				x = -4,
				y = 0,
				p = {
					[1] = {x = 0, y = 1},
					[2] = {x = 0, y = 2},
					[3] = {x = 0, y = 3},
					[4] = {x = 0, y = 4},
					[5] = {x = 0, y = 5},
					[6] = {x = 0, y = 6},
					[7] = {x = 0, y = 7},
					[8] = {x = 0, y = 8},
					[9] = {x = 0, y = 9},
					[10] = {x = 0, y = 10},
					[11] = {x = 0, y = 11},
					[12] = {x = 0, y = 12},
					[13] = {x = 0, y = 13},
					[14] = {x = 0, y = 14},
					[15] = {x = 0, y = 15}
				}
			},
			[5] = {
				x = -5,
				y = 0,
				p = {
					[1] = {x = 0, y = 1},
					[2] = {x = 0, y = 2},
					[3] = {x = 0, y = 3},
					[4] = {x = 0, y = 4},
					[5] = {x = 0, y = 5},
					[6] = {x = 0, y = 6},
					[7] = {x = 0, y = 7},
					[8] = {x = 0, y = 8},
					[9] = {x = 0, y = 9},
					[10] = {x = 0, y = 10},
					[11] = {x = 0, y = 11},
					[12] = {x = 0, y = 12},
					[13] = {x = 0, y = 13},
					[14] = {x = 0, y = 14},
					[15] = {x = 0, y = 15}
				}
			},
			[6] = {
				x = -6,
				y = 0,
				p = {
					[1] = {x = 0, y = 1},
					[2] = {x = 0, y = 2},
					[3] = {x = 0, y = 3},
					[4] = {x = 0, y = 4},
					[5] = {x = 0, y = 5},
					[6] = {x = 0, y = 6},
					[7] = {x = 0, y = 7},
					[8] = {x = 0, y = 8},
					[9] = {x = 0, y = 9},
					[10] = {x = 0, y = 10},
					[11] = {x = 0, y = 11},
					[12] = {x = 0, y = 12},
					[13] = {x = 0, y = 13},
					[14] = {x = 0, y = 14},
					[15] = {x = 0, y = 15}
				}
			},
			[7] = {
				x = -7,
				y = 0,
				p = {
					[1] = {x = 0, y = 1},
					[2] = {x = 0, y = 2},
					[3] = {x = 0, y = 3},
					[4] = {x = 0, y = 4},
					[5] = {x = 0, y = 5},
					[6] = {x = 0, y = 6},
					[7] = {x = 0, y = 7},
					[8] = {x = 0, y = 8},
					[9] = {x = 0, y = 9},
					[10] = {x = 0, y = 10},
					[11] = {x = 0, y = 11},
					[12] = {x = 0, y = 12},
					[13] = {x = 0, y = 13},
					[14] = {x = 0, y = 14},
					[15] = {x = 0, y = 15}
				}
			},
			[8] = {
				x = -8,
				y = 0,
				p = {
					[1] = {x = 0, y = 1},
					[2] = {x = 0, y = 2},
					[3] = {x = 0, y = 3},
					[4] = {x = 0, y = 4},
					[5] = {x = 0, y = 5},
					[6] = {x = 0, y = 6},
					[7] = {x = 0, y = 7},
					[8] = {x = 0, y = 8},
					[9] = {x = 0, y = 9},
					[10] = {x = 0, y = 10},
					[11] = {x = 0, y = 11},
					[12] = {x = 0, y = 12},
					[13] = {x = 0, y = 13},
					[14] = {x = 0, y = 14},
					[15] = {x = 0, y = 15}
				}
			},
			[9] = {
				x = -9,
				y = 0,
				p = {
					[1] = {x = 0, y = 1},
					[2] = {x = 0, y = 2},
					[3] = {x = 0, y = 3},
					[4] = {x = 0, y = 4},
					[5] = {x = 0, y = 5},
					[6] = {x = 0, y = 6},
					[7] = {x = 0, y = 7},
					[8] = {x = 0, y = 8},
					[9] = {x = 0, y = 9},
					[10] = {x = 0, y = 10},
					[11] = {x = 0, y = 11},
					[12] = {x = 0, y = 12},
					[13] = {x = 0, y = 13},
					[14] = {x = 0, y = 14},
					[15] = {x = 0, y = 15}
				}
			},
			[10] = {
				x = -10,
				y = 0,
				p = {
					[1] = {x = 0, y = 1},
					[2] = {x = 0, y = 2},
					[3] = {x = 0, y = 3},
					[4] = {x = 0, y = 4},
					[5] = {x = 0, y = 5},
					[6] = {x = 0, y = 6},
					[7] = {x = 0, y = 7},
					[8] = {x = 0, y = 8},
					[9] = {x = 0, y = 9},
					[10] = {x = 0, y = 10},
					[11] = {x = 0, y = 11},
					[12] = {x = 0, y = 12},
					[13] = {x = 0, y = 13},
					[14] = {x = 0, y = 14},
					[15] = {x = 0, y = 15}
				}
			},
			[11] = {
				x = -11,
				y = 0,
				p = {
					[1] = {x = 0, y = 1},
					[2] = {x = 0, y = 2},
					[3] = {x = 0, y = 3},
					[4] = {x = 0, y = 4},
					[5] = {x = 0, y = 5},
					[6] = {x = 0, y = 6},
					[7] = {x = 0, y = 7},
					[8] = {x = 0, y = 8},
					[9] = {x = 0, y = 9},
					[10] = {x = 0, y = 10},
					[11] = {x = 0, y = 11},
					[12] = {x = 0, y = 12},
					[13] = {x = 0, y = 13},
					[14] = {x = 0, y = 14},
					[15] = {x = 0, y = 15}
				}
			}
		},
		ab = {x = 0, y = 0},
		rf = {x = 1, y = 0},
		rfd = {x = 0, y = 0},
		au = {x = 2, y = 0},
		aud1 = {x = 1, y = 0},
		aud2 = {x = 0, y = 0}
	}
}
