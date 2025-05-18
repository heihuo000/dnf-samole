// 장비 스크립트 파일 샘플 //

// 장비 스크립트 파일 샘플 //



[packagable] 0	// 소포로 부칠수없음, 기본값이 부칠수있음이므로 주의

[avatar select ability]
`[MOVE_SPEED]`	`+`	100		
`[HP MAX]`	`+`	1.0
`[MAGICAL_DEFENSE]`	`*`	2.0
`[SKILL_LEVEL]`	`[swordman]`	40	2	// 직업, 인덱스, 레벨
[/avatar select ability]


// [avatar select ability] 에서 아래의 항목을 사용할수 있음
`[HP MAX]`					
`[MP MAX]`					

`[PHYSICAL_ATTACK]`						
`[PHYSICAL_DEFENSE]`						
`[MAGICAL_ATTACK]`						
`[MAGICAL_DEFENSE]`					
`[EQUIPMENT_PHYSICAL_ATTACK]`				
`[EQUIPMENT_PHYSICAL_DEFENSE]`				
`[EQUIPMENT_MAGICAL_ATTACK]`				
`[EQUIPMENT_MAGICAL_DEFENSE]`				

`[ELEMENT_TOLERANCE_FIRE]`				
`[ELEMENT_TOLERANCE_WATER]`				
`[ELEMENT_TOLERANCE_DARK]`				
`[ELEMENT_TOLERANCE_LIGHT]`				
`[ELEMENT_TOLERANCE_ALL]`			

`[ACTIVESTATUS_TOLERANCE_SLOW]`				
`[ACTIVESTATUS_TOLERANCE_FREEZE]`				
`[ACTIVESTATUS_TOLERANCE_POISON]`				
`[ACTIVESTATUS_TOLERANCE_STUN]`				
`[ACTIVESTATUS_TOLERANCE_CURSE]`				
`[ACTIVESTATUS_TOLERANCE_BLIND]`			
`[ACTIVESTATUS_TOLERANCE_LIGHTNING]`			
`[ACTIVESTATUS_TOLERANCE_STONE]`				
`[ACTIVESTATUS_TOLERANCE_SLEEP]`				
`[ACTIVESTATUS_TOLERANCE_DEELEMENT]`			
`[ACTIVESTATUS_TOLERANCE_DEADLYSTRIKE]`	
`[ACTIVESTATUS_TOLERANCE_BLEEDING]`				
`[ACTIVESTATUS_TOLERANCE_PIERCE]`				
`[ACTIVESTATUS_TOLERANCE_STUCK]`			
`[ACTIVESTATUS_TOLERANCE_CONFUSE]`					
`[ACTIVESTATUS_TOLERANCE_HOLD]`				
`[ACTIVESTATUS_TOLERANCE_ALL]`		

`[INVENTORY_MAX_WEIGHT]`				
`[HP_REGENRATE]`				
`[MP_REGENRATE]`				
`[MP_REGENRATE_PERCENT_UP]`			
`[MOVE_SPEED]`				
`[ATTACK_SPEED]`				
`[CAST_SPEED]`				
`[HIT_RECOVERY]`				
`[JUMP_POWER]`					

`[CRITICAL]`		
`[SKILL_LEVEL]`		

/*
+ 만 허용되는 값
HP 회복율
MP 회복율
이동속도
공격속도
캐스트속도
크리티컬확율
MP회복율 증가
모든 상태이상저항력 증가
모든 속성저항력 증가
장비 물리공격
장비 물리방어
장비 마법공격
장비 마법방어
스킬레벨
*/




[name] `수라도`
[name2] `Blade of Sura`
[basic explain]					// 장비의 간단한 설명. 줄 바꿈도 가능.
`수라도는
블라블라블라블라
..라네`
[detail explain]				// 장비의 자세한 설명. 줄 바꿈도 가능.
`수라도는
블라블라블라블라
블라블라블라블라
블라블라블라블라
..라네`
[flavor text]
`수라가 썼다고 한다`
[grade] 3					// 장비의 등급 (착용레벨 +0:커먼,언커먼 +2:레어 +3:크로니클 +4:유니크 +5:에픽)
[spectrum] 255 0 0 255 1000			// 잔상효과가 들어갈 경우 필요한 태그. 잔상이 없으면 안들어가면 됨. 현재는 유물에만 사용됨.
						// [spectrum] R G B A 잔상이 남는시간
