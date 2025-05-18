//[name] `테스트 몬스터 카드`			
//[name2] `Sample of monster cards`
[explain]
`불타는 그라카락`									// 몬스터 출몰 던전
[flavor text]
`버그는 만들지 않으려 했는데... - 밀레니엄 메지션`
[grade] 3
[attach type] `[free]`
[weight] 10
[usable job]
`[all]`
[/usable job]

[icon] `Item/IconStackable.img` 16
[field image] `Item/FieldImage.img` 23

[stackable type] `[material]` 4
[sub type] 1										// 몬스터 카드임을 나타냄!!
[price] 120

[move wav] `BONE_TOUCH`

[string data]
`Interface/MonsterCard/cut_cardimage.img`	// 몬스터 카드 이미지팩
`[weapon]`					// 인첸트 대상 (장비 부위)
`[foil]` 					// 포일
`[unlimited challenge]`				// 이벤트명칭
[/string data]

[int data]
1				// 몬스터 카드 이미지 인덱스
3000			// 몬스터 인덱스
[/int data]

[enchant]
	// 변화 능력치들. 변화량이 0인 것은 적지 않아도 된다. //
	[HP MAX] +10				// 앞의 + 기호는 생략해도 됨
	[MP MAX] +27
	[physical attack] +100
	[physical defense] +10
	[magical attack] -10
	[magical defense] -26
	[equipment physical attack] 100
	[equipment physical defense] 25
	[equipment magical attack] 100
	[equipment magical defense] 38
	[physical absolute damage] 100		// 물리 절대 데미지
	[physical damage reduce] 100		// 물리 데미지 보정
	[physical absolute defense] 20.0	// 물리 절대 방어. %값
	[magical absolute damage] 100		// 마법 절대 데미지
	[magical damage reduce] 100		// 마법 데미지 보정
	[magical absolute defense] 20.0		// 마법 절대 방어. %값

	[fire resistance] +17
	[water resistance] +3
	[dark resistance] +37
	[light resistance] -37
	[all elemental resistance] +10

	[slow resistance] 18
	[freeze resistance] 39
	[poison resistance] 11
	[stun resistance] 33
	[curse resistance] 10
	[blind resistance] 10
	[lightning resistance] 24
	[stone resistance] 3
	[sleep resistance] 33
	[deelement resistance] 1
	[deadlystrike resistance] 2
	[bleeding resistance] 32
	[confuse resistance] 33
	[hold resistance] -3
	[all activestatus resistance] +2

	[piercing resistance] 12
	[stuck resistance] 33 // (0.1% 단위)

	[inventory limit] +30
	[HP regen speed] +2
	[MP regen speed] -2
	[MP regen speed rate] 0.1	// %증가 (임시 예외 처리)
	[move speed] +1
	[attack speed] +2
	[cast speed] +3
	[hit recovery] +3
	[jump power] +10
	[room list move speed rate] +1.0	// 마을에서의 이동속도 지정

	// 공격 보정값 : 무기에만 효과가 있음. 없거나 0이면 적지 않아도 됨 //
	[elemental property] `[dark element]`				// `[no element]` `[fire element]` `[water element]` `[dark element]` `[light element]` 중 택일. `[no element]`이면 안적어도 됨
	[active status] `[curse]` 37.3 100	// 제일 앞은 공격에 의해 걸리는 상태 이상 종류.
					// `[none]` `[slow]` `[freeze]` `[poison]` `[stun]` `[curse]` `[blind]`
					// `[lightning]` `[stone]` `[sleep]` `[deelement]` `[deadlystrike]` `[bleeding]`
					// `[haste]` `[bless]` `[element]`
					// 중 택일 (`[none]`이면 안적어도 됨)
					// 두번째는 걸릴 확률 (`[none]`을 적었으면 아무 값이나 적을 것)
					// 세번째는 걸릴 강도 (`[none]`을 적었으면 아무 값이나 적을 것)



	[skill data up] `[fighter]` 12 `[static]` 2 1 200
	// 직업
	// 스킬 인덱스, 
	// 변경할 데이터 타입[static data, level info]
	// 데이터 인덱스
	// 수치적용(0), 비율적용%(1)
	// 수치



	[push aside] +10
	[lift up] +27
	[critical hit] +5.0		// 크리티컬 히트 확률 상승치
	[stuck] -1.0			// 스턱 학률 변화치
	[ignore defense] 1
	[human damage rate] +2.5	// 살상 비율 변화치. %값
	[fort damage rate] -31.2	// 파괴 비율 변화치. %값
	[monster damage rate] 100.0	// 괴수 (아머카테고리가 0개인 녀석들을 위한) 공격 비율. 소수점 가능, %값, 100이 기본

	[HP drain] 1
	[MP drain] 1

	[skill levelup]				// 장비를 장착하면 올라가는 스킬과 레벨 레스트.
	`[swordman]` 10 1				// 직업 (`[swordman]` `[fighter]` `[common]`) 스킬인덱스 레벨
	`[fighter]` 1 33
	[/skill levelup]
[/enchant]