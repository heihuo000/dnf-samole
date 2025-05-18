
//////////////////////////////////////////////////////////
//@ mkjung create date 20120523 
//@ application uses 수동 오브젝트 스크립트 파일 문법 체크
//////////////////////////////////////////////////////////

{exp}오브젝트의 이름{/exp}[name]
	{must1}{exp}스트링 인덱스{/exp}{string}
[!name]

{exp}부유높이{/exp}[floating height]
	{must1}{exp}공중에 부유시킬 높이(픽셀){/exp}{int(:)}	
[!floating height]

{exp}몬스터의 충돌체크 범위{/exp}[width]
	{must1}{int(:)}
	{must2}{int(:)}
[!width]

{exp}그리기 레이어{/exp}[layer]
	{must1}[normal]
	{must1}[bottom]
	{must1}[close]	
	{must1}[closeback]
	{must1}[middleback]
	{must1}[distantback]
[!layer]

{exp}레이어 레벨{/exp}[layer level]
	{must1}{exp}수치가 높을수록 앞에 위치{/exp}{int(:)}
[!layer level]

[pass type]	
	{must1}[none]
	{must1}[pass all]
	{must1}[pass only float type]
	{must1}[do not pass]
	{must1}[pass only red team]
	{must1}[pass only blue team]
	{must1}{string}
[!pass type]

{exp}공격시의 관통력{/exp}[piercing power]
	{must1}공격 성공시 확률{int(:)}
[!piercing power]

{exp}{/exp}[piercing tolerance]
	{must1}{exp}관통 내성{/exp}{int(:)}
[!piercing tolerance]

{exp}HP값(HP값 없으면 아예 데미지 자체를 입지 않음){/exp}[hp max]
	{must1}{int(:)}
[!hp max]

{exp}HP 다 떨어지면 부숴질 지 여부{/exp}[hp destroy]
	{must1}{exp}0: 안부서짐, 1: 부서짐{/exp}{int(0:1)}
[!hp destroy]