[attach type] `[free]`				// 귀속 타입 `[free]` `[trade]` `[trade delete]` `[sealing]` 중 택일
[creation rate] 3				// 생성 비율
[rarity] 0					// 레어리티. 0:커먼 1:언커먼 2:레어 3:유니크 4:에픽 5:크로니클)
[anti evil] 50					// 항마력. 이계던전에서 필요한 스탯. 50레벨 이상의 장비에만 붙어있다.
[weight] 3000					// 무게 (단위 : g)
[usable job]					// 사용 가능 캐릭터 목록의 시작
`[swordman]`					// `[swordman]` `[fighter]` `[gunner]` `[at gunner]` `[mage]` `[priest]` `[all]` 의 선택이 있다
[/usable job]					// 반드시 이것으로 닫아줘야 함
[minimum level] 37				// 사용하기 위한 최소 레벨.
[required skill] 128				// 사용하기 위해 필요한 스킬. 없으면 항목을 지우거나 -1로 넣을 것

[icon] `EquipmentIcon.img` 0			// 아이콘 이미지 파일과 프레임 인덱스
[icon mark] `Item/IconMark.img` 5		// 아이콘 마크 이미지 파일과 프레임 인덱스 (예:유물 마크)
[extra icon] `EquipmentIcon.img` 1		// 추가 아이콘 이미지 파일과 프레임 인덱스	// 투명 아바타 // 착용후(카피 됐을 때)
[field image] `EquipmentField.img` 1		// 땅에 떨여져 있을 때의 이미지 파일과 프레임 인덱스
[custom animation]				// 하드코딩에서 사용하는 커스텀 애니메이션 파일 이름들. 칭호에만 쓰인다.
`Title.ani`
[/custom animation]

[usable even peace] 1			// 대기시(전쟁지역, 결장)에는 미쉘 염동력 의자 소환 같은 기능이 동작하지 않는다. 그러나 
								// 이때도 발동하게 하고 싶다면 본태그를 사용한다

[equipment type] `[weapon]` 2			// `[hat avatar]` `[hair avatar]` `[breast avatar]` `[face avatar]`
						// `[waist avatar]` `[coat avatar]` `[pants avatar]` `[shoes avatar]`
						// `[weapon]` `[title name]` `[coat]` `[shoulder]` `[pants]` `[shoes]` `[waist]`
						// `[amulet]` `[wrist]` `[ring]`중 택1
						// 뒤의 숫자는 가격 테이블 인덱스. 가격이 없거나 따로 입력할거면 0으로 입력

[hide equipment] `[hat avatar]`			// 장착시 숨길 장비지정. 레이어도 지정해줘야합니다. 숨길장비가 없으면 없어도 상관없습니다. 
						// `[hat avatar]` `[hair avatar]` `[breast avatar]` `[face avatar]`
						// `[waist avatar]` `[coat avatar]` `[pants avatar]` `[shoes avatar]`
						// `[weapon]` 중 택1. 
						
[hide layer] 					// 숨길 장비의 레이어 지정. 지정할수 있는 레이어수에 제한 없습니다. 숨길장비가 없으면 없어도 상관없습니다. 
800
2000
[/hide layer]					// 끝나면 막아주세요. 

[sub type] 1					// 장비의 서브 타입. (ex : 검, 도끼, 메이스) 필요 없으면 적지 않아도 됨.
						// 칭호의 경우 0:자유, 1:강제(벗을 수 없음)
[durability] 133				// 내구도. 0이면 무한대
[price] 100					// 가격. 테이블에서 읽을 거라면 넣을 필요 없다.
[value] 50					// 유저가 상점에 되파는 금액
[repair price] 50				// 수리비
						// 따로지정하지않으면 [value] 의 값이, [value] 도 지정되어있지않으면 [price] 의 값으로 대체된다.
[need material] 3043  2				// 필요한 재료템 인덱스, 재료템 개수( 예, 흑련 2개 )
[cash] 1200					// 캐쉬 가격
[medal] 3					// 메달 가격
[finish point price] 10				// FP가격
[cool time] 1000				// 장착시 쿨타임

