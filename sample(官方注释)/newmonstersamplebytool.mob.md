//////////////////////////////////////////////////////////
//@ mkjung create date 20120523 
//@ application uses 몬스터 기본정보,특성 지정 스크립트 문법 체크
//////////////////////////////////////////////////////////

{exp}몬스터의 충돌체크 범위{/exp}[width]
	{must1}{exp}X좌표{/exp}{int(:)}
	{must2}{exp}Y좌표{/exp}{int(:)}
[!width]

{exp}monster.kor.str 파일 내의 인덱스{/exp}[name]
	{must1}{exp}name space{/exp}{string}
[!name]

{exp}몬스터 얼굴 정보{/exp}[face image]
	{must1}{exp}이미지의 파일{/exp}{string}
	{must2}{exp}프레임 인덱스{/exp}{int(0:)}
[!face image]

{exp}죽을 때 보여줄 이펙트 지정{/exp}[die effect]
	{must1}{exp}0-사망이펙트 있음([die effect] 태그가 있을때는 무조건 0으로 할 것){/exp}{int(0:)}
	{must2}{exp}육편의 색상번호{/exp}{int(:)}
	{must3}{exp}사망이펙트 중 보여주지않을 것들의 비트값{/exp}{int(0:)}
[!die effect]

{exp}따라갈 능력치 테이블 인덱스(기본값 0){/exp}[ability table]
	{must1}{exp}0:기본, 1:소환수, 2:경쟁던전{/exp}{int(0:2)}
[!ability table]

{exp}소환 스킬 1렙당 능력치 상승률(%){/exp}[summon skill status up rate]
	{must1}{exp}힘{/exp}{float(:)}
	{must2}{exp}체력{/exp}{float(:)}
	{must3}{exp}지능{/exp}{float(:)}
	{must4}{exp}정신{/exp}{float(:)}
	{must5}{exp}HP{/exp}{float(:)}
	{must6}{exp}MP{/exp}{float(:)}
	{must7}{exp}물공{/exp}{float(:)}
	{must8}{exp}물방{/exp}{float(:)}
	{must9}{exp}마공{/exp}{float(:)}
	{must10}{exp}마방{/exp}{float(:)}
[!summon skill status up rate]

{exp}일반 챔피언이 가질수있는 원소속성의 종류{/exp}[common champion elemental property]
	{opt1}{etc}[fire element]
	{opt2}{etc}[water element]
	{opt3}{etc}[dark element]
	{opt4}{etc}[light element]
	{opt5}{etc}[no element]
[/common champion elemental property]

[ability category]

//mkjung 120618 수정.
//tag opt처리 ->  line tag 처리.
//수식,수치, 를 인자로.

//	{opt1}{exp}능력치{exp}{etc}[HP MAX]
//	{opt2}{exp}힘{/exp}{etc}[PHYSICAL_ATTACK]
//	{opt3}{exp}체력{/exp}{etc}[PHYSICAL_DEFENSE]
//	{opt4}{exp}지능{/exp}{etc}[MAGICAL_ATTACK]
//	{opt5}{exp}정신력{/exp}{etc}[MAGICAL_DEFENSE]
//	{opt6}{exp}물리 공격력{/exp}[EQUIPMENT_PHYSICAL_ATTACK]
//		{must1}{exp}절대값을 더해줌{/exp}[+]
//		{must1}{exp}%단위로 곱해줌{/exp}[*]
//		{must2}{exp}수치{/exp}{int(:)}
//	[!EQUIPMENT_PHYSICAL_ATTACK]
//
//	{opt7}{exp}물리 방어력{/exp}{etc}[EQUIPMENT_PHYSICAL_DEFENSE]
//	{opt8}{exp}마법공격(우리 시스템에 마법공격이란 항목없어 동작안함){/exp}{etc}[EQUIPMENT_MAGICAL_ATTACK]
//	{opt9}{exp}{/exp}{etc}[EQUIPMENT_MAGICAL_DEFENSE]

	//mkjung 120620 수식,수치 opt처리.
	{exp}능력치{exp}[HP MAX]
		{opt1}{exp}절대값을 더해줌{/exp}[+]
		{opt1}{exp}%단위로 곱해줌{/exp}[*]
		{opt2}{exp}수치{/exp}{int(:)}
	[!HP MAX]
	{exp}힘{/exp}[PHYSICAL_ATTACK]
		{opt1}{exp}절대값을 더해줌{/exp}[+]
		{opt1}{exp}%단위로 곱해줌{/exp}[*]
		{opt2}{exp}수치{/exp}{int(:)}
	[!PHYSICAL_ATTACK]
	{exp}체력{/exp}[PHYSICAL_DEFENSE]
		{opt1}{exp}절대값을 더해줌{/exp}[+]
		{opt1}{exp}%단위로 곱해줌{/exp}[*]
		{opt2}{exp}수치{/exp}{int(:)}
	[!PHYSICAL_DEFENSE]

	{exp}지능{/exp}[MAGICAL_ATTACK]
		{opt1}{exp}절대값을 더해줌{/exp}[+]
		{opt1}{exp}%단위로 곱해줌{/exp}[*]
		{opt2}{exp}수치{/exp}{int(:)}
	[!MAGICAL_ATTACK]

	{exp}정신력{/exp}[MAGICAL_DEFENSE]
		{opt1}{exp}절대값을 더해줌{/exp}[+]
		{opt1}{exp}%단위로 곱해줌{/exp}[*]
		{opt2}{exp}수치{/exp}{int(:)}
	[!MAGICAL_DEFENSE]

	{exp}물리 공격력{/exp}[EQUIPMENT_PHYSICAL_ATTACK]
		{opt1}{exp}절대값을 더해줌{/exp}[+]
		{opt1}{exp}%단위로 곱해줌{/exp}[*]
		{opt2}{exp}수치{/exp}{int(:)}
	[!EQUIPMENT_PHYSICAL_ATTACK]

	{exp}물리 방어력{/exp}[EQUIPMENT_PHYSICAL_DEFENSE]
		{opt1}{exp}절대값을 더해줌{/exp}[+]
		{opt1}{exp}%단위로 곱해줌{/exp}[*]
		{opt2}{exp}수치{/exp}{int(:)}
	[!EQUIPMENT_PHYSICAL_DEFENSE]

	{exp}마법공격(우리 시스템에 마법공격이란 항목없어 동작안함){/exp}[EQUIPMENT_MAGICAL_ATTACK]
		{opt1}{exp}절대값을 더해줌{/exp}[+]
		{opt1}{exp}%단위로 곱해줌{/exp}[*]
		{opt2}{exp}수치{/exp}{int(:)}
	[!EQUIPMENT_MAGICAL_ATTACK]

	//mkjung 120620 add.
	[EQUIPMENT_MAGICAL_DEFENSE],[ATTACK_SPEED],[HP MAX BOSS]
		{opt1}{exp}절대값을 더해줌{/exp}[+]
		{opt1}{exp}%단위로 곱해줌{/exp}[*]
		{opt2}{exp}수치{/exp}{int(:)}
	[!EQUIPMENT_MAGICAL_DEFENSE],[!ATTACK_SPEED],[!HP MAX BOSS]


[/ability category]