{exp}충돌시 사라지는지 여부{/exp}[vanish on move collision]
	{must1}{exp}0: 사라지지 않음, 1: 사라짐[기본{/exp}{int(0:1)}
[!vanish on move collision]

[category]
{exp}소속 카테고리의 리스트{exp}[category]
	{opt1}{exp}HUMAN{/exp}[human]
	{opt2}{exp}BEAST{/exp}[beast]
	{opt3}{exp}PLANT{/exp}[plant]
	{opt4}{exp}INSECT{/exp}[insect]
	{opt5}{exp}MACHINE{/exp}[machine]
	{opt6}{exp}ORGANIC{/exp}[organic]
	{opt7}{exp}HYBRID{/exp}[hybrid]
	{opt8}{exp}UNDEAD{/exp}[undead]
	{opt9}{exp}DEVIL{/exp}[devil]
	{opt10}{exp}SPIRIT{/exp}[spirit]
	{opt11}{exp}DRAGON{/exp}[dragon]
	{opt12}{exp}AI_MELEE_ATTACK{/exp}[melee combat]
	{opt13}{exp}AI_RANGE_ATTACK{/exp}[range combat]
	{opt14}{exp}AI_NEGATIVE{/exp}[close-passive]
	{opt15}{exp}AI_CAREFUL{/exp}[close-carefully]
	{opt16}{exp}AI_FULLSUPERARMOR{/exp}[full-superarmor]
	{opt17}{exp}AI_RASH{/exp}[close-tough]
	{opt18}{exp}AI_MANACE{/exp}[close-manace]
	{opt19}{exp}ARMOR_HUMAN{/exp}[human armor]
	{opt20}{exp}ARMOR_FORT{/exp}[fort armor]
	{opt21}{exp}ARMOR_DIVINE{/exp}[divine armor]
	{opt22}{exp}ETC_GOBLIN{/exp}[goblin]
	{opt23}{exp}ETC_TAU{/exp}[tau]
	{opt24}{exp}ETC_LUGARU{/exp}[lugaru]
	{opt25}{exp}ETC_FIXTURE{/exp}[fixture]
	{opt26}{exp}ETC_STAY{/exp}[stay]
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
[/category]

{exp}기본 모션{/exp}[basic motion]
	{must1}{exp}애니메이션 파일 이름{/exp}{string}
[!basic motion]

{exp}하드코딩용 모션{/exp}[etc motion]
	{exp}애니메이션 파일 이름 리스트{/exp}{string}
	{!string}
[/etc motion]

{exp}기본 액션{/exp}[basic action]
	{must1}{exp}파일경로{/exp}{string}
[!basic action]

{exp}이 패시브오브젝트에 설정할 어택인포{/exp}[attack info]
	{must1}{exp}어택인포 파일경로{/exp}{string}
[!attack info]

{exp}오브젝트는 어택이 없으므로 [action list] 쓰지 않고 [etc action] 만 쓴다.{/exp}[etc action]
	{exp}커스텀 액션 리시트{/exp}{string}
	{!string}
[/etc action]

[team]
	{must1}{exp}캐릭터 팀100~ : 몬스터 팀200~ : 중립팀{/exp}{int(0:)}
[!team]

{exp}트랩여부{/exp}[trap]
	{must1}{exp}1이면 깨야만 클리어.{/exp}{int(:)}
[!trap]

{exp}파괴되기전에 반드시 한번 실행될 action{/exp}[last action]
	{must1}{exp}파일경로{/exp}{string}
[!last action]

{exp}파괴될 때 생성할 (1회) 파티클의 스크립트{/exp}[destroy particle]
	{exp}파일경로{/exp}{string}
	{!string}
[/destroy particle]

[homing]
	[homing use]
		{must1}{int(:)}
	[!homing use]

	[homing follow]
		{must1}[ME]
		{must1}[ENEMY]
		{must1}[CHARACTER]
		{must1}[MONSTER]
		{prereq}[CHARACTER]{/prereq}{must1}{exp}파티 인덱스{/exp}{int(0:)}
		{prereq}[MONSTER]{/prereq}{must1}{exp}특정 몬스터 따라 다니게 하기 위한 인덱스{/exp}{int(0:)}
	[!homing follow]

 	[homing velocity]
		{must1}{exp}속도{/exp}{int(:)}
		{must2}{exp}가속도{/exp}{int(:)}
	[!homing velocity]

	{exp}추적중인 타겟 위치 체크 시간 간격{/exp}[homing check gap]
		{must1}{exp}(1/1000)초{/exp}{int(:)}
	[!homing check gap]

	{exp}애니메이션을 이동 방향에 따라 정렬시킬 것인지 여부{/exp}[sync animation rotation]
		{must1}{exp}(기본값 0){/exp}{int(0:1)}
	[!sync animation rotation]

	{exp}초당 최대 회전 가능한 각{/exp}[max rotation]
		{must1}{exp}각도(0이면 무한 회전){/exp}{int(0:)}
	[!max rotation]

	{exp}오브젝트 생성시 회전각{/exp}[init rotation]
		{must1}{exp}각도(기본값 0){/exp}{int(0:)}
	[!init rotation]

	{exp}목표를 인지할 수 있는 각도{/exp}[diff rotation]
		{must1}{exp}각도(기본값 180){/exp}{int(0:)}
	[!diff rotation]

	{exp}유도기능이 작동하는 시간{/exp}[homing time]
		{must1}{exp}시간(0이면 무한대, 기본값 0){/exp}{int(0:)}
	[!homing time]

	{exp}호밍 기능 도중 타겟이 이동하면 그 거리만큼 실시간 이동{/exp}{etc}[sync target move]
[/homing]

[sound category]
	{exp}객체 생성후 바로 소리나게 할 경우{/exp}[after object create]
		{must1}{exp}사운드{/exp}{string}
		{must2}{exp}오브젝트 인덱스{/exp}{int(0:)}
	[!after object create]
	
	{exp}오브젝트가 일정 프레임 이상 지났을때{/exp}[on frame]
		{must1}{exp}사운드{/exp}{string}
		{must2}{exp}오브젝트 인덱스{/exp}{int(0:)}
		{must3}{exp}프레임 번호{/exp}{int(0:)}
	[!on frame]

	{exp}다른오브젝트와 충돌 했을 때{/exp}[on attack]
		{must1}{exp}사운드{/exp}{string}
		{must2}{exp}오브젝트 인덱스{/exp}{int(0:)}
	[!on attack]

	{exp}오브젝트가 데미지를 입었을 때{/exp}[on damage]
		{must1}{exp}사운드{/exp}{string}
		{must2}{exp}오브젝트 인덱스{/exp}{int(0:)}
	[!on damage]

	{exp}오브젝트가 파괴 되었을 때{/exp}[on destroyobject]
		{must1}{exp}사운드(loop하지 말것){/exp}{string}
		{must2}{exp}오브젝트 인덱스{/exp}{int(0:)}
	[!on destroyobject]
[/sound category]

[add object effect]
	{exp}layer 파일 이름{/exp}{string}
		{must1}{exp}붙이는 순서{/exp}{int(0:)}
	{!string}
[/add object effect]

[add particles]
	[particle]
		{must1}{exp}파티클 스크립트 위치{/exp}[file]
			{must1}{string}
		[!file]

		{exp}패시브 오브젝트 생성후 파티클 이펙트가 나오기까지 딜레이{/exp}[create delay]
			{must1}{exp}딜레이 값{/exp}{int(0:)}
		[!create delay]

		[create sound]
			{must1}{exp}파티클 생성시 출력할 사운드(루프 지원 안함){/exp}{string}
		[!create sound]

		{exp}파티클의 생성위치를 패시브 오브젝트에서 특정위치 만큼 떨어진 위치로 변경{/exp}[follow parent]
			{must1}{exp}X{/exp}{int(:)}
			{must2}{exp}Y{/exp}{int(:)}
			{must3}{exp}Z{/exp}{int(:)}
		[!follow parent]

		[loop] 
			{must1}{exp}l{/exp}{int(0:)}
		[!loop] 
	[/particle]
[/add particles]

[object destroy condition]
	[destroy condition]
		{must1}{exp}애니메이션 종료 후 오브젝트 삭제{/exp}[on end of animation]
		{must1}{exp}땅에 닿았을 때 오브젝트 삭제{/exp}[z pos equal zero]
		{must1}{exp}시간 지난 후 삭제{/exp}[time limite]
		{must1}[not destroy and z pos equal zero]
		{prereq}[time limite]{/prereq}{must2}{exp}시간{/exp}{int(0:)}
	[!destroy condition]

	[destroy action]
		{must1}{exp}자신 파괴{/exp}[only destroy]
		{must1}{exp}자신 파괴 후 다른 오브젝트 생성{/exp}[object create after destroy]
	[!destroy action]

	[on attack]
		{must1}{exp}자신 파괴{/exp}[only destroy]
		{must1}{exp}자신 파괴 후 다른 오브젝트 생성{/exp}[object create after destroy]
	[!on attack]

	{exp}새로 생성할 오브젝트 인덱스{/exp}[add object index]
		{int(:)}
		{!int(:)}
	[/add object index]

	{exp}새로 생성할 오브젝트 인덱스{/exp}[add object index on attack]
		{int(:)}
		{!int(:)}
	[/add object index on attack]	
[/object destroy condition]

{exp}1로 설정하고 문앞에 놓으면 문이 안열림.{/exp}[is blocking obj]
	{must1}{int(1:)}
[!is blocking obj]

{exp}1이면 난이도에 따라 hp 변경{/exp}[is hp by difficulty]
	{must1}{int(1:)}
[!is hp by difficulty]

{exp}1이면 hp게이지 그린다.{/exp}[hp gage]
	{must1}{int(1:)}
[!hp gage]

{exp}화속성 무기로 피니시를 당할 경우 출력할 이펙트 경로{/exp}[burning death path]
	{must1}{string}
[!burning death path]

{exp}해당 인덱스 몹들이 때린 경우 데미지를 입음{/exp}[can beat index]
	{int(0:)}
	{!int(0:)}
[/can beat index]

{exp}동역학 적용{/exp}[apply physics]
	{must1}{exp}강체의 뉴턴값(기본 1500N){/exp}{int(0:)}
[!apply physics]

[follow parent]
	{must1}{exp}들어가는 문에서 랜덤한 위치{/exp}[from parent]
	{must1}{exp}PARENT와 정확히 겹치는 자리에{/exp}[path gate]
	{must1}{exp}PARENT와의 상대적 위치를 유지{/exp}[parent]
	{must1}{exp}좌표 유지{/exp}[keep position]
	{must1}{exp}따라다니지 않음(디폴트){/exp}[none]
[!follow parent]

{exp}악령의 구름용 속도제어 패시브 오브젝트{/exp}[speed control passive objects]
	[passive object]
		[index]
			{must1}{exp}속도를 제어하는 오브젝트 인덱스{/exp}{int(0:)}
		[!index]

		[speed]
			{must1}{exp}속도 증가{/exp}[up]
			{must1}{exp}속도 감소{/exp}[down]
		[!speed]
	[/passive object]
[/speed control passive objects]

{exp}패시브 오브젝트 제네레이터{/exp}[objects]
	{exp}생성할 오브젝트 등록{/exp}[object]
		{exp}패턴에 사용할 아이디{/exp}[id]
			{must1}{int(0:)}
		[!id]

		{exp}생성할 오브젝트 인덱스{/exp}[index]
			{must1}{exp}인덱스{/exp}{int(0:)}
		[!index]

		{exp}오브젝트가 생성될 확률{/exp}[probability]
			{must1}{exp}확률{/exp}{float(:)}
		[!probability]

		{exp}warning mark 표시 여부{/exp}[warning]
			{must1}{exp}`true` or 'false'{/exp}{string}
		[!warning]
	[/object] 
[/objects]

{exp}패턴들을 종류별로 기록{/exp}[patterns]
	{exp}패턴 지정{/exp}[pattern]
		{exp}패턴의 고유한 이름{/exp}[name]
			{must1}{string}
		[!name]

		{exp}오브젝트가 생성되는 시간 주기{/exp}[interval]
			{must1}{exp}ms 단위{/exp}{int(0:)}
		[!interval]

		{exp}한 번의 주기에 생성될 패턴의 단위 개수.{/exp}[columns]
			{must1}{exp}개수.{/exp}{int(0:)}
		[!columns]
		{exp}패턴 데이터를 지정{/exp}[data]
			{exp}0은 빈 공간, 1은 생성할 패시브 오브젝트{/exp}{int(0:1)}
				{must1}{variableInt(0:1)}
			{!int(0:1)}
		[/data]
	[/pattern]
[/patterns]

{exp}패턴들이 나올 순서를 지정{/exp}[sequences]

	{exp}지정한 패턴들을 순차적으로 뿌려준다{/exp}[pattern]
		{must1}{exp}패턴 이름{/exp}{string}
		{must2}{exp}패턴이 지속될 시간(ms 단위){/exp}{int(0:)}
	[!pattern][/pattern]
[/sequences]

//mkjung 120627 add
[int data]
	{int(:)}
		{opt1}{variableInt(:)}
	{!int(:)}
[/int data]

[string data]
	{string}
	{!string}
[/string data]

[under gravity]
	{must1}{exp}{/exp}{int(0:)}
[!under gravity]

[transparent on meet player]
	{must1}{exp}{/exp}{int(0:)}
[!transparent on meet player]

[pvp room transparent value for observer]
	{must1}{exp}{/exp}{int(0:)}
[!pvp room transparent value for observer]

[etc attack info]
	{exp}{/exp}{string}
	{!string}
[/etc attack info]

[SNIPER TYPE]
	[WAIT TIME],[INVOKE TIME],[INIT VELOCITY],[INVOKE CHECK TIME],[INVOKE DELAY TIME],[SHOT DISTANCE]
		{must1}{exp}시간{/exp}{int(0:)}
	[!WAIT TIME],[!INVOKE TIME],[!INIT VELOCITY],[!INVOKE CHECK TIME],[!INVOKE DELAY TIME],[!SHOT DISTANCE]
[/SNIPER TYPE]

[warning]
	[min distance]
		{must1}{exp}{/exp}{int(0:)}
		{must2}{exp}{/exp}{int(0:)}
		{must3}{exp}{/exp}{int(0:)}
	[!min distance]

	[max distance]
		{must1}{exp}{/exp}{int(0:)}
		{must2}{exp}{/exp}{int(0:)}
		{must3}{exp}{/exp}{int(0:)}
	[!max distance]

[/warning]

[quest type]
	{must1}[must be destroyed]
[!quest type]

[for tournament]
	{must1}{exp}{/exp}{int(0:)}
[!for tournament]

[create sound] 
	{must1}{string}
[!create sound] 