// 변화 능력치들. 변화량이 0인 것은 적지 않아도 된다. 앞의 + 기호는 생략해도 됨 //
[HP MAX] +10					// HP 최대치
[MP MAX] +27					// MP 최대치
[physical attack] +100				// 힘
[physical defense] +10				// 체력
[magical attack] -10				// 지능
[magical defense] -26				// 정신력
[equipment physical attack] +100 +100		// 물리공격력(던전) 물리공격력(결투장)
[equipment physical defense] +25 +25		// 물리방어력(던전) 물리방어력(결투장)
[equipment magical attack] +100 +100		// 마법공격력(던전) 마법공격력(결투장)
[equipment magical defense] +38 +38		// 마법방어력(던전) 마법방어력(결투장)
[physical absolute damage] 100			// 물리 절대 데미지
[physical damage reduce] 100			// 물리 데미지 보정
[physical absolute defense] 20.0		// 물리 절대 방어. %값
[magical absolute damage] 100			// 마법 절대 데미지
[magical damage reduce] 100			// 마법 데미지 보정
[magical absolute defense] 20.0			// 마법 절대 방어. %값

[fire resistance] +17				// 화속성 저항
[water resistance] +3				// 수속성 저항
[dark resistance] +37				// 암속성 저항
[light resistance] -37				// 명속성 저항
[all elemental resistance] +10			// 모든속성 저항

[fire attack] +100				// 화속성 강화
[water attack] +101				// 수속성 강화
[dark attack] +102				// 암속성 강화
[light attack] +103				// 명속성 강화

[slow resistance] 18				// 둔화 내성
[freeze resistance] 39				// 빙결 내성
[poison resistance] 11				// 중독 내성
[stun resistance] 33				// 기절 내성
[curse resistance] 10				// 저주 내성
[blind resistance] 10				// 암흑 내성
[lightning resistance] 24			// 감전 내성
[stone resistance] 3				// 석화 내성
[sleep resistance] 33				// 수면 내성
[bleeding resistance] 32			// 출혈 내성
[confuse resistance] 33				// 혼란 내성
[hold resistance] -3				// 구속 내성
[burn resistance] 10				// 화상 내성
[weapon break resistance]			// 무기파괴 내성
[armor break resistance]			// 방어구파괴 내성
[deelement resistance] 1			// 지금 안씀
[deadlystrike resistance] 2			// 지금 안씀
[all activestatus resistance] 2			// 모든 상태이상 내성

[piercing resistance] 12			// 관통 내성
[stuck resistance] 33		 		// 회피율 (0.1% 단위)

[active status control info] `bleeding` 10 20 30 n	// 블리딩 확률증가(10%) 레벨증가(20) 지속시간증가(30%) 기타정보(블리딩의 경우에는 데미지증가율 n%)
							// freeze, stun, sleep, haste, bless, confuse, hold : 기타정보 없음
							// poison, lightning, stone, bleeding : 기타정보 1개(데미지증가율)
							// curse : 기타정보 1개(스탯감소비율), weapon break, armor break : 기타정보 1개(내구도 소모 체크 횟수)
							// slow : 기타정보 2개(이속감소비율, 공속감소비율), blind : 기타정보 2개(시야감소율,스턱률증가율)
							// burn : 기타정보 3개(데미지증가율, 주변데미지, 주변데미지적용간격)


[inventory limit] 30				// 인벤토리 한도 증가 (g단위)
[HP regen speed] 40				// HP리젠 (적은 수치*0.6가 원하는 수치, 40으로 적으면 실제 HP리젠은 40*0.6=24)
[MP regen speed] 8				// MP리젠 (적은 수치*3이 원하는 수치, 8로 적으면 실제 MP리젠은 8*3=24)			
[MP regen speed rate] 0.1			// %증가 (임시 예외 처리)
[move speed] 10					// 이동속도 (0.1% 단위)
[x move dash speed] 0.5				// X축 이동속도가 50% 증가함
[y move dash speed] -0.5			// Y축 이동속도가 -50% 감소함
[attack speed] 20				// 공격속도 (0.1% 단위)
[cast speed] 30					// 캐스팅속도 (0.1% 단위)
[hit recovery] 3				// 힛 리커버리
[rigidity] +1000				// 경직도 (힛 리커버리 반대개념)
[jump power] 10					// 점프력
[room list move speed rate] +1.0		// 마을에서의 이동속도 지정

// 공격 보정값 : 무기에만 효과가 있음. 없거나 0이면 적지 않아도 됨 //
[elemental property] `[dark element]`		// `[no element]` `[fire element]` `[water element]` `[dark element]` `[light element]` 중 택일. `[no element]`이면 안적어도 됨
[item aura] `dark element` `+` 20 300		// 장착시 발동하는 아이템 오우라.
						// `변화시킬 능력치` `+` 변화시킬수치 오우라범위