{exp}소속 카테고리의 리스트{exp}[category]
	{opt1}{exp}인간형{/exp}[human]
	{opt2}{exp}야수{/exp}[beast]
	{opt3}{exp}식물{/exp}[plant]
	{opt4}{exp}곤충{/exp}[insect]
	{opt5}{exp}기계{/exp}[machine]
	{opt6}{exp}유기체{/exp}[organic]
	{opt7}{exp}복합체{/exp}[hybrid]
	{opt8}{exp}언데드{/exp}[undead]
	{opt9}{exp}악마{/exp}[devil]
	{opt10}{exp}정령{/exp}[spirit]
	{opt11}{exp}용족{/exp}[dragon]
	//{opt12}{exp}천사{/exp}[angel]
	{opt12}{exp}접근전용 몬스터{/exp}[melee combat]
	{opt13}{exp}사격전용 몬스터{/exp}[range combat]
	{opt14}{exp}소극적인 몬스터{/exp}[close-passive]
	{opt15}{exp}주의깊은 몬스터{/exp}[close-carefully]
	{opt16}{exp}접근AI 저돌,위협 몬스터일때 풀슈퍼아머{/exp}[full-superarmor]
	{opt17}{exp}저돌적인 몬스터{/exp}[close-tough]
	{opt18}{exp}위협적인 몬스터{/exp}[close-manace]
	{opt19}{exp}인간 아머 (살상 옵션 적용){/exp}[human armor]
	{opt20}{exp}건물 아머 (파괴 옵션 적용){/exp}[fort armor]
	{opt21}{exp}성령 아머 (방어력 비약적 증가){/exp}[divine armor]
	{opt22}{exp}고블린{/exp}[goblin]
	{opt23}{exp}타우{/exp}[tau]
	{opt24}{exp}루가루{/exp}[lugaru]
	{opt25}{exp}붙박이형{/exp}[fixture]
	{opt26}{exp}초기 위치에서 움직이지 않음{/exp}[stay]
	{opt27}{exp}PASSIVEOBJECT_TYPE_MELEE{/exp}[melee]
	{opt28}{exp}PASSIVEOBJECT_TYPE_MISSILE{/exp}[missile]
	{opt29}{exp}PASSIVEOBJECT_TYPE_ENERGY{/exp}[energy]
	{opt30}{exp}PASSIVEOBJECT_TYPE_PHYSICAL{/exp}[physical]
	{opt31}{exp}PASSIVEOBJECT_TYPE_MAGICAL{/exp}[magical]
	{opt32}{exp}PASSIVEOBJECT_TYPE_BULLET{/exp}[bullet]
	{opt33}{exp}PASSIVEOBJECT_TYPE_CANON{/exp}[cannon]
	{opt34}{exp}PASSIVEOBJECT_TYPE_EXPLOSION{/exp}[explosion]
	{opt35}{exp}PASSIVEOBJECT_TYPE_INFLAME{/exp}[inflame]
	{opt36}{exp}PASSIVEOBJECT_TYPE_INFLAME{/exp}[non inflame]
	{opt37}{exp}PASSIVEOBJECT_TYPE_LIGHT{/exp}[light]
	{opt38}{exp}PASSIVEOBJECT_TYPE_DARK{/exp}[dark]
	{opt39}{exp}PASSIVEOBJECT_TYPE_WATER{/exp}[water]
	{opt40}{exp}PASSIVEOBJECT_TYPE_FIRE{/exp}[fire]
	{opt41}{exp}PASSIVEOBJECT_TYPE_FORT{/exp}[fort]
	//mkjung 120620 add.
	{opt42}{exp}{/exp}[unbeatable]
	//mkjung 120621 add.
	{opt43}{exp}천사{/exp}[angel]
	//mkjung 120703 오타였음.
	//{opt44}[close-cafefully]
	//{opt45}[close-manance]
[/category]

{exp}레벨{/exp}[level]
	{must1}{exp}최소 레벨{/exp}{int(:)}
	{must2}{exp}최대 레벨{/exp}{int(:)}
[!level]

{exp}HP 능력치{/exp}[HP MAX]
	{must1}{exp}최소 레벨 능력치{/exp}{int(:)}
	{must2}{exp}최대 레벨 능력치{/exp}{int(:)}
[!HP MAX]

{exp}MP 능력치{/exp}[MP MAX]
	{must1}{exp}최소 레벨 능력치{/exp}{int(:)}
	{must2}{exp}최대 레벨 능력치{/exp}{int(:)}
[!MP MAX]

// 원소 속성. 0이면 적지 않아도 된다. //
{exp}fire 속성{/exp}[fire resistance]
	{must1}{int(:)}
	{must2}{int(:)}
[!fire resistance]

{exp}water 속성{/exp}[water resistance]
	{must1}{int(:)}
	{must2}{int(:)}
[!water resistance]

{exp}dark 속성{/exp}[dark resistance]
	{must1}{int(:)}
	{must2}{int(:)}
[!dark resistance]

{exp}light 속성{/exp}[light resistance]
	{must1}{int(:)}
	{must2}{int(:)}
[!light resistance]

// 특수 속성. 0이면 적지 않아도 된다. //
{exp}슬로우{/exp}[slow resistance]
	{must1}{int(:)}
	{must2}{int(:)}
[!slow resistance]

//mkjung 120618 수정
//etc--> line tag 인자2개
{exp}얼기{/exp}[freeze resistance]
	{opt1}{int(0:)}
	{opt2}{int(0:)}
[!freeze resistance]

{exp}중독{/exp}[poison resistance]
	{opt1}{int(0:)}
	{opt2}{int(0:)}
[!poison resistance]

{exp}스턴{/exp}[stun resistance]
	{opt1}{int(0:)}
	{opt2}{int(0:)}
[!stun resistance]

{exp}저주{/exp}[curse resistance]
	{opt1}{int(0:)}
	{opt2}{int(0:)}
[!curse resistance]

{exp}블라인드{/exp}[blind resistance]
	{opt1}{int(0:)}
	{opt2}{int(0:)}
[!blind resistance]

{exp}감전{/exp}[lightning resistance]
	{opt1}{int(0:)}
	{opt2}{int(0:)}
[!lightning resistance]

{exp}석화{/exp}[stone resistance]
	{opt1}{int(0:)}
	{opt2}{int(0:)}
[!stone resistance]

{exp}수면{/exp}[sleep resistance]
	{opt1}{int(0:)}
	{opt2}{int(0:)}
[!sleep resistance]

{exp}출혈{/exp}[bleeding resistance]
	{opt1}{int(0:)}
	{opt2}{int(0:)}
[!bleeding resistance]

{exp}관통{/exp}[piercing resistance]
	{opt1}{int(0:)}
	{opt2}{int(0:)}
[!piercing resistance]

{exp}스턱{/exp}[stuck resistance]
	{opt1}{int(0:)}
	{opt2}{int(0:)}
[!stuck resistance]

{exp}혼란{/exp}[confuse resistance]
	{opt1}{int(0:)}
	{opt2}{int(0:)}
[!confuse resistance]

{exp}홀드{/exp}[hold resistance]
	{opt1}{int(0:)}
	{opt2}{int(0:)}
[!hold resistance]

[deelement resistance], [deadlystrike resistance]
	{opt1}{int(0:)}
	{opt2}{int(0:)}
[!deelement resistance], [!deadlystrike resistance]

// 비공개 정보들
{exp}HP 초당 회복률{/exp}[HP regen speed]
	{opt1}{int(0:)}
	{opt2}{int(0:)}
[!HP regen speed]

{exp}MP 초당 회복률{/exp}[MP regen speed]
	{opt1}{int(0:)}
	{opt2}{int(0:)}
[!MP regen speed]

