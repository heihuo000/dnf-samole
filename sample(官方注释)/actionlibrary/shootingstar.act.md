[MOTION]
[BASE ANI] `../Animation_Kinol/Attack1.ani`
[SUB ANI]
`../../../equipment/monster/goblin/LKinolPantsAnimation/attack1_100.ani` 0 100
`../../../equipment/monster/goblin/weapon09-animation/attack1_100.ani` 0 200
[/SUB ANI]
[/MOTION]
//[DEFAULT ATTACKINFO]	`../AttackInfo/Attack2.atk`

[TRIGGER]
[FRAME] 2 2 // 2번 프레임에서
[CHECKUP] [CHARACTER] //캐릭터들만 체크
[/CHECKUP]
[DO BEHAVIOR] [CHECKED OBJECT] 0 // 체크된 캐릭터에게 날림
[/TRIGGER]	
[BEHAVIOR] // 0 
	[CREATE PASSIVEOBJECT]
		[INDEX] 40004//인덱스번호 40004 번 슈팅스타.
		[PARTICLE FILENAME] `../../Common/Particle/ShootingStarPath.ptl` 슈팅스타의 파티클 경로
		[LEVEL] 40	// 슈팅스타의 마법레벨
		[POS] 0 0 300 // 상대좌표. 목표지점 높이는 위치로 감. 
		[WARNING MARK] 330 0 100 2 // WarningMark 보정. x위치 보정 y 보정 위치 딜레이, 경고마크 종류. 마법진은 위의 POS에 지정된 자표에서 생성
	[/CREATE PASSIVEOBJECT]
[/BEHAVIOR]