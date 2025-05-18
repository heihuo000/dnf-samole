//2008-12-12 김민수
//체력에 따른 장비 능력치 변화 예제


[change status on change hp]
`[magical attack]`	// 적용될 능력치 : 물리공격력 
50 5				// hp가 50% 일때 5%의 값을 적용한다. (실제로 물리공격력 100을 증가하는 아이템이면 hp 50%일땐 5의 능력치만 받는다.)
10 10				// hp가 10% 일때 10%의 값을 적용한다. (실제로 물리공격력 100을 증가하는 아이템이면 hp 10%일땐 10의 능력치만 받는다.)
				// hp 50% 와 10% 사이에는 값을 선형 보간해서 받는다. 
`[magical defense]`
50 5
10 10

`[equipment physical defense]`
50 5
10 10
[/change status on change hp]



//------------------------------------------------------------------------------//
// 정수 인자
// 첫번째,세번째 인자는 hp의 최대값과 최소값. 두값의 사이에는 보간 되며 그범위를 벗어날댄 최대값 최소값을 적용 받는다.
// 두번째,네번째 인자는 hp가 최소 최대일때의 적용받는 값의 비율. 두값 사이는 선형 보간 된다.


// 적용될 능력치 타입은 아래와 같음.
`[equipment physical attack]`
`[equipment physical defense]`
`[equipment magical attack]`
`[equipment magical defense]`
`[physical absolute damage]`
`[physical damage reduce]`
`[physical absolute defense]`
`[magical absolute damage]`
`[magical damage reduce]`
`[magical absolute defense]`
`[fire resistance]`
`[water resistance]`
`[dark resistance]`
`[light resistance]`
`[all elemental resistance]`
`[slow resistance]`
`[freeze resistance]`
`[poison resistance]`
`[stun resistance]`
`[curse resistance]`
`[blind resistance]`
`[lightning resistance]`
`[stone resistance]`
`[sleep resistance]`
`[burn resistance]`
`[weapon break resistance]`
`[bleeding resistance]`
`[all activestatus resistance]`
`[piercing resistance]`
`[stuck resistance]`
`[confuse resistance]`
`[hold resistance]`
`[armor break resistance]`
`[inventory limit]`
`[HP regen speed]`
`[MP regen speed]`
`[MP regen speed rate]`
`[move speed]`
`[attack speed]`
`[cast speed]`
`[hit recovery]`
`[jump power]`