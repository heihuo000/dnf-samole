// 월드맵 스크립트 예제 //

[name] `그란 플로리스		// 이름
[map image] `Map.img` 0	// 지도 이미지 파일 이름, 프레임 인덱스
[dungeon]				// 나열할 던전
1 -1				// 던전 인덱스, 출력하기 위해 받거나 클리어해야 할 퀘스트 인덱스
2 -1
3 -1
4 -1
5 102
6 [in progress] 203		// 던전 인덱스와 퀘스트 인덱스 사이에 [in progress]가 들어가면 퀘스트 진행 중일 때만 던전이 보입니다
[/dungeon]




[hell dungeon] 1	// 월드에 헬던전 유무 (1:있음, 0:없음)

[hell quest]		// 헬퀘스트 인덱스 : 해당 퀘스트를 클리어해야, 헬던전에 들어갈수 있음
2601
[/hell quest]

[item condition]	// 헬던전에 들어갈때 소모되는 아이템 인덱스, 갯수
4150 1			// 해당 아이템이 없다면, 헬던전에 입장할 수 없음.
[/item condition]

[minimap points]
1000	100			// 위치(x, y)  step 0
100		10			// 위치(x, y)  step 1
[/minimap points]