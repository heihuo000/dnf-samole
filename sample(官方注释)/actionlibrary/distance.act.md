// 이 스크립트는 300픽셀 밖으로 나가면 캐릭터한테 미티어를 떨구는 스크립트입니다.
[MOTION]
[BASE ANI] `../Animation_Kinol/Move.ani`
[SUB ANI]
`../../../equipment/monster/goblin/LKinolPantsAnimation/move_100.ani` 0 100
`../../../equipment/monster/goblin/weapon09-animation/move_100.ani` 0 200
[/SUB ANI]
[/MOTION]

[TRIGGER]
	[LIMIT] 1
[CHECKUP] [CHARACTER]
	[DISTANCE] [>] 300
[/CHECKUP]
[DO BEHAVIOR] [CHECKUP OBJECT] 0
[/TRIGGER]	
[BEHAVIOR] // 0 
	[CREATE PASSIVEOBJECT]
		[INDEX] 40004//인덱스번호
		[PARTICLE FILENAME] `../../../PassiveObject/Common/Particle/ShootingStarPath.ptl`
		[LEVEL] 40
		[POS] 0 0 300//x y z //목표지점 높이는 위치로 감.
		//[USE TARGET TEAM] // 
		//[USE MY DIRECTION]
		//[USE MY BASEPOS]
		[WARNING MARK] 330 0 100 2 // WarningMark 보정. x위치 보정 y 보정 위치 딜레이, 경고마크 종류.
	[/CREATE PASSIVEOBJECT]
	[TRIGGER] 1 [RESET]
	[TRIGGER] 1 [ON]
[/BEHAVIOR]
[TRIGGER]
[ENABLE] [OFF]
[LIMIT] 1
[CHECKUP] [CHARACTER]
	[DISTANCE] [=<] 300
[/CHECKUP]
[DO BEHAVIOR] [ME] 1
[/TRIGGER]
[BEHAVIOR]
	[TRIGGER] 0 [RESET]
	[TRIGGER] 0 [ON]
[/BEHAVIOR]