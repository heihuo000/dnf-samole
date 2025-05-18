// 아이템 해체 스크립트 샘플
[cube index]	// 큐브의 아이템 인덱스 리스트
`[no element]`		// 지정할 큐브의 원소 속성. `[no element]` `[fire element]` `[water element]` `[light element]` `[dark element]` 중 택일
10001		// 인덱스들. 저등급 아이템 해체의 결과부터 차례대로 적는다
10002
10003
10004
10005
[/cube index]
[cube index]	// 큐브의 아이템 인덱스 리스트
`[fire element]`		// 지정할 큐브의 원소 속성. `[no element]` `[fire element]` `[water element]` `[light element]` `[dark element]` 중 택일
10011		// 인덱스들. 저등급 아이템 해체의 결과부터 차례대로 적는다
10012
10013
10014
10015
[/cube index]
[cube index]	// 큐브의 아이템 인덱스 리스트
`[water element]`		// 지정할 큐브의 원소 속성. `[no element]` `[fire element]` `[water element]` `[light element]` `[dark element]` 중 택일
10021		// 인덱스들. 저등급 아이템 해체의 결과부터 차례대로 적는다
10022
10023
10024
10025
[/cube index]
[cube index]	// 큐브의 아이템 인덱스 리스트
`[light element]`		// 지정할 큐브의 원소 속성. `[no element]` `[fire element]` `[water element]` `[light element]` `[dark element]` 중 택일
10031		// 인덱스들. 저등급 아이템 해체의 결과부터 차례대로 적는다
10032
10033
10034
10035
[/cube index]
[cube index]	// 큐브의 아이템 인덱스 리스트
`[dark element]`		// 지정할 큐브의 원소 속성. `[no element]` `[fire element]` `[water element]` `[light element]` `[dark element]` 중 택일
10041		// 인덱스들. 저등급 아이템 해체의 결과부터 차례대로 적는다
10042
10043
10044
10045
[/cube index]

[legacy info]	// 뽑기 정보들
1		// 처음 정수자료는 뽑기 자료의 등급. 1부터 시작한다. (1 = 1~10, 2=11~20...)
		// 그 이후부터는 뽑기 아이템의 정수 자료와 동일한 포맷.

1001					// 아무 아이템도 안 걸렸을 때 나올 기본 아이템.

10001 288				// 나올 아이템의 인덱스와 확률. 확률은 만분율 (0.001%)
2342 301				// ex) 2342번 아이템 0.301% 확률로 나옴
3222 1					// ex) 3222번 아이템 0.001% 확률로 나옴
4222 5000
2222 243
[/legacy info]

[legacy info]	// 뽑기 정보들
2		// 처음 정수자료는 뽑기 자료의 등급. 1부터 시작한다.
		// 그 이후부터는 뽑기 아이템의 정수 자료와 동일한 포맷.

1001					// 아무 아이템도 안 걸렸을 때 나올 기본 아이템.

10001 288				// 나올 아이템의 인덱스와 확률. 확률은 만분율 (0.001%)
2342 301				// ex) 2342번 아이템 0.301% 확률로 나옴
3222 1					// ex) 3222번 아이템 0.001% 확률로 나옴
4222 5000
2222 243
[/legacy info]

[skill info]	// 해체와 관련된 스킬 정보
33		// 제일 처음에는 메인 해체 스킬 인덱스
`[swordman]`		// 해당 직업. `[swordman]` `[fighter]` `[gunner]` 중 택일
2		// 성장형
73		// 스킬 인덱스
`[fire element]`		// 스킬이 영향을 미치는 큐브의 속성. `[fire element]` `[water element]` `[light element]` `[dark element]`중 택일

`[fighter]`	// 동일하게 반복
1
11
`[water element]`
[/skill info]

[skill prob] 1.0 5.0	// 스킬이 영향을 미치는 확률. %값이며 소수 가능.
			// 앞의 값은 레벨 1에서, 뒤의 값은 최대 레벨에서