[active status] `[curse]` 37.3 100		// 상태이상 개편전에 사용하던 태그. 현재는 사용하지 않는다.

[push aside] +10				// 넉백시키는 힘
[lift up] +27					// 띄우는 힘
[physical critical hit] 5			// 물리 크리티컬 히트 확률 상승치
[magical critical hit] 5			// 마법 크리티컬 히트 확률 상승치
[stuck] -1					// 적중률. 음수값을 적는다. -1 : 적중률+1%
[ignore defense] 1				// 지금은 안쓰는 태그
[human damage rate] +2.5			// 살상 비율 변화치. %값
[fort damage rate] -31.2			// 파괴 비율 변화치. %값
[monster damage rate] 100.0			// 괴수 (아머카테고리가 0개인 녀석들을 위한) 공격 비율. 소수점 가능, %값, 100이 기본

[HP drain] 1					// HP 흡수
[MP drain] 1					// MP 흡수

[skill data up]					// 스킬 스크립트의 특정 데이터를 제어하는 태그
`[fighter]` 12 `[dungeon]` `[static]` 2 `+` 20
// 직업
// 스킬 인덱스, 
// 적용시킬 컨텐츠 : dungeon, pvp, all
// 변경할 데이터 타입 : static, level, mp, cooltime, skill consume item, casting time
// 데이터 인덱스
// 수치적용 : `+`, 비율적용 : `%`
// 수치
[/skill data up]

[skill levelup]					// 장비를 장착하면 올라가는 스킬과 레벨 레스트.
`[swordman]` 10 1				// 직업 스킬인덱스 레벨
`[fighter]` 1 33
[/skill levelup]

[animation job] `[gunner]`			// 해당 애니메이션을 사용할 직업. 이성캐릭터와 한 스크립트를 공유할 경우에만 적어주면 됨.
[variation] 0 1					// 애니메이션 베리에이션 인덱스
[layer variation] 2600 `revc`			// 레이어 인덱스 및 레이어폴더명
///쓰지말것 아래태그로 변경됨///<include> `equipment/character/gunner.lay`	// 애니메이션 리스트 파일(*.lay) 경로
[equipment ani script] `equipment/character/gunner.lay`	// 애니메이션 리스트 파일(*.lay) 경로
[move wav] `MOVE_SOUND`				// 땅에 떨어질 때, 아이템 옮길 때(장착 포함) 나는 소리
[use wav] `USE_SOUND`				// 아이템 사용할때 나는 소리

// 커스텀 효과음 리스트
[custom wav]
`WHIP_SOUND`
`HIT_SOUND`
[/custom wav]

[set name] `권투셋`				// 세트명

[set item]					// 이 아이템과 셋트를 이루는 아이템 인덱스들의 목록 (자신 포함)
112
113
114
[/set item]					// 이걸로 닫기

[set ability]					// 이걸 붙이면 이 이후의 능력치들은 셋트 아이템 장착시의 추가 능력치로 인식한다.
// ... 이 중간은 생략한다. 기본 능력치에 적을 수 있는 것은 다 가능. 형식 동일
[fullset basic explain]				// 세트아이템을 모두 모았을 때 나올 기본 설명
`이걸 다모으면 호돌돌사마가 우웩한다.`
[fullset detail explain]			// 세트아이템을 모두 모았을 때 나올 상세 설명
`이걸 다모으면 잘생긴 호돌돌사마가 우웩우웩우웩우웩한다.`
[set item master] 111				// 만일 어떤 아이템에서 [set item] 으로 자신을 지정하고 있다면
						// 이 태그로 그 아이템의 인덱스를 적어주어야 한다.
						// 이걸 적을 때는 [set item] [set ability]는 적을 필요 없다.
[/set ability]					// 세트효과 닫기

[piece set ability] 3				// 3세트 효과
// ... 이 중간은 생략한다. 기본 능력치에 적을 수 있는 것은 다 가능. 형식 동일
[parameter basic explain]			// 3세트를 모두 모았을때 나올 기본 설명
`3세트를 모으면 선화씨가 음료를 사준다.`	
[parameter detail explain]			// 3세트를 모두 모았을때 나올 상세 설명
`3세트를 모으면 선화씨가 비싸고 맛있는 음료를 사준다.`	

[/piece set ability]				// 부분세트 효과 닫기, 부분세트는 마스터가 따로 없다.

