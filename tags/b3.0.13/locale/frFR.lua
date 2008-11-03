local L = AceLibrary("AceLocale-2.2"):new("PallyPower")
L:RegisterTranslations("frFR", function()
    return {
        ---- Options menu ----
		["BAS"]	= "Assignation des b\195\169n\195\169dictions",
		["BAS_DESC"] = "Affiche le panneau d'assignation des b\195\169n\195\169dictions",
		["BRPT"] = "Rapport des assignations",
		["BRPT_DESC"] = "R\195\169sume les assignations de b\195\169n\195\169dictions au canal groupe/raid",
		["BSC"] = "Echelle des b\195\169n\195\169dictions",
		["BSC_DESC"] = "D\195\169finit l'echelle du panneau des b\195\169n\195\169s",
		["CSC"] = "Echelle des assignations",
		["CSC_DESC"] = "D\195\169finit l'echelle du panneau d'assignation",
		["SBUFF"] = "B\195\169n\195\169dictions intelligentes",
		["SBUFF_DESC"] = "Ignore les b\195\169n\195\169dictions inutiles pour certaines classes",
		["DISP"] = "Affichage",
		["DISP_DESC"] = "R\195\169glages du panneau des b\195\169n\195\169dictions",
		["DISPCOL"] = "Colonnes",
		["DISPCOL_DESC"] = "D\195\169finit le nombre de colonnes",
		["DISPROWS"] = "Lignes",
		["DISPROWS_DESC"] = "D\195\169finit le nombre de lignes",
		["DISPGAP"] = "Espacement",
		["DISPGAP_DESC"] = "D\195\169finit l'espacement des boutons",
		["DISPCL"] = "Boutons de classes",
		["DISPCL_DESC"] = "Direction des boutons de classes",
		["DISPPL"] = "Boutons de joueurs",
		["DISPPL_DESC"] = "Direction des boutons de joueurs",
		["DISABLED"] = "D\195\169sactiv\195\169",
		["ENABLED"] = "Activ\195\169",
		["HIDEPB"]              = "Hide Player Buttons",
		["HIDEPB_DESC"]		= "Show/Hide Player Buttons",
		["HIDEDH"]		= "Hide Drag Handle",
		["HIDEDH_DESC"]		= "Show/Hide Drag Handle",
		["SHOWPARTY"]		= "Show in Party",
		["SHOWPARTY_DESC"]	= "Show/Hide Buff Bar when in Party",
		["SHOWSINGLE"]		= "Show when single",
		["SHOWSINGLE_DESC"]	= "Show/Hide Buff Bar when Single",
		["GREATER"]             = "Greater Blessings",
		["GREATER_DESC"]	= "Enable/Disable Greater Blessings",		
		["AUTOBUFF"]		= "Auto Buff",
		["AUTOBUFF_DESC"]	= "Auto Buff Options",
		["AUTOKEY1"]		= "Auto Normal Blessing Key",
		["AUTOKEY1_DESC"]	= "Key Binding for automated buffing of normal blessings.",
		["AUTOKEY2"]		= "Auto Greater Blessing Key",
		["AUTOKEY2_DESC"]	= "Key Binding for automated buffing of greater blessings.",
		["AUTOBTN"]		= "Show Auto Button",
		["AUTOBTN_DESC"]	= "Show/Hide the Auto Buff Button",
		["WAIT"]		= "Wait for all people",
		["WAIT_DESC"]		= "Whether to wait for all people to be in range and online to buff a class.",
		["RESET"]		= "Reset Frames",
		["RESET_DESC"]		= "Reset all PallyPower frames back to center",
		["RFBUFF"] 			= "Righeous Fury",
		["RFBUFF_DESC"] 	= "Righeous Fury monitoring enable/disable",
		["FREEASSIGN"] 		= "Free assignment",
		["FREEASSIGN_DESC"] 	= "Allow others to change your blessings without being leader/promoted",		
		-- more to come
		--- Variables
		["DRAGHANDLE"] = "Clic gauche pour d\195\169plac\195\169 barre de buff\nClic gauche pour bloquer/d\195\169bloquer la barre de buff \nClick droit pour afficher la fenetre de buff",
		["PP_CLEAR"] = "Nettoyer",
		["PP_REFRESH"] = "Rafraichir",
		["PP_OPTIONS"] = "Option",
		["PP_RAS1"] = "--- Assignations des b\195\169n\195\169dictions Paladin ---",
		["PP_RAS2"] = "--- Fin des assignations ---",
		["PP_TSEARCH"] = "(.*) am\195\169lior\195\169e",
		["PP_BNSEARCH"] = "(.*)",
		["PP_RANK1"] = "Rang 1",
		["PP_RSEARCH"] = "Rang (.*)",
		["PP_SYMBOL"] = "Symbole des rois",
	}
end) 