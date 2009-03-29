﻿local L = AceLibrary("AceLocale-2.2"):new("PallyPower")

L:RegisterTranslations("enUS", function()
	return {
		---- Options menu ----
		["BAS"] 		= "Назначения Blessing",
		["BAS_DESC"] 		= "Открыть назначения Blessing",
		["BRPT"] 		= "Соообщить Blessings",
		["BRPT_DESC"] 		= "Соообщить Blessings в Raid/Party канал чата",
		["BSC"] 		= "Масштаб баффов",
		["BSC_DESC"] 		= "становить масштаб графы баффов",
		["CSC"] 		= "Масштаб настройки",
		["CSC_DESC"] 		= "Установить масштаб окна настроек",
		["SBUFF"] 		= "Умные баффы",
		["SBUFF_DESC"] 		= "Пропустите некоторые баффы для кокретных классов",
		["DISP"] 		= "Показать",
		["DISP_DESC"] 		= "Установки графы баффов",
		["DISPCOL"] 		= "Сторлбцы",
		["DISPCOL_DESC"] 	= "Задать количество столбцов",
	        ["DISPROWS"] 		= "Ряды",
		["DISPROWS_DESC"] 	= "Задать количество рядовs",
		["DISPGAP"] 		= "Промежуток",
		["DISPGAP_DESC"] 	= "Промежуток между кнопками",
		["DISPCL"] 		= "Классовые кнопки",
		["DISPCL_DESC"] 	= "Направление для Классовых кнопок",
		["DISPPL"] 		= "Кнопки Игрока",
		["DISPPL_DESC"] 	= "Направление для Кнопок Игрока",
		["DISABLED"]		= "Отключено",
		["ENABLED"]		= "Включено",
		["HIDEPB"]              = "Спрятать Кнопки Игрока",
		["HIDEPB_DESC"]		= "Показать/Скрыть Кнопки Игрока",
		["HIDEDH"]		= "Спрятать перемещающий элемент",
		["HIDEDH_DESC"]		= "Показать/Спрятать Drag Handle",
		["SHOWPARTY"]		= "Показать в Групе",
		["SHOWPARTY_DESC"]	= "Показать/Скрыть графу баффов когда в групе",
		["SHOWSINGLE"]		= "Показать когда без групы",
		["SHOWSINGLE_DESC"]	= "Показать/Скрыть графу баффов когда без групы",
		["GREATER"]             = "Greater Blessings",
		["GREATER_DESC"]	= "Включить/Отключить Greater Blessings",
		["AUTOBUFF"]		= "Авто баффы",
		["AUTOBUFF_DESC"]	= "Опции авто баффов",
		["AUTOKEY1"]		= "АвтоКлавиша для нормального Blessing ",
		["AUTOKEY1_DESC"]	= "Забиндить клавишу для автоматического баффа нормальных blessings.",
		["AUTOKEY2"]		= "АвтоКлавиша для Greater Blessing",
		["AUTOKEY2_DESC"]	= "Забиндить клавишу для автоматического баффа greater blessings.",
		["AUTOBTN"]		= "Показать АвтоКнопку",
		["AUTOBTN_DESC"]	= "Показать/Скрыть Кнопку АвтоБаффов",
		["WAIT"]		= "Ждать всех игроков",
		["WAIT_DESC"]		= "Ждать ли всех игроков в досигаемости или онлайне для классового баффа.",
		["RESET"]		= "Востановить окно аддона",
		["RESET_DESC"]		= "Центрировать окно PallyPower",
		["RFBUFF"] 		= "Righeous Fury",
		["RFBUFF_DESC"] 	= "Контроль Righeous Fury вкл/выкл",
		["FREEASSIGN"] 		= "Свободное назначение",
		["FREEASSIGN_DESC"] 	= "Позволяйте другим изменить ваши blessings без назначения leader/promoted",
		-- more to come
		--- Variables
		["DRAGHANDLE"] 		= "Перетащить - зажать левую кнопку мышки\nЛевый клик что б блокировать / разблокировать\nПравый клик - открыть опции",
		["PP_CLEAR"]		= "Очистить",
		["PP_REFRESH"]		= "Обновить",
		["PP_OPTIONS"]		= "Опции",
		["PP_RAS1"]		= "--- Назначения паладина ---",
		["PP_RAS2"]		= "--- Конец назначений ---",
		["PP_TSEARCH"]		= "Improved (.*)",
		["PP_BNSEARCH"]		= "Blessing of (.*)",
		["PP_RANK1"]		= "Ранг 1",
		["PP_RSEARCH"]		= "Ранг (.*)",
		["PP_SYMBOL"]		= "Symbol of Kings",
	}
end)
