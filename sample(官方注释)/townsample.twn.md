 // 마을 스크립트 파일 샘플 //

[name] `헨돈 마이어`				// 이름

[entering title] `TitleAnimation/HendonMyre.ani`	// 타이틀로 사용할 애니메이션. 화면의 중앙에 애니메이션 중점을 맞춘다.
[cutscene image] `CutScene.img` 0			// 컷씬 이미지 파일 이름, 프레임 인덱스

[dungeon what must be cleared] -1					// 진입을 위해 클리어해야 할 던전 인덱스. -1이면 없음

[area]						// 지역 (AREA) 하나의 정보
0						// 인덱스. 0부터 시작해서 연속된 값으로 사용할 것
`Town/HendonMyre/Gate.map`			// 맵 스크립트 파일 이름 (Script/Map 아래의 상대경로)
`[minimap rect]`
1000	100		2500	500			// 시작점(x, y) 끝점(x, y) step 0
100		10		250		50			// 시작점(x, y) 끝점(x, y) step 1
`[/minimap rect]`
`[gate]`					// 지역 타입. `[normal]` `[gate]` `[fishing place]` `[pub]` `[dungeon gate]` 중 택일
273						// 지역 타입에 따른 정수 자료들. 사용법은 최하단에
222
[/area]

[area]
1
`Town/HendonMyre/Square.map`
`[normal]`
[/area]


// 정수 자료 사용법
//
// `[normal]`	: 사용하지 않음
//
// `[gate]`	: [0]처음 시작시 x좌표 [1]처음 시작시y좌표
//
// `[fishing place]`	: 낚시로 걸릴 아이템 확률. 뽑기 아이템의 정수자료와 같은 포맷으로 사용하면 됨.
//
// `[pub]`	: 사용하지 않음
//
// `[dungeon gate]`	: [0]들어갈 월드맵 [1]들어갈 월드맵상의 지역 인덱스