{exp}이동 속도((1000이 100%, 단위 : px/sec){/exp}[move speed]
	{opt1}{int(0:)}
	{opt2}{int(0:)}
[!move speed]

{exp}공격 속도(1000이 100%){/exp}[attack speed]
	{opt1}{int(0:)}
	{opt2}{int(0:)}
[!attack speed]

{exp}캐스트 속도(1000이 100%){/exp}[cast speed]
	{opt1}{int(0:)}
	{opt2}{int(0:)}
[!cast speed]

[hit recovery]
	{opt1}{int(0:)}
	{opt2}{int(0:)}
[!hit recovery]

{exp}무게(단위 : 1g){/exp}[weight]
	{opt1}{int(0:)}
	{opt2}{int(0:)}
[!weight]


// 몬스터 퇴치 카운트. 
{exp}몬스터 사망 데미지 카운트{/exp}[destroy count]
	{must1}{exp}?번의 데미지를 맞으면{/exp}{int(:)}
[!destroy count]

{exp}어떤 공격을 받더라도 몬스터에게 들어가는 데미지 카운트{/exp}[destroy count damage]
	{must1}{exp}데미지 카운트{/exp}{int(:)}
[!destroy count damage]

{exp}타겟팅 보너스 지정{/exp}[targeting bonus]
	{must1}{exp}가까운 녀석의 보너스{/exp}{int(:)}
	{must2}{exp}가장 최근에 날 때린 녀석{/exp}{int(:)}
	{must3}{exp}날 가장 많이 때린 녀석{/exp}{int(:)}
	{must4}{exp}근거리 공격자{/exp}{int(:)}
	{must5}{exp}원거리 공격자{/exp}{int(:)}
	{must6}{exp}물리 공격력이 낮은 녀석{/exp}{int(:)}
	{must7}{exp}물리 공격력이 높은 녀석{/exp}{int(:)}
	{must8}{exp}물리 방어력 낮은 녀석{/exp}{int(:)}
	{must9}{exp}물리 방어력 높은 녀석{/exp}{int(:)}
	{must10}{exp}마법 공격력 낮은 녀석{/exp}{int(:)}
	{must11}{exp}마법 공격력 높은 녀석{/exp}{int(:)}
	{must12}{exp}마법 방어력 낮은 녀석{/exp}{int(:)}
	{must13}{exp}마법 방어력 높은 녀석{/exp}{int(:)}
	{must14}{exp}체력 낮은 녀석{/exp}{int(:)}
	{must15}{exp}체력 높은 녀석{/exp}{int(:)}
	{must16}{exp}X축으로 가까운 녀석의 보너스{/exp}{int(:)}
	{must17}{exp}Y축으로 가까운 녀석의 보너스{/exp}{int(:)}
	{must18}{exp}잡히는 적이라면 보너스{/exp}{int(:)}
	{must19}{exp}슈퍼아머 상태라면 보너스{/exp}{int(:)}
	{must20}{exp}높이 떠있을수록 보너스{/exp}{int(:)}
	//mkjung 120524 int line tag?
	{must21}{exp}스테이트를 체크하여 주는 보너스{/exp}{int(:)}
	//	{must1}[stand]
	//	{must1}[down]				//mkjung 120619 add
	//	{must1}[slow]				//mkjung 120619 add
	//	{prereq}[stand]|[slow]{/prereq}{must2}[dash]	//mkjung 120619 add, must2->opt1로 change.
	//	{prereq}[stand]|[slow]{/prereq}{must2}[confues]	//mkjung 120619 add
	//	{prereq}[stand]|[slow]{/prereq}{must3}{exp}맨 뒤에 0을 꼭 넣어야 함(가운데 상태 태그가 끝났다는 의미){/exp}{int(0:0)}
	//	{prereq}[down]{/prereq}{must2}{exp}맨 뒤에 0을 꼭 넣어야 함(가운데 상태 태그가 끝났다는 의미){/exp}{int(0:0)}
		//mkjung 120620 tag 인자 추가.
		{opt1}{exp}특정상태인 적의 보너스{/exp}[stand]
		{opt2}{exp}특정상태인 적의 보너스{/exp}[sit]
		{opt3}{exp}특정상태인 적의 보너스{/exp}[sit forever]
		{opt4}{exp}특정상태인 적의 보너스{/exp}[damage]
		{opt5}{exp}특정상태인 적의 보너스{/exp}[down]
		{opt6}{exp}특정상태인 적의 보너스{/exp}[die]
		{opt7}{exp}특정상태인 적의 보너스{/exp}[jump]
		{opt8}{exp}특정상태인 적의 보너스{/exp}[jump attack]
		{opt9}{exp}특정상태인 적의 보너스{/exp}[attack]
		{opt10}{exp}특정상태인 적의 보너스{/exp}[hold]
		{opt11}{exp}특정상태인 적의 보너스{/exp}[throw]
		{opt12}{exp}특정상태인 적의 보너스{/exp}[dash]
		{opt13}{exp}특정상태인 적의 보너스{/exp}[dash attack]
		{opt14}{exp}특정상태인 적의 보너스{/exp}[get item]
		{opt15}{exp}특정상태인 적의 보너스{/exp}[buff]
		//맨 끝의 의미없는 0 은 꼭(0이 나올 때까지 상태 체크)
		//{must1}{exp}맨 뒤에 0을 꼭 넣어야 함(가운데 상태 태그가 끝났다는 의미){/exp}{int(0:0)}
	{!int(:)} 
	{must22}{exp}현재 상태변화를 체크하여 주는 보너스{/exp}{int(:)}
		//mkjung 120620 tag 인자 추가.
		{opt1}{exp}특정상태변화인 적의 보너스{/exp}[slow]
		{opt2}{exp}특정상태변화인 적의 보너스{/exp}[freeze]
		{opt3}{exp}특정상태변화인 적의 보너스{/exp}[poison]
		{opt4}{exp}특정상태변화인 적의 보너스{/exp}[stun]
		{opt5}{exp}특정상태변화인 적의 보너스{/exp}[curse]
		{opt6}{exp}특정상태변화인 적의 보너스{/exp}[blind]
		{opt7}{exp}특정상태변화인 적의 보너스{/exp}[lightning]
		{opt8}{exp}특정상태변화인 적의 보너스{/exp}[stone]
		{opt9}{exp}특정상태변화인 적의 보너스{/exp}[sleep]
		{opt10}{exp}특정상태변화인 적의 보너스{/exp}[burn]
		{opt11}{exp}특정상태변화인 적의 보너스{/exp}[weapon break]
		{opt12}{exp}특정상태변화인 적의 보너스{/exp}[bleeding]
		{opt13}{exp}특정상태변화인 적의 보너스{/exp}[haste]
		{opt14}{exp}특정상태변화인 적의 보너스{/exp}[bless]
		{opt15}{exp}특정상태변화인 적의 보너스{/exp}[element]
		{opt16}{exp}특정상태변화인 적의 보너스{/exp}[confuse]
		{opt17}{exp}특정상태변화인 적의 보너스{/exp}[hold]
		{opt18}{exp}특정상태변화인 적의 보너스{/exp}[armor break]
		//맨 끝의 의미없는 0 은 꼭(0이 나올 때까지 상태변화를 체크)
		//{must1}{exp}맨 뒤에 0을 꼭 넣어야 함(가운데 상태 태그가 끝났다는 의미){/exp}{int(:0)}
	{!int(:)} 
[/targeting bonus]

{exp}몬스터의 칭호{/exp}[monster title]
	{must1}{string}
[!monster title]

{exp}타겟과 X축 상으로 거리 유지{/exp}[keep distance with target] 
	{must1}X축 유지 거리{int(:)}
[!keep distance with target]

{exp}타겟과 거리 유지 범위{/exp}[keep range distance with target]
	{must1}X축 유지 거리{int(:)}
	{must2}Y축 유지 거리{int(:)}
	{must3}X축 랜덤 반지름{rndint(:)}
	{must4}Y축 랜덤 반지름{rndint(:)}
[!keep range distance with target]

{exp}몬스터의 지능수치{/exp}[intelligence]
	{must1}{exp}action list 에 등록된 액션을 발동할 확률{/exp}{int(:)}
	{must2}{exp}스크립트대로 이동을 할 확률{/exp}{int(:)}
	{must3}{exp}지능 계산을 할 시간 텀{/exp}{int(:)}
[!intelligence]

[vision]
	{must1}{exp}몬스터의 시야 거리(짧으면 타겟을 못 잡을 수도 있음){/exp}{int(:)}
[!vision]

{exp}뒤에 있는 오브젝트를 타겟으로 잡을지 여부{exp}[back vision]
	{must1}{exp}평소0, 타겟을 안 잡으려면 -1로{/exp}{int(:)}
[!back vision]

{exp}아이템 떨어지는위치 조정{/exp}[drop item offset]
	{must1}{exp}몬스터 X좌표 + ?{/exp}{int(:)}
	{must2}{exp}몬스터 Y좌표 + ?{/exp}{int(:)}
[!drop item offset] 

[stuckbonus on damage]
//mkjung 120524 int line tag?
	//{exp}원거리 공격에 피격시 스턱보너스 %{/exp}{int(0:)}
	//	{must1}{exp}최소랩 / 최대랩{/exp}{int(:)}
	//{!int} 
	//{exp}근접 공격에 피격시 스턱보너스 %{/exp}{int(0:)}
	//	{must1}{exp}최소랩 / 최대랩{/exp}{int(:)}
	//{!int} 
//[/stuckbonus on damage]

	//mkjung lmuti tag-->line tag 로, int line tag--> 인자로 변경. 
	{must1}{exp}원거리 공격에 피격시 스턱보너스 %{/exp}{int(0:)}
	{must2}{exp}최소랩 / 최대랩{/exp}{int(:)}
	{must3}{exp}근접 공격에 피격시 스턱보너스 %{/exp}{int(0:)}
	{must4}{exp}최소랩 / 최대랩{/exp}{int(:)}
[!stuckbonus on damage]

[ambient sound]
	{must1}{string}
[!ambient sound]

[attack sound]
	{must1}{string}
[!attack sound]

[appear sound]
	{must1}{string}
[!appear sound]

[damage sound]
	{must1}{string}
[!damage sound]

[die sound]
	{must1}{string}
[!die sound]

{exp}몬스터가 생성 시 바라보는 방향을 고정할지 여부{/exp}[fix direction]
	{opt1}{exp}1: 고정, 0: 미고정{/exp}{int(0:1)}
	{opt2}{exp}고정형 몬스터의 경우 항상 왼쪽만 바라봄{/exp}[left]
	{opt2}{exp}고정형 몬스터의 경우 항상 오른쪽만 바라봄{/exp}[right]
[!fix direction]

{exp}부유형 몬스터의 밑에 마크를 그릴 것인지 여부{/exp}[flying mark]
	{must1}{exp}1: 출력, 0: 미출력{/exp}{int(0:1)}
[!flying mark]


{exp}몬스터를 죽였을 때 나오는 지정 아이템{/exp}[item]
	//mkjung  120619 int line tag 에서 처리.
	{exp}아이템 인덱스{exp}{int(:)}
		{must1}{exp}확률{/exp}{int(:)}
	{!int(:)} 
	
	//{opt2}{exp}아이템 인덱스{exp}{int(:)}
	//	{must1}{exp}만분율{/exp}{int(:)}
	//{!int} 
[/item]

{exp}일반 챔피언이 떨어뜨릴 아이템리스트{/exp}[common champion drop item]
	//{int(:)}
	//	{must1}{int(:)}
	//{!int} 
	{exp}아이템 인덱스{/exp}{int(:)}
		{must1}{exp}확률{/exp}{int(:)}
	{!int(:)}
[/common champion drop item]

{exp}몬스터 죽였을때 특수하게 나올 아이템 지정{/exp}[specific gen rate item]
	//mkjung 120620 must1->opt로 변경.
	{opt1}{exp}기준 확률{/exp}{int(0:)}
	{exp}아이템 인덱스{/exp}{int(:)}
		{must1}{exp}확률{/exp}{int(:)}
	{!int(:)} 
[/specific gen rate item]

{exp}사망의탑에서의 아이템 드랍{/exp}[death tower item]
	//mkjung 120619 인자없는 스크립트소스가 많아(약 39건)must->int 처리.
	{opt1}{exp}아이템 인덱스{/exp}{int(0:)}
		{must1}{exp}확률{/exp}{int(0:)}
	{!int(0:)}
[/death tower item]

{exp}고정 높이 설정{/exp}[fixed height]
	{must1}{exp}높이{/exp}{int(0:)}
[!fixed height]

{exp}지정한 액션파일이 발동을 시작할 시야범위를 지정{/exp}[come in action]
	{must1}{exp}사용할 액션파일{/exp}{string}
	{must2}{exp}x축 반지름{/exp}{int(0:)}
	{must3}{exp}y축 반지름{/exp}{int(0:)}
[!come in action]

{exp}지정한 액션파일이 특정 애니를 하고 싶은 경우 발동을 시작할 시야범위를 지정{/[come in action ex]
	{must1}{exp}사용할 액션파일{/exp}{string}
	{must2}{exp}특정 애니메이션을 지정한 액션파일{/exp}{string}
	{must3}{exp}x축 반지름{/exp}{int(:)}
	{must4}{exp}y축 반지름{/exp}{int(:)}
[!come in action ex]

//////////////////////////////////////////////////////////////////////////////////////////////
// 모션 지정(액션으로 지정할 경우). 없는 것은 적지 않아도 됨. 혹은 ``로 넣으면 없는 것으로 처리 //
//////////////////////////////////////////////////////////////////////////////////////////////

{exp}대기 모션을 지정{/exp}[waiting action] 
	{must1}{exp}waiting액션 파일 경로{/exp}{string}
[!waiting action]

{opt1}{exp}이동 모션을 지정{/exp}[move action] 
	{must1}{exp}move액션 파일 경로{/exp}{string}
[!move action]

{exp}후진 모션을 지정{/exp}[moveback action] 
	{must1}{exp}moveback액션 파일 경로{/exp}{string}
[!move action]

{exp}대쉬 액션을 지정{/exp}[dash action] 
	{must1}{exp}dash액션 파일 경로{/exp}{string}
[!dash action]

{exp}대쉬 어택 액션을 지정{/exp}[dashattack action] 
	{must1}{exp}dashattack액션 파일 경로{/exp}{string}
[!dashattack action]

{exp}앉기 모션을 지정{/exp}[sit action] 
	{must1}{exp}sit액션 파일 경로{/exp}{string}
[!sit action]

{exp}데미지 모션1을 지정{/exp}[damage action 1]
	{must1}{exp}damage1액션 파일 경로{/exp}{string}
[!damage action 1]

{exp}데미지 모션2를 지정{/exp}[damage action 2]
	{must1}{exp}damage2액션 파일 경로{/exp}{string}
[!damage action 2]

{exp}다운 모션을 지정{/exp}[down action]
	{must1}{exp}down액션 파일 경로{/exp}{string}
[!down action]

{exp}뒤집힌 모션을 지정{/exp}[overturn action]
	{must1}{exp}overturn액션 파일 경로{/exp}{string}
[!overturn action]

{opt1}{exp}기본 모션을 지정(move와stay 액션 중복 사용안됨){/exp}[basic action]
	{must1}{exp}basic액션 파일 경로{/exp}{string}
[!basic action]

{exp}Proc 모션을 지정(proc 액션은 애니메이션을 체크하지 않음){/exp}[proc action]
	{must1}{exp}Proc액션 파일 경로{/exp}{string}
[!proc action]

{exp}파괴되기전에 반드시 한번 실행할 모션을 지정{/exp}[last action]
	{must1}{exp}Last 액션 경로{/exp}{string}
[!last action]

{exp}타는 액션(탈 것 전용){/exp}[mounting action]
	{must1}{exp}액션 경로{/exp}{string}
[!mounting action]

{exp}타고난 후 액션 (탈 것 전용){/exp}[mounted action]
	{must1}{exp}액션 경로{/exp}{string}
[!mounted action]

{exp}내리는 액션 (탈 것 전용){/exp}[unmounting action]
	{must1}{exp}액션 경로{/exp}{string}
[!unmounting action]
//////////////////////////////////////////////////////////////////////////////////////////////

{exp}주로 공격으로 사용될 액션 파일 리스트{/exp}[action list]
	{exp}여기 적힌 액션이 발동될 때 피격받으면 카운터 체크가 됨{/exp}{string}
	{!string}
[/action list]

[attack action]
	{string}
	{!string}
[/attack action]

{exp}액션 리스트의 인덱스를 패턴화{/exp}[pattern] 
	//mkjung 120619 must --> int line tag 처리
	//{must1}{int(:)}
	//{must2}{int(:)}
	//{must3}{int(:)}
	{int(0:)}
	{!int(:)}
[/pattern]

// action list에 등록된 액션들이 사용할 쿨타임 지정. 태그안에 지정된 순서대로 액션 리스트와 1:1로 매치됨
{exp}action list에 등록된 액션들이 사용할 쿨타임 지정{/exp}[cooltime]
	{opt1}{exp}쿨타임 패턴 안써도 됨! 기본 0 으로 세팅{/exp}[Pattern]
		{must1}{int(0:)}
	[!Pattern]
	{exp}순서대로 액션 리스트와 1:1로 매치됨{/exp}{int(0:)}
	{!int(:)}
[/cooltime]

{exp}각 액션 파일들의 어택인포{/exp}[attack info]
	{exp}순서대로 액션 리스트와 1:1로 매치됨{/exp}{string}
	{!string}
[/attack info]

{exp}공격이 아닌 다른 용도로 사용할 액션리스트{/exp}[etc action]
	{string}	
	{!string}
[/etc action]

[lie frame]
	{must1}{exp}누워서 올라가는 프레임{/exp}{int(0:)}
	{must2}{exp}누워서 떨어지는 프레임{/exp}{int(0:)}
	{must3}{exp}누워서 튕겨올라가는 프레임{/exp}{int(0:)}
	{must4}{exp}누워서 튕겨올라가서 떨어질때 프레임 인{/exp}{int(0:)}
	{must5}{exp}누운 프레임.{/exp}{int(0:)}
[!lie frame]

{exp}다른 팀의 몹에게 타겟이 되지 않는지 여부{/exp}[non targeted]
	{must1}{exp}0 : 타겟이 됨, 1: 타겟이 되지 않음{/exp}{int(0:1)}
[!non targeted]

{exp}타겟을 변경 할 지 여부{/exp}[no change target]
	{must1}{exp}0: 타겟 변경 안함 1: 변경함{/exp}{int(0:1)}
[!no change target]

{exp}패시브오브젝트 유저 컨트롤(탈 것 전용){/exp}[control passive object]
	{exp}인덱스{/exp}[index] 
		{must1}{int(0:)}
	[!index]

	{exp}이동할 수 있는 영역 좌측 상단의 상대 X좌표{/exp}[x pos]
		{must1}{int(:)}
	[!x pos]

	{exp}이동할 수 있는 영역 좌측 상단의 상대 Y좌표{/exp}[y pos]
		{must1}{int(:)}
	[!y pos]

	{exp}이동할 수 있는 영역 너비{/exp}[width]
		{must1}{int(0:)}
	[!width]

	{exp}이동할 수 있는 영역 높이{/exp}[height]
		{must1}{int(0:)}
	[!height]

	{exp}컨트롤 시 X축 이동 속도{/exp}[velocity x]
		{must1}{float(:)}
	[!velocity x]

	{exp}컨트롤 시 Y축 이동 속도(convert y to z 옵션일때: Z축 이동 속도){/exp}[velocity y]
		{must1}{float(:)}
	[!velocity y]

	{exp}컨트롤 시 방향 고정{/exp}[fix direction]
		{must1}[left]
		{must1}[right]
	[!fix direction]

	{exp}y축 대신 z축 기준으로 변경{/exp}[option]
		{must1}{string}
	[!option]

	//mkung 120626
	[transparency]
		[master]
			{must1}{int(0:)}
		[!master]

		[others]
			{must1}{int(0:)}
		[!others]

		[option]
			{must1}{string}
		[!option]
	[/transparency]

[/control passive object]


////////////////////////////////////////////////////////// 몬스터의 ai 파일 지정

{exp}ms단위로 타겟설정{/exp}[think term]
	{must1}{int(0:)}
[!think term]

{exp}ms단위로 이동할 위치를 결정{/exp}[destination change term]
	{must1}{int(0:)}
[!destination change term]

{exp}타겟의 위치에 따라 방향을 바꿀지 여부{/exp}[change direction by target]
	{must1}{exp}0: 고정, 1: 타겟의 위치에 따라 방향을 바꿈{/exp}{int(0:1)}
[!change direction by target]

{exp}타겟을 보며 이동 할지 여부{/exp}[is direction to move]
	{must1}{exp}0: 타겟을 보면서 이동, 1: 이동하는 방향을 보고 이동{/exp}{int(0:1)}
[!is direction to move]

{exp}던전의 난이도 별로 다른 ai를 지정{/exp}[ai pattern]

	//120619 string 라인태그로 수정.
	[normal]
		{string}
		{!string}
	[/normal]

	[master]
		{string}
		{!string}
	[/master]

	[expert]
		{string}
		{!string}
	[/expert]

	[king]
		{string}
		{!string}
	[/king]

	//120619 [easy],[hard],[medium],[ultimate],[hero] 태그 추가
	[easy]
		{string}
		{!string}
	[/easy]

	[hard]
		{string}
		{!string}
	[/hard]

	[medium]
		{string}
		{!string}
	[/medium]

	[ultimate]
		{string}
		{!string}
	[/ultimate]

	[hero]
		{string}
		{!string}
	[/hero]

	//mkjung 120620 난이도 상관없이 지정하고 싶을때의 경우 추가.
	
	//`ai/Event.ai`		// 이벤트 - 코드상에 정해진 이벤트패턴타입의 번호를 리턴한다.
	//`ai/DestinationSelect.ai`	// 목적지결정 - 코드상에 정해진 목적지결정방식의 번호를 리턴한다.
	//`ai/Action.ai`		// 공격 - [key stream] 에 지정한 .key 들의 번호를 리턴한다.
	//`ai/MoveMethod.ai`		// 이동방법 - 코드상에 정해진 이동방법타입의 번호를 리턴한다.

	{string}
	{!string}
[/ai pattern]

{exp}이벤트에 의한 슈퍼아머 발동조건{/exp}[event super on scr]
	[on time],[on hp],[conunter]
		{must1}{exp}발동조건 인덱스{/exp}{int(:)}
		{must2}{exp}지속시간{/exp}{int(0:)}
		{must3}{exp}재활성화 여부{/exp}{int(0:1)}
	[!on time],[!on hp],[!conunter]

	[always]
		{must1}{exp}발동조건 인덱스{/exp}{int(:)}
		{must2}{exp}지속시간{/exp}{int(0:)}
	[!always]

	//mkjung 120621 [breakable] add
	[breakable],[unbreakable]
		{must1}{exp}내구도{/exp}{int(:)}
		{must2}{exp}회복력{/exp}{int(:)}
		{must3}{exp}근거리방어력{/exp}{int(:)}
		{must4}{exp}원거리방어력{/exp}{int(:)}
	[!breakable],[!unbreakable]

	//mkjung 120621 add
	[half]
		{must1}{int(:)}
		{must2}{int(:)}
		{must3}{int(:)}
		{must4}{int(:)}
	[!half]
	{exp}광룡의 외침과 함께 발동{/exp}{etc}[with blast]
[/event super on scr]

[strong]
	{must1}{exp}받을 데미지를 값{/exp}{int(0:)}
	{must2}{exp}% 추가 데미지 입음{/exp}{int(0:)}
[!strong]

[weak] 
	{must1}{exp}받을 데미지를 값{/exp}{int(0:)}
	{must2}{exp}% 추가 데미지 입음{/exp}{int(0:)}
[!weak]

////////////////////////////////////////////////////////// 기타 정보
[is grabable]
	{must1}{exp}0: 안잡히는 몬스터, 1: 잡히는 몬스터{/exp}{int(0:1)}
[!is grabable]

{exp}전쟁지역에 등장할 몬스터들에게 적용되는 값.{/exp}[spawn prob]
	{must1}{exp}경쟁던전 스폰 확률{/exp}{int(0:)}
[!spawn prob]

[hp regen rate]
	{must1}{exp}타겟을 잡았을때 리젠 비율{/exp}{float(:)}
	{must2}{exp}타겟이 없을때 리젠 비율{/exp}{float(:)}
[!hp regen rate]

{exp}event.ai 에서 데미지 체크할 간격{/exp}[set damage check]
	{must1}{exp}간격{/exp}{int(0:)}
[!set damage check]

{exp}독립드랍 시스템{/exp}[independent drop]
	{must1}{exp}인덱스(리스트를 불러올 경우 1로 함){/exp}{int(0:)}
	{must2}{exp}노멀%{/exp}{int(0:)}
	{must3}{exp}익스%{/exp}{int(0:)}
	{must4}{exp}마스터% {/exp}{int(0:)}
	{must5}{exp}킹스%{/exp}{int(0:)}
	{must6}{exp}횟수(1인){/exp}{int(0:)}
	{must7}{exp}횟수(2인){/exp}{int(0:)}
	{must8}{exp}횟수(3인){/exp}{int(0:)}
	{must9}{exp}횟수(4인){/exp}{int(0:)}
	{must10}{exp}최대드랍수{/exp}{int(0:)}
	{must11}{exp}리스트를 불러올지 여부(0: 불러오지 않음, 1: 불러옴){/exp}{int(0:1)}

	[list]
		{must1}{exp}{/exp}{int(:)}
		{must2}{exp}{/exp}{int(:)}		
	[/list]
[/independent drop]

//코드 소스에서 튕기는 부분2.
{exp}오브젝트 반사{/exp}[reflection object]
	//{must1}{exp}오브젝트를 반사시킬 인덱스{/exp}{int(:)}
	//{must2}{exp}확률{/exp}{int(:)}	
	//mkjung 120620 modify.
	{exp}오브젝트를 반사시킬 인덱스{/exp}{int(:)}		
		{must1}{exp}확률{/exp}{int(0:)}

	{!int(:)} 
[/reflection object]

//코드 소스에서 튕기는 부분2.
{exp}공중 중력주기{/exp}[add gravity in aerial]
	{must1}{exp}활성화 여부(0:비활성화, 1:활성화){/exp}{int(:)}
	{must2}{exp}공중데미지 얼마 이상에서 발동할지(%){/exp}{float(:)}
	{must3}{exp}보정이 발동후 1%데미지당 들어가는 중력의 크기{/exp}{float(:)}
[!add gravity in aerial]


{exp}특정 어펜디지 걸린 놈만 타겟팅{/exp}[target appendage]
	{must1}{exp}예)238(암흑의 문장 걸린놈만 타겟팅){/exp}{int(0:)}
[!target appendage]

{exp}초기 타겟을 설정{/exp}[initial target]
	//{must1}[PASSIVE]
	//{must1}[MONSTER]
	//{must1}[CHARACTER]
	//{must1}[MARKED])
	//{must2}{exp}오브젝트 인덱스{/exp}{int(0:)}
	//mkjung 120621 line tag 로 수정.
	[PASSIVE],[MONSTER],[CHARACTER],[MARKED]
		{must1}{exp}오브젝트 인덱스{/exp}{int(0:)}
	[!PASSIVE],[!MONSTER],[!CHARACTER],[!MARKED]
[/initial target]

{exp}난이도에 따른 물공 보정 테이블{/exp}[physical attack besed on diff]
	//{must1}{exp}level{/exp}{int(0:)}
	//{must2}{exp}normal{/exp}{float(:)}
	//{must3}{exp}expert{/exp}{float(:)}
	//{must4}{exp}master{/exp}{float(:)}
	//{must5}{exp}kings{/exp}{float(:)}
	//{must6}{exp}heros{/exp}{float(:)}
	//mkjung 120620 lling tag change
	{exp}level{/exp}{int(0:)}
		{must1}{exp}normal{/exp}{float(:)}
		{must2}{exp}expert{/exp}{float(:)}
		{must3}{exp}master{/exp}{float(:)}
		{must4}{exp}kings{/exp}{float(:)}
		{must5}{exp}heros{/exp}{float(:)}
	{!int(0:)}
[/physical attack besed on diff]

[level of difficulty]
	//mkjung 120619 [easy],[hard],[medium],[ultimate],[expert] 추가
	[easy],[hard],[medium],[ultimate],[expert],[normal],[ex],[master],[king],[hero]
		{must1}{exp}추가 호전성{/exp}{int(:)}
		{must2}{exp}추가 쿨타임{/exp}{int(:)}
	[!easy],[!hard],[!medium],[!ultimate],[!expert],[!normal],[!ex],[!master],[!king],[!hero]
[/level of difficulty]


//mkjung 120618 추가
[sight],[targeting nearest],[warlike],[attack delay]
	{must1}{int(0:)}
[!sight]

[attack kind] 
	{float(:)}
		{must1}{float(:)}
		{must2}{float(:)}
		{must3}{int(:)}
		{must4}{int(:)}
		{must5}{int(:)}
		{must6}{int(:)}
		{must7}{int(:)}
		{must8}{int(:)}
		{must9}{int(:)}
		{must10}{int(:)}
		{must11}{int(:)}
	{!float(:)}
[/attack kind] 

[waiting motion],[move motion],[sit motion],[damage motion 1],[damage motion 2],[down motion],[overturn motion]
	{must1}{string}
[!waiting motion],[!move motion],[!sit motion],[!damage motion 1],[!damage motion 2],[!down motion],[!overturn motion]

[attack motion]
	{string}
	{!string}
[/attack motion]

[speech on situation] 
	[on revenge],[on etc],[on village],[on attack],[on appear],[on damage],[on go to help],[on disappear],[on die]
		{must1}{string}
		{must2}{int(0:)}
	[!on revenge],[!on etc],[!on village],[!on attack],[!on appear],[!on damage],[!on go to help],[!on disappear],[!on die]
[/speech on situation]

{exp}던져서 공격하는 몬스터의 경우 추가되는 내용{/exp}[throw attack]
	{exp}공격 인덱스{/exp}[attack index]
		{must1}{int(0:)}
	[!attack index]

	{exp}파티클 파일의 수{/exp}[passive object number]
		{must1}{int(0:)}
	[!passive object number]

	{exp}던지는 오브젝트 파일경로{/exp}[passive object filename]
		{string}
		{!string}
	[/passive object filename]

	{exp}던지는 오브젝트 타입{/exp}[object type]
		{must1}{exp}0:패시브 오브젝트, 1:파티클{/exp}{int(0:)}
	[!object type]

	{exp}던지는 오브젝트 인덱스{/exp}[passive object index]
		{must1}{int(0:)}
	[!passive object index]

	{exp}마법 레벨{/exp}[power]
		{must1}{int(0:)}
	[!power]

	{exp}몬스터 몇째 프레임에 오브젝트가 나갈지에 대한 플래그{/exp}[throw frame]
		{must1}{int(0:)}
	[!throw frame]

	{exp}던지는 오브젝트 출발점 x좌표{/exp}[passive object start x cood]
		//{must1}{int(:)}
		//{opt1}{int(:)}
		//{opt2}{int(:)}
		//mkjung 120621 int 3 ea.-> variableInt change
		{must1}{variableInt(:)}
	[!passive object start x cood]
	

	{exp}던지는 오브젝트 출발점 y좌표{/exp}[passive object start y cood]
		//{must1}{int(:)}
		//{opt1}{int(:)}
		//{opt2}{int(:)}
		//mkjung 120621 int 3 ea.-> variableInt change
		{must1}{variableInt(:)}
	[!passive object start y cood]

	{exp}던지는 오브젝트 출발점 z좌표{/exp}[passive object start z cood]
		//{must1}{int(:)}
		//{opt1}{int(:)}
		//{opt2}{int(:)}
		//mkjung 120621 int 3 ea.-> variableInt change
		{must1}{variableInt(:)}
	[!passive object start z cood]

	{exp}한번 공격에 던지는 수{/exp}[attack number]
		{must1}{int(0:)}
	[!attack number]

	{exp}던지는 소리{/exp}[throw sound]
		{must1}{string}
	[!throw sound]
[/throw attack]

[equipment]
	{must1}{int(0:)}
	{exp}{/exp}{string}
	{!string} 
[/equipment]

[int data] 
	{int(:)}
		//mkjung 120620 add
		//255 255 0	//암속성 이펙트 색 (RGB)
		{opt1}{int(0:)}
		{opt2}{int(0:)}
	{!int(:)} 
[/int data] 

[ready action]
	{exp}해당 공격 모션 인덱스{/exp}[motion index]
		{must1}{int(0:)}
	[!motion index]

	//[effect ani file & layer index]
	//[!effect ani file & layer index]
	//{prereq}[effect ani file & layer index]{/prereq}{must1}{exp}파일 수{/exp}{int(0:)}
	//{prereq}[effect ani file & layer index]{/prereq}{string}
	//	{must1}{int(:)}
	//{!string}

	//[effect ani file & layer index] line tag -> multi tag
	[effect ani file & layer index]
		{must1}{exp}파일 수{/exp}{int(0:)}
		{string}
			{must1}{int(:)}
		{!string}
	[/effect ani file & layer index]
[/ready action]

[curse resistance]
	{must1}{int(0:)}
	{must2}{int(0:)}	
[!curse resistance]

[targeting high level]
	{must1}{int(0:)}
[!targeting high level]

[etc motion]
	{string}
	{!string}
[/etc motion]

[targeting time term]
	{must1}{int(0:)}
[!targeting time term]

[superarmor on attack]
	{must1}{int(0:)}
	{must2}{int(0:)}
[!superarmor on attack]

[floating height]
	{must1}{int(0:)}
[!floating height]

[atk super on scr]	
	//{must1}{int(:)}
	//{must2}[breakable]
	//{must2}[unbreakable]
	//{must2}[half]
	//{must3}{int(:)}
	//{must4}{int(:)}
	//{must5}{int(:)}
	//{must6}{int(:)}
	//mkjung 1201620 수정.
	{int(:)}
		{must1}[breakable] 
		{must1}[unbreakable]
		{must1}[half]
		{must2}{int(:)}
		{must3}{int(:)}
		{must4}{int(:)}
		{must5}{int(:)}
	{!int(:)}
[/atk super on scr]

[etc attack info] 
	{string}
	{!string}
[/etc attack info] 

[dash attack]
	[function index]
		{must1}{int(0:)}
	[!function index]

	[attack index]
		{must1}{int(0:)}
	[!attack index]

	[shakeable]
		{must1}{int(:)}
		{must2}{int(:)}
		{must31}{int(:)}
	[!shakeable]

	[first speed]
		{must1}{int(0:)}
	[!first speed]

	[last speed]
		{must1}{int(0:)}
	[!last speed]

	[dash time]
		{must1}{int(0:)}
	[!dash time]
	
	[dash ready time]
		{must1}{int(0:)}
	[!dash ready time]

	[animation first index]
		{must1}{int(0:)}
	[!animation first index]
[/dash attack]

[jump power],[jump speed]
	{must1}{int(0:)}
	{must2}{int(0:)}
[!jump power],[!jump speed]

[jump motion]
	{must1}{string}
[!jump motion]

[targeting low level]
	{must1}{int(0:)}
[!targeting low level]

[targeting low HP]
	{must1}{int(0:)}
[!targeting low HP]

[burn resistance]
	{must1}{int(0:)}
	{must2}{int(0:)}
[!burn resistance]


[summon skill status up type]
	{must1}{int(0:1)}
[!summon skill status up type]

[keep distance]
	{must1}{int(0:)}
[!keep distance]

[attack down prob]
	//{must1}{exp}방망이 공격 확율{/exp}{int(0:)}
	//{must2}{exp}이동속도 증가 공격 확율{/exp}{int(0:)}
	//{must3}{exp}파워 스매셔 공격 확율{/exp}{int(0:)}
	//{must4}{exp}돌던지기 공격 확율{/exp}{int(0:)}
	//{must5}{exp}돌 연속 3발 던지기 공격 확율{/exp}{int(0:)}
	//{must6}{exp}돌 5개 퍼뜨려 던지기 공격 확율{/exp}{int(0:)}
	//{must7}{exp}폭탄 던지기 공격 확율{/exp}{int(0:)}	
	{exp}공격 확율{/exp}{int(0:)}
	{!int(0:)}
[/attack down prob]

{exp}슈퍼 챔피언이 떨어뜨릴 아이템리스트{/exp}[super champion drop item]
	
	//{int(:)}
	//	{must1}{int(:)}
	//{!int} 
	{exp}아이템 인덱스{/exp}{int(:)}
		{must1}{exp}확률{/exp}{int(:)}
	{!int(:)}
[/super champion drop item]

[jumpattack motion]
	{must1}{string}
[!jump motion]

[jumpattack info]
	{must1}{string}
[!jump info]

//mkjung 120619 추가
[jump action]
	{must1}{string}
[!jump action]

{exp}공격 카운터{/exp}[counter attack]
	{must1}{exp}공격 카운터{/exp}{int(0:)}
	[probability]
		{must1}{exp}카운터 할 확률{/exp}{int(0:100)}
	[!probability]

	[attack index]
		{must1}{exp}카운터시 어택 인덱스{/exp}{int(0:)}
	[!attack index]
	
	[damage type]
		{must1}[approach attack]
		{must1}[range attack]
		{must1}[all attack]
	[!damage type]
	//mkjung 120625 add
	[need hp]
		{must1}{int(0:)}
	[!need hp]
[/counter attack]

{exp}포획드랍아이템{/exp}[catch item]
	{int(0:)}
		{must1}{int(0:)}
		{must2}{int(0:)}
	{!int(:)}
[/catch item]

[hell monster]
	{int(0:)}
	{!int(:)}
[!hell monster]

//mkjung 120620 add
[weapon break resistance]
	{must1}{int(0:)}
	{must2}{int(0:)}
[!weapon break resistance]

[targeting high HP]
	{must1}{int(0:)}
[!targeting high HP]

[come in motion]
	{must1}{string}
	{must2}{int(0:)}
	{must3}{int(0:)}
[!come in motion]

[out of targetting]
	{must1}{int(0:)}
[!out of targetting]

[jump attack]
	[attack index]
		{must1}{int(0:)}
	[!attack index]

	[start frame index]
		{must1}{int(0:)}
	[!start frame index]

	[end frame index]
		{must1}{int(0:)}
	[!end frame index]

	[jump type]
		{must1}{int(0:)}
	[!jump type]

	[jump height]
		{must1}{int(0:)}
	[!jump height]

	[jump speed]
		{must1}{int(0:)}
	[!jump speed]
	
	[jump direction]
		{must1}{int(0:)}
	[!jump direction]

	[on collision custom animation index]
		{must1}{int(0:)}
	[!on collision custom animation index]

	[ememy distance rate]
		{must1}{float(:)}
	[!ememy distance rate]

	[limited x cood]
		{must1}{int(:)}
	[!limited x cood]
	
	[limited y cood]
		{must1}{int(:)}
	[!limited y cood]
[/jump attack]

[targeting downed] 
	{must1}{int(0:)}
[!targeting downed] 

[targeting low physical defense] 
	{must1}{exp}1이면 물리 방어력이 낮은 적 타겟팅{/exp}{int(0:)}
[!targeting low physical defense]

[targeting attacker]
	{must1}{exp}1이면 자신을 마지막으로 때린 적을 타겟팅{/exp}{int(0:)}
[!targeting attacker]

[overhead gauge type]
	{must1}{int(0:)}
[!overhead gauge type]

[base table]
	{must1}{string}
[!base table] 

[can beat index]
	{int(0:)}	
	{!int(:)}
[/can beat index]

[damage time balance]
	{must1}{int(0:)}
	{must2}{int(0:)}
	{must3}{int(0:)}
	{must4}{int(0:)}
[!damage time balance]

[stun time balance]
	{must1}{int(0:)}
	{must2}{int(0:)}
	{must3}{int(0:)}
	{must4}{int(0:)}
[!stun time balance]

{exp}타겟과 거리 유지 범위{/exp}[keep range distance with target 1]
	{must1}X축 유지 거리{int(:)}
	{must2}Y축 유지 거리{int(:)}
	{must3}X축 랜덤 반지름{rndint(:)}
	{must4}Y축 랜덤 반지름{rndint(:)}
[!keep range distance with target 1]

//mkjung 120621 add
[ridableskill definition]
	[pattern]
		{must1}{int(0:)}
	[!pattern]
	[image path]
		{must1}{string}
	[!image path]
	//핫키 슬롯에 넣을 스킬 번호, 반드시 8 엔트리 모두 입력해줘야 한다. 없으면 -1 로 기입
	[skill]
		{int(:)}
			{opt1}{int(:)}
			{opt2}{string}
			{opt3}{int(:)}
			{opt4}{int(:)}
		{!int(:)}
		
	[/skill]
[/ridableskill definition]

[ridableskill explanation]
	[pattern]
		{must1}{int(0:)}
	[!pattern]
	[title]
		{must1}{string}
	[!title]
	[subtitle]
		{must1}{string}
	[!subtitle]
	[category]
		{must1}{string}
	[!category]
	[detail]
		{must1}{string}
	[!detail]
[/ridableskill explanation]

[jumpattack action]
	{string}
	{!string}
[!jumpattack action]

[is on the object]
	{must1}{int(0:)}
	{must2}{int(0:)}
[!is on the object]

{etc}[No Combo Rate Monster]

//120622 add
[targeting from direction]
	{must1}{int(0:)}
[!targeting from direction]

[etc sound]
	{must1}{string}
[!etc sound]

//mkjung 120625 add
[diving sight]
	{must1}{int(0:)}
	{must2}{int(0:)}
[!diving sight]

//mkjung 120625 add
[hold attack]
	[function index]
		{must1}{int(0:)}
	[!function index]

	[attack index]
		{must1}{int(0:)}
	[!attack index]

	[offset]
		{must1}{int(0:)}
		{must2}{int(0:)}
	[!offset]

	[animation index]
		{must1}{int(0:)}
	[!animation index]

	[min hold]
		{must1}{int(0:)}
	[!min hold]

	[max hold]
		{must1}{int(0:)}
	[!max hold]
[/hold attack]

[warp attack]
	[function index]
		//{must1}{int(0:)}
		{must1}{variableInt(0:)
	[!function index]
	[attack index]
		{must1}{int(0:)}
	[!attack index]

	[warp style]
		{must1}{exp}0: 무조건 캐릭터 뒤로 이동(위스프),1: 캐릭터의 방향을 기준으로 뒤로(묘진){/exp}{int(0:1)}
	[!warp style]
	
	{exp}타겟과 떨어 져서 나타나야할 거리{/exp}[target offset]
		{must1}{int(0:)}
	[!target offset]

	{exp}위상변화후에 공격할 인덱스{/exp}[after attack]
		{must1}{int(0:)}
	[!after attack]

	{exp}사라진후에 나타날 시간{/exp}[after appear time]
		{must1}{exp}300이하는 소용 없음{/exp}{int(0:)}
	[!after appear time]

	{exp}위상 변화의 쿨타임{/exp}[cool time]
		{must1}{int(0:)}
	[!cool time]

[/warp attack]

[forced knockback] 
	{must1}{int(0:)}
[!forced knockback] 

//mkjung 120626 add
[normal dash speed]
	{must1}{int(0:)}
	{must2}{int(0:)}
[!normal dash speed]

[slant dash speed]
	{must1}{int(0:)}
	{must2}{int(0:)}
[!slant dash speed]

[pvp]
	[int data] 
		{int(:)}
			//mkjung 120620 add
			//255 255 0	//암속성 이펙트 색 (RGB)
			{opt1}{int(0:)}
			{opt2}{int(0:)}
		{!int(:)} 
	[/int data] 
	{exp}소환 스킬 1렙당 능력치 상승률(%){/exp}[summon skill status up rate]
		{must1}{exp}힘{/exp}{float(:)}
		{must2}{exp}체력{/exp}{float(:)}
		{must3}{exp}지능{/exp}{float(:)}
		{must4}{exp}정신{/exp}{float(:)}
		{must5}{exp}HP{/exp}{float(:)}
		{must6}{exp}MP{/exp}{float(:)}
		{must7}{exp}물공{/exp}{float(:)}
		{must8}{exp}물방{/exp}{float(:)}
		{must9}{exp}마공{/exp}{float(:)}
		{must10}{exp}마방{/exp}{float(:)}
	[!summon skill status up rate]
[/pvp]

[explain]
	{must1}{string}
[!explain]