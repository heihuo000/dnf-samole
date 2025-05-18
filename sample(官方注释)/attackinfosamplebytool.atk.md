//////////////////////////////////////////////////////////
//@ mkjung create date 20120523 
//@ application uses 공격 정보 지정 스크립트 문법 체크
//////////////////////////////////////////////////////////

{exp}기본 데미지{/exp}[damage]
	{must1}{exp}데미지 수치{/exp}{int(:)}
[!damage]

{exp}방어력을 무시하는 절대 데미지{/exp}[absolute damage]
	{must1}{exp}데미지 수치{/exp}{int(:)}
[!absolute damage]

{exp}기재한 %만큼 더 데미지를 준다(20 입력시 현 데미지보다 20% 더 데미지를 줌){/exp}[damage bonus]
	//mkjung 120601 int-->float modi
	{must1}{exp}몇 %의 데미지를 더 주겠는가?{/exp}{float(:)}
[!damage bonus]

{exp}공격의 타입{/exp}[attack type]
	{must1}{exp}물리공격{/exp}[physic]
	{must1}{exp}마법공격{/exp}[magic]
	{must1}{exp}방어무시공격{/exp}[ignore defense]
	//mkjung 120531 add
	{must1}[weapon]

[!attack type]

{exp}무기 데미지를 적용할지 여부{/exp}[weapon damage apply]
	{must1}{exp}기본값 0 [ignore defense]면 물리 데미지가 적용{/exp}{int(:)}
[!weapon damage apply]

// 공격 대상별 공격 여부. 기본값이면 적지 않아도 됨 //
{exp}자신을 공격할지 여부{/exp}[attack myself]
	{must1}{exp}기본값 0{/exp}{int(:)}
[!attack myself]

{exp}아군을 공격할지 여부{/exp}[attack friend]
	{must1}{exp}기본값 0{/exp}{int(:)}
[!attack friend]

{exp}적(자신과 아군을 제외한 모두)을 공격할지 여부{/exp}[attack enemy]
	{must1}{exp}기본값 1{/exp}{int(:)}
[!attack enemy]

{exp}공격의 원소속성(안쓰면 기본값 [no element]){/exp}[elemental property]
	{opt1}[no element]
	{opt1}[fire element]
	{opt1}[water element]
	{opt1}[dark element]
	{opt1}[light element]
	//mkjung 120531 add
	{opt1}[no elemental]
[!elemental property]

{exp}공격에 맞았을 때의 반응{/exp}[damage reaction]
	{must1}{exp}아무 반응없음{/exp}[none]
	{must1}{exp}데미지 모션으로 설정{/exp}[damage]
	{must1}{exp}다운시킴{/exp}[down]	
	{must1}{exp}인간형 타입을 제외하고는 데미지 모션으로 설정{/exp}[damage except human]
[!damage reaction]

{exp}뒤로 날리는 힘(다운시켰을때만 이 힘이 적용됨){/exp}[push aside]
	{must1}{int(:)}
[!push aside]

{exp}위로 띄우는 힘{/exp}[lift up]
	{must1}{int(:)}
[!lift up]

{exp}넉백 타입{/exp}[knuck back]
	{must1}{exp}0:일반 1:많이 밀림 -1:안밀림{/exp}{int(-1:0)}
[!knuck back]

// 이하의 값은 1 or 0
{exp}X의 확률로 hp %값의 데미지를 입힘{/exp}[weakness]
	{must1}{exp}확률{/exp}{float(:)}
	//mkjung 120531 modi must1--> must2
	{must2}{exp}hp %값{/exp}{float(:)}
[!weakness]

{exp}바운스 여부{/exp}[bounce]
	{must1}{exp}1로 하면 [lift up]의 힘이 바운스때 적용{/exp}{int(0:1)}
[!bounce]

{exp}피격자의 HP를 흡수하는 공격으로 설정{/exp}[HP drain]
	{must1}{exp}데미지의 몇 %를 HP로 흡수하겠는가?{/exp}{float(0:1)}
[!HP drain]

{exp}피격자의 MP를 흡수하는 공격으로 설정{/exp}[MP drain]
	{must1}{exp}데미지의 몇 %를 MP로 흡수하겠는가?{/exp}{float(0:1)}
[!MP drain]

{exp}{/exp}[ignore defense]
	{must1}{int(0:1)}
[!ignore defense]

{exp}살상 (대 휴먼) 공격 비율{/exp}[human damage rate]
	{must1}{exp}소수점 가능, %값, 100이 기본{/exp}{float(:)}
[!human damage rate]

{exp}파괴 (대 건물) 공격 비율{/exp}[fort damage rate]
	{must1}{exp}소수점 가능, %값, 100이 기본{/exp}{float(:)}
[!fort damage rate]

{exp}괴수 (아머카테고리가 0개인 녀석들을 위한) 공격 비율{/exp}[monster damage rate]
	{must1}{exp}소수점 가능, %값, 100이 기본{/exp}{float(:)}
[!monster damage rate]

{exp}크리티컬 히트 확률 변화치{/exp}[critical hit]
	{must1}{exp}변화치{/exp}{float(:)}
[!critical hit]

{exp}스턱 확률 변화치{/exp}[stuck]
	{must1}{exp}변화치{/exp}{float(:)}
[!stuck]

{exp}공격 히트시마다 스턱 확률이 증가하는지 여부{/exp}[stuck prob increase]
	{must1}{exp}기본값 0{/exp}{int(0:1)}
[!stuck prob increase]

{exp}타격시 출력할 효과음의 태그{/exp}[hit wav]
	{must1}{string}
[!hit wav]