[part set index] 0				// etc/equipmentPartset.etc 에 지정한 데이터의 파츠셋 인덱스.

[hardcoding cooltime] 5000 			// 하드코딩용 쿨타임

[int data]					// 하드코딩용 정수 자료들
3
4
[/int data]

[string data]					// 하드코딩용 문자열 자료들
`ASDF.ptl`
`ASDF2.ptl`
[/string data]

[attack info] `AttackInfo/equipment_01.atk`	// 추가 어택 인포 경로/파일명


// 다른 부위의 이미지를 바꾸는 설정
[expand ani] 9 1 0 1				// 첫번째는 바꿀 부위의 인덱스, 두번째는 우선순위, 세번째는 공격범위를 사용할 것인지의 여부, 네번째는 사운드 설정을 다시 할 것인지 여부
						// 0:모자, 1:머리, 2:얼굴, 3:상의, 4:하의, 5:신발, 6:목가슴, 7:허리, 8:몸색깔, 9:무기
						// 우선순위가 높을 수록 우선적으로 그림. 착용된 장비의 이미지를 교체하기 위해서는 1이상의 우선순위가 필요
						// 공격범위 사용여부를 0으로 설정하면 설정된 애니의 공격범위를 사용하지 않고 원래 장비의 공격범위를 사용
						// 사운드 설정을 0으로 하면 원래 장비에 해당하는 사운드를 사용하고 1로 설정하면 [expand ani] 안에 설정된 [custom wav]와 [sub type]에 의해 사운드가 결정된다

[animation job] `[fighter]`			// 애니메이션의 직업. equ에 하나의 직업 ani만 들어가면 없어도 됨
[variation] 1 1
[layer variation] 2600 `tonfac`
///쓰지말것 아래태그로 변경됨////<include> `equipment/character/fighter.lay`
[equipment ani script] `equipment/character/fighter.lay`
[layer variation] 650 `tonfab`
//<include> `equipment/character/fighter.lay`

[animation job] `[at fighter]`			// 애니메이션의 직업. equ에 하나의 직업 ani만 들어가면 없어도 됨
[variation] 2 3
[layer variation] 2600 `knuckleb`
///쓰지말것 아래태그로 변경됨////<include> `equipment/character/atfighter.lay`
[equipment ani script] `equipment/character/atfighter.lay`
[layer variation] 650 `knucklea`
///쓰지말것 아래태그로 변경됨////<include> `equipment/character/atfighter.lay`
[equipment ani script] `equipment/character/atfighter.lay`

[sub type] 2

[custom wav]
`WHIP_SOUND`
`HIT_SOUND`
[/custom wav]

[expand path] `equipment/character/fighter/weapon/tonfa/`

[/expand ani]


// 공격시 1% 확룔로 자기 자신에게 30초간 경직도를 10000 증가 시킨다.
[if] 
[cooltime] 60000
[attack success] 1
[/if] 
[then] 
[target] `myself`
[duration] 30000
[probability] 1
[stat] `rigidity` `+` 10000
[/then] 

[character name y revision]  10  20

//1// 꼭 1개가 있어야 함
//0// 없어도 됨
//*// 없어도 되고 여러번 가능함
[effect]							//*// 해당 태그는 중복 사용 가능
	[attach target]	`delegator`		//0// `delegator`, `target`
	[type] `animation`				//1// `animation`, `particle`
	[attach pos] `bottom`			//1// `bottom`, `middle`, `top`
	[z revision] -10 				//0// z 축 이동 거리(px) 없으면 무시
	[index] -1						//1// <animation> 이 붙는 레이어 위치
	[option]						//0// animation 옵션
		`keep direction`			//0// animation 옵션 (방향 고정)
		`floor`						//0// animation 옵션 (바닥에 그림 : 장판 등)
		`auto remove`				//0// animation 옵션 (애니메이션이 끝나면 자동 제거)
		`apply custom color`		//0// animation 옵션 (오브젝트 색상을 따름 : 카모플라즈 등)
		`sync speed`				//0// animation 옵션 (오브젝트 애니메이션 속도에 동기화)
		`copy horizon`				//0// animation 옵션 (애니메이션 가로복사)
		`copy vertical`				//0// animation 옵션 (애니메이션 세로복사)
		`resize`					//0// animation 옵션 (오라 범위에 맞게 크기조절) 미구현!!!
	[/option]
	[module] `[room list]`			//0// 이펙트가 나타나는 모듈 (없으면 모든 모듈)
	[file name] `effect/animation/aura_range.ani`	//1// 해당 이펙트 경로와 파일명
[/effect]


[effect]							//*// 해당 태그는 중복 사용 가능
	[type] `animation`				//1// `animation`, `particle`, `range`
	[attach pos] `top`				//1// `bottom`, `middle`, `top`
	[index] 1						//1// <animation> 이 붙는 레이어 위치
	[option]						//0// animation 옵션
		`apply custom color`		//0// animation 옵션 (오브젝트 색상을 따름 : 카모플라즈 등)
		`sync speed`				//0// animation 옵션 (오브젝트 애니메이션 속도에 동기화)
	[/option]
	[module] `[room list]`			//0// 이펙트가 나타나는 모듈 (없으면 모든 모듈)
	[file name] `Character/Common/Animation/go2.ani`	//1// 해당 이펙트 경로와 파일명
[/effect]


[change type ultimateSkillCurScene]	0	//각성 스킬 컷신이미지 타입 ( 0: 사도 )
//설명: 각성 스킬 컷신 이미지 변경시 사용하는 타입이다.
//추가할떄 반드시해야할것:
//	첫번째로 스크립트 추가 동시에 UltimateSkillCutScene.etc 스크립트를 수정해야한다.(  [CHANGE ULTIMATECUTSCENE ANI FILE] 타입과 동일해야함  )
//	두번째로 소스상에서 eTYPEULTIMATECUTSCENE에 타입을 늘려라

[item category]
`monster card`		// 몬스터 카드인가?
`cannot bind`		// 바인드 스피어 가능여부?
`boss drop`		// 장비사전에서 보스 드랍 유니크인지 구분 하기 위해
[/item category]

// 강화/증폭/제련 레벨 제한
[limit upgradable level]
`normal upgrade` x y        // 강화 x~y 레벨로 제한 (x에 -1로 설정시 1레벨로 셋팅, y에 -1 설정시 만렙으로 설정)
`amplify upgrade` x y       // 증폭 x~y 레벨로 제한 (x에 -1로 설정시 1레벨로 셋팅, y에 -1 설정시 만렙으로 설정)
`separate upgrade` x y      // 제련 x~y 레벨로 제한 (x에 -1로 설정시 1레벨로 셋팅, y에 -1 설정시 만렙으로 설정)
`3rd chronicle upgrade` x y // 3차 클로니클 능력치부여 x~y 레벨로 제한 (x에 -1로 설정시 1레벨로 셋팅, y에 -1 설정시 만렙으로 설정)
`all upgrade` x y			// 위의 모든 것들을 x~y 레벨로 제한 (x에 -1로 설정시 1레벨로 셋팅, y에 -1 설정시 만렙으로 설정)
[/limit upgradable  level]


// 레벨 선형적 능력치 적용 ex) 성장형 무기, 예전 계정귀속 아이템에서 쓰임 
// ->  x1 x2 : 능력치 적용시킬 캐릭터의 최소레벨~ 최대레벨
//     n1 n3 : 던전 공격력 최소값~최대값
//     n2 n4 : 결투장 공격력 최소값~최대값
[level linear ability] x1 x2
        [grade] +min +max
        [equipment physical attack] +n1 +n2 +n3 +n4
        [separate attack] +n1 +n2 +n3 +n4
        [phisical aatack] +n1 +n2 +n3 +n4
[/level linear ability]

// 레벨 섹션별로 능력치 적용
// x1 : 레벨섹션 (0, 10, 20, 30... 이런식으로 사용)
// +n1 +n2 : 능력치 최소,최대값
// 능력치 태그는 기존에 있는것 모두 사용 가능
[level section ability] x1
        [equipment physical attack] +n1 +n2
        [separate attack] +n1 +n2
        [phisical aatack] +n1 +n2
		//...
[/level section ability]

// 레벨 섹션별로 장비 애니메이션 다르게 적용
// x1 : 해당 애니가 적용되는 레벨
// `str` : 해당 애니가 적용되야하는 직업 (이성 직업때문에 여기에 반드시 표기하기로함)
[level section ani] x1  `[swordman]`
       [equipment type] `[weapon]` 23
       [variation] 7 0
       [layer variation] 2790 `swdc`
       [equipment ani script] `equipment/character/swordman.lay`
       [layer variation] 650 `ssdb`
       [equipment ani script] `equipment/character/swordman.lay`
       [subtype] 0
[/ level section ani]