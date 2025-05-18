[name] `격투기 무기 뽑기`
[explain]
`격투가 무기를 뽑아봅시다!`
[grade] 1
[creation rate] 90
[weight] 5
[usable job]
`[all]`
[/usable job]
[minimum level] 1

[stackable type] `[stackable legacy]` 0		// 타입은 `[legacy]`로

[icon] `Item/IconMaterial.img` 38
[field image] `Item/FieldImage.img` 23

[move wav] `BONE_TOUCH`

[int data]
1001 1					// 아무 아이템도 안 걸렸을 때 나올 기본 아이템. 기본 아이템 겟수

10001 288 1				// 나올 아이템의 인덱스와 확률. 확률은 십만분율 (0.001%), 아이템이 몇개 나올지.
2342 301  1				// ex) 2342번 아이템 0.301% 확률로 나옴
3222 1	  1				// ex) 3222번 아이템 0.001% 확률로 나옴
4222 5000 1
2222 243  1
[/int data]

//스텍커블인 경우 [int data]의 세번째 인자에 의해 나올 겟수가 결정 되지만 장비는 무조건 1개. 
//무조건 1개라고 해서 값이 없어도 되는건 아니다.