{exp}공격 방향{/exp}[attack direction]
	{must1}[hit lift up]
	{must1}[hit horizon]
	{must1}[hit down]
	//mkjung 120531 add
	{must1}[hit horizontal]
	{must1}[horizontal]
	{must1}[damage]
[!attack direction]

{exp}첫번째 것은 타격 종류{/exp}[hit info]
	{must1}{exp}타격 종류{/exp}[cut]
	{must1}{exp}타격 종류{/exp}[blow]
	{must1}{exp}타격 종류{/exp}[burn]
	{must1}{exp}타격 종류{/exp}[etc]
	{must1}{exp}타격 종류(hp가 줄지 않고 mp가 소모){/exp}[mana burn]
	{must1}{exp}무기 서브타입 따라갈려면``{/exp}{string}

	//mkjung 120531 add
	{must1}{exp}{/exp}[slash]
	{must1}{exp}{/exp}[knock]

	{must2}{exp}피 튀기는 여부(피흘림){/exp}[blood]
	{must2}{exp}피 튀기는 여부(피안흘림){/exp}[no blood]
	//mkjung 120601
	{must2}{exp}{/exp}{string}

	//mkjung 120531 int-->float modi
	//mkjung 120531 must-->opt modi
	{opt1}{exp}타격시 일시 정지 시간(무기 서브타입 따라갈려면 -1){/exp}{float(:)}
	{opt2}{exp}힛 딜레이 타임 배수(무기 서브타입 따라갈려면 -1){/exp}{float(:)}
	//mkjung 120601
	{opt3}{float(:)}
	{opt4}{float(:)}
[!hit info]

[active status]
	{must1}[blind]
	{must1}[freeze]
	{must1}[stun]
	{must1}[slow]
	{must1}[haste]
	{must1}[stone]
	{must1}[sleep]
	{must1}[confuse]
	{must1}[hold]
	{must1}[weakness]
	{must1}[armor break]
	{must1}[weapon break]
	{must1}[poison]
	{must1}[lightning]
	{must1}[bleeding]
	{must1}[burn]
	{must1}[bless]
	{must1}[curse]
	{must1}[none]	

	//mkjung 120601 add
	{must1}{exp}{/exp}{string}

	{opt1}{exp}확률(none을 적었으면 아무 값이나 적을 것){/exp}{int(0:)}
	{opt2}{exp}레벨(none을 적었으면 아무 값이나 적을 것){int(0:)}
	{opt3}{int(0:)}
	{opt4}{int(0:)}
	{opt5}{int(0:)}
	{opt6}{int(0:)}
	{opt7}{int(0:)}
[!active status]


///결투장 상태보정을 위해 추가하는 것.
{exp}휴먼 아머에게 X%의 약한 상태변화 효과를 줌(수치의 1/10){/exp}[human active status rate]
	{must2}{exp}확률{/exp}{float(:)}
[!human active status rate]

{exp}피격이 올라가는지 여부{/exp}[is hit number increasing]
	{must1}{exp}1:피격이 올라감, 0:올라 가지 않음{/exp}{int(0:1)}
[!is hit number increasing]

{exp}불사 패시브를 무시할지 여부{/exp}[ignore diehard]
	{must1}{exp}무시할지 여부(1: 예, 0:아니오){/exp}{int(0:1)}
[!ignore diehard]

{exp}상대의 슈퍼아머를 깨는 공격으로 설정{/exp}[ignore super armor]
	{must1}{exp}슈퍼아머 깨는 공격인지 여부(1: 예, 0:아니오){/exp}{int(0:1)}
[!ignore super armor]

{exp}상대의 무게를 무시하는 공격으로 설정{/exp}[ignore weight]
	{must1}{exp}무시할지 여부(1: 예, 0:아니오){/exp}{int(0:)}
[!ignore weight]

{exp}pvp관련 설정{/exp}[pvp]
	{exp}기술 고유의 공격력{/exp}[damage bonus]
		//mkjung 120601 int-->float로 변경
		{must1}{exp}{/exp}{float(:)}
	[!damage bonus]

	//mkjung 120601 add
	{exp}공격 정보{/exp}[hit info]		
		{must1}{exp}타격 이펙트 출력{/exp}[blow]
		{must1}{exp}베기 이펙트 출력{/exp}[cut]
		{must1}{exp}불태움 이펙트 출력{/exp}[burn]
		{must1}{exp}타격 종류(hp가 줄지 않고 mp가 소모){/exp}[mana burn]
		{must1}{exp}커스텀 이펙트사용(주로 코드에서 정의됨){/exp}[etc]				

		{must2}{exp}피 튀기는 여부(피흘림){/exp}[blood]
		{must2}{exp}피 튀기는 여부(피안흘림){/exp}[no blood]

		{opt1}{exp}타격시 일시 정지 시간(무기 서브타입 따라갈려면 -1){/exp}{float(:)}
		{opt2}{exp}힛 딜레이 타임 배수(무기 서브타입 따라갈려면 -1){/exp}{float(:)}
	[!hit info]
[/pvp]
								

{exp}이 공격의 공격방향을 설정{/exp}[hit direction] 
	{must1}{exp}피격자와의 방향을 통해 자동으로 알아냄{/exp}[auto]
	{must1}{exp}앞으로 공격한 것으로 설정{/exp}[front]
	{must1}{exp}뒤로 공격한 것으로 설정{/exp}[back]
	{must1}{exp}바깥쪽으로 공격한 것으로 설정{/exp}[outer]
	{must1}{exp}안쪽으로 공격한 것으로 설정{/exp}[inner]
[!hit direction] 