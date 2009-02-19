﻿local L = AceLibrary("AceLocale-2.2"):new("PallyPower")

L:RegisterTranslations("koKR", function()
	return {
		---- Options menu ----
		["BAS"] 		= "축복 지정",
		["BAS_DESC"] 		= "축복 지정창 열기",
		["BRPT"] 		= "축복 보고",
		["BRPT_DESC"] 		= "파티/레이드 채널에 축복 보고",
		["BSC"] 		= "버프 크기",
		["BSC_DESC"] 		= "버프 바 크기 설정",
		["CSC"] 		= "설정창 크기",
		["CSC_DESC"] 		= "설정창 크기 설정",
		["SBUFF"] 		= "스마트 버프",
		["SBUFF_DESC"] 		= "확정된 직업에 버프 건너뜀",
		["DISP"] 		= "화면 표시",
		["DISP_DESC"] 		= "버프 바 설정",
		["DISPCOL"] 		= "세로 행(줄)",
		["DISPCOL_DESC"] 	= "새로 행 정렬 갯수 설정",
		["DISPROWS"] 		= "가로 열(칸)",
		["DISPROWS_DESC"] 	= "가로 열 정렬 갯수 설정",
		["DISPGAP"] 		= "버튼 간격",
		["DISPGAP_DESC"] 	= "버튼 간격 설정",
		["DISPCL"] 		= "직업 버튼",
		["DISPCL_DESC"] 	= "직업 버튼 방향 설정",
		["DISPPL"] 		= "플레이어 버튼",
		["DISPPL_DESC"] 	= "플레이어 버튼 방향 설정",
		["DISABLED"]		= "비활성화됨",
		["ENABLED"]		= "활성화됨",
		["HIDEPB"]              = "플레이어 버튼 토글 표시",
		["HIDEPB_DESC"]		= "플레이어 버튼 표시/숨기기",
		["HIDEDH"]		= "이동 버튼 토글",
		["HIDEDH_DESC"]		= "이동 버튼 표시/숨기기",
		["SHOWPARTY"]		= "파티일때 표시",
		["SHOWPARTY_DESC"]	= "파티일때 버프바 표시/숨기기",
		["SHOWSINGLE"]		= "솔로잉일때 표시",
		["SHOWSINGLE_DESC"]	= "솔로잉일때 버프 바 표시/숨기기",
		["GREATER"]             = "상급 축복",
		["GREATER_DESC"]	= "상급 축복 활성/비활성",
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
		["DRAGHANDLE"] 		= "버프 바 이동 : 마우스 좌클릭+드래그\n잠금/해제 : 마우스 좌클릭\n옵션창 : 마우스 우클릭",
		["PP_CLEAR"]		= "초기화",
		["PP_REFRESH"]		= "새로 고침",
		["PP_OPTIONS"]		= "옵션",
		["PP_RAS1"]		= "--- 성기사별 축복 보고서 ---",
		["PP_RAS2"]		= "--- 축복 보고서 끝 ---",
		["PP_TSEARCH"]		= "(.*) 연마",
		["PP_BNSEARCH"]		= "(.*)의 축복",
		["PP_RANK1"]		= "1 레벨",
		["PP_RSEARCH"]		= "(.*) 레벨",
		["PP_SYMBOL"]		= "왕의 징표",
	}
end)
