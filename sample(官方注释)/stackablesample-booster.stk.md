// 소모품 스크립트 파일 샘플 //

[packagable] 0	// 소포로 부칠수없음, 기본값이 부칠수있음이므로 주의

[name] `포션`
[name2] `Potion'
[explain]					// 소모품의 설명. 줄 바꿈도 가능.
`포션은
죽어갈때
먹을 것`
[flavor text]
`죽을 때 먹으면 좋다는 전설이 있다`
[grade] 6				// 소모품의 등급
[attach type] `[free]`				// 귀속 타입 `[free]` `[trade]` `[trade delete]` `[sealing]` 중 택일
[creation rate] 2				// 생성 비율 (주의 : 너무 큰 수를 쓰면 안됨. 10 이하를 추천)
[rarity] 0				// 레어리티. 0:커먼 1:언커먼 2:레어 3:유니크 4:에픽
[weight] 5				// 무게 (단위 : 10g)
[usable job]			// 사용 가능 캐릭터 목록의 시작
`[all]`					// `[swordman]` `[fighter]` `[all]` 등의 선택이 있다.
[/usable job]			// 반드시 이것으로 닫아줘야 함
[minimum level] 0				// 사용하기 위한 최소 레벨.

[icon] `StackableIcon.img` 2		// 아이콘 이미지 파일과 프레임 인덱스
[field image] `StackableField.img` 1	// 땅에 떨여져 있을 때의 이미지 파일과 프레임 인덱스

[stackable type] `[waste]` 14			// 소모품의 타입.
// `[waste]` `[material]` `[recipe]` `[throw]` `[set]` `[legacy]` `[quest]` `[etc]` `[creature]` `[feed]`
// `[cera package]` `[package]` `[cera booster]` `[booster]`
					// 뒤의 숫자는 가격 테이블 인덱스. 가격이 없다면 0 입력.
					// 가격을 따로 입력해도 되팔기/수리 가격은 이것을 따라간다.
[price] 100				// 가격. 테이블에서 읽을 거라면 넣을 필요 없다.
[cash] 1200				// 캐쉬 가격
[medal] 5				// 메달 가격
[value] 50				// 유저가 상점에 되파는 금액
[finish point price] 10			// FP가격

[cool time] 1000				// 사용한 뒤 액티브 스킬과 소모품의 사용을 막을 시간. ms단위이며 `[waste]`와 `[throw]`에만 유효하다.
[쿨타입 그룹] 0				// 속하는 쿨타임 그룹. -1이거나 안쓰면 그룹 없이 자기 자신에만 적용.
[party cooltime] 1			// 1이면 파티쿨타임적용

[move wav] `MOVE_SOUND`		// 땅에 떨어질 때, 아이템 옮길 때(장착 포함) 나는 소리

[use wav] `사용할 때 나올 효과음의 태그`

[int data]				// 하드코딩용 정수 자료들
3
4
[/int data]

[string data]				// 하드코딩용 문자열 자료들
`ASDF.ptl`
`ASDF2.ptl`
[/string data]

[applying range] 100				// 적용 범위



[booster info]		//부스터 아이템 정보
[avatar]		//아바타 아웃
2			//아바타에서 몇개를 뽑을지
39000	1000	1	0	0	//아이템인덱스	상대확률	겟수	기간	능력치
39000	1000	1	0	0
39000	1000	1	0	0
39000	1000	1	0	0
[/avatar]
[cera]
1
8	1000	10			//아이템인덱스	상대확률	겟수
[/cera]
//가능한 태그들
[creature]
1
8	1000	10
[/creature]
1
8	1000	10
[equipment]
1
8	1000	10
[/equipment]
1
8	1000	10
[stackable]
1
8	1000	10
[/stackable]
[etc]
1
8	1000	10
[/etc]
[/booster info]



//
// 이 아이템이 `[cera package]` 이거나 `[package]` 일때
[package data]
정수:아이템인덱스 정수:아이템갯수
[/package data]
//
