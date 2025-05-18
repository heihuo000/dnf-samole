[MOTION]	// 모션 부분
	[BASE ANI] `../Animation_Kinol/throw.ani`
	[SUB ANI]
	`../../../equipment/monster/goblin/LKinolPantsAnimation/move_100.ani` 0 100	// 경로, 시작프레임, 레이어.
	`../../../equipment/monster/goblin/weapon09-animation/move_100.ani` 0 100
	[/SUB ANI]

	//mkjung 120516 [SUB ANI WITH XY] add
	[SUB ANI WITH XY]
		`../Animation/ScasaShout1-1.ani` 0 13 390 -160
		`../Animation/ScasaShout1-2.ani` 0 13 390 -160
		`../Animation/ScasaShout2-1.ani` 0 13 390 -160
		`../Animation/ScasaShout2-2.ani` 0 13 390 -160
	[/SUB ANI WITH XY]


	[SPEECH]
	`문자열(<.str문자열>로 대체가능)` 0 30  // 대사, 시작프레임, 말할 확률.
	`문자열(<.str문자열>로 대체가능)` 1 50  // 대사, 시작프레임, 말할 확률.
	[/SPEECH]

	[SPEECH POS]
	`문자열(<.str문자열>로 대체가능)` 0 30  // 대사, 시작프레임, 말할 확률. x좌표, y좌표
	[/SPEECH POS]

	[SOUND]
	`SOUND_TAG` 0 // 사운드, 시작 프레임.
	[/SOUND]

	[SOUND PROBABILITY]
	`SOUND_TAG` 0 50 // 사운드, 시작 프레임. 확률.
	[/SOUND PROBABILITY]
[/MOTION]	// 여기까지가 모션. 툴안에서 읽히는 부분.

////////////////// [SPEECH]와 [SOUND]는 꼭 [MOTION] 태그 안에 들어가있어야 합니다!

[HOLD POSITION] (AI Character 사용) 이 액션이 실행되는 동안 이동하지 않을때 추가

[DEFAULT ATTACKINFO] `../AttackInfo/sample.atk`	// 현재 액션에서 사용할 기본 공격 정보

//기타 밑의 세 태그는 behavior에서 숫자대신 사용할 수 있습니다. 사용할 수 없는 부분도 있으니 쓰기 전에는 오영욱에게 문의.
// [RANDOM] x y // x ~ y 값 중에 랜덤으로 발생.
// [RANDOM SELECT] x1 x2 x3 x4... [/RANDOM SELECT] 저 값중에 하나가 랜덤으로 사용됨
// [RANDOM INDIVIDUAL] x1 y1 x2 y2 x3 y3 ...  [/RANDOM INDIVIDUAL]  x값이 y확률비율로 랜덤으로 사용됨. (미구현)


// 조건 제어부
[TRIGGER]
	// 트리거 활성제어부
	[LIMIT]	1			// 실행할 총 횟수. 0이면 무한히 실행.
					//[CHANGE ACTION FILE] 로 액션을 바꾸고 다시 원래의 액션으로 돌아 올 경우 초기화되니 주의!
	[ENABLE] [ON](of [OFF]) 	// 초기 트리거의 ENABLE여부를 결정
	[CHECK TIME] 1000		//시간  //시간 마다 체크
	// 다른 트리거와 혼용해서 써야 의미가 있는 태그
	[FRAME] 2 2		// 프레임 번호 ?~? 까지

	[CHECK GHOST]		//고스트계열의 스킬을 체크
	[CHECK BUFF]		//좋은 버프가 있는지 체크
	[CHECK SPECIFIC BUFF]  [어펜디지 스트링 ID]	// 특정 ID 의 어펜디지를 체크(ID 는 담당 클라이언트개발자에게 문의하시오) 

	[CHECK SPECIFIC BUFF]  [ANGER] 2 200		// 격노 어펜디지가 걸려있고 2번인덱스의 레이어의 알파값이 200이 넘을 때만 통과!

	// 이벤트로 발동하는 트리거 (ON으로 시작하는 태그끼리는 중복 불가)
	[ON DAMAGE] 		// 공격맞았을 경우 체크
	[ON ATTACKSUCCESS]	// 공격성공시 체크
	[IS MEET PROB]	60	// 트리거 체크 확률
	[CHECK STUCK] 1		// 스턱인지 체크, [ON DAMAGE] 혹은 [ON ATTACKSUCCESS] 태그가 있어야만 발동 (1: 스턱, 0: 스턱 아님)
	[IS STUCK]			// 기능 삭제,통합 -> [CHECK STUCK]
	[NOT STUCK]			// 기능 삭제,통합 -> [CHECK STUCK]
	[IS MOUNT] 1		// 탈것에 탔는지 여부 (1: 탔음, 0: 타지 않았음)
	[ON CREATE OBJECT]	// 어떤 물체가 생성될 때
	[ON DESTROY OBJECT]	// 어떤 물체가 파괴될 때 
	[ON DESTROY ME]		// 자기 자신이 파괴될 때 : 작동은 하지만 파괴될때 자기한테 send do behavior를 할 경우 그 메세지가 도착하는 시점에서 이미 오브젝트가 파괴된 후라 정상동작 안함.
	[ON REMOVE ACTION]	// 액션이 끝날 때 : 작동은 하지만 제거될 때 자기한테 send do behavior를 할 경우 메세지가 도착하는 시점에서 액션이 이미 바뀌어있어서 정상동작 안함.
	[ON SET ACTION]		// 액션이 시작될 때
	[ON SHAKE INPUT]	// 흔들기 인풋이 들어왔을 때
	[ON MOVE COLLISION]	// 진행할수 없는 곳에 부딪쳤을 때.
	[IF] `변수` [=] `변수` [+] 숫자 [/IF]		 // IF구문. 변수와 수식 사용 가능. [GET TIME]으로 시간을 가져올수 있다.
	[IS AI TARGET] 1		// 현재 AI 상에 타겟이 있는지 여부 체크 1 : 있으면 true, 0 : 없으면 true
	// 대상 조건 체크 부분 (대분류)
	[TRIGGER CHECK] 1 [ON] (or [OFF])	// 1번 트리거가 사용가능한지 체크.

	// 대상 조건 체크 부분 (대분류)
	[WHICH] 	 [ME]	// 자신	
			 [SUMMON MASTER]		// 소환주
			 [SUMMON OBJECT]		// 소환한 놈(패시브, 몬스터)
			 [TARGET]			// AI 상에서 잡고 있는 타겟.
			 [LAST ATTACKER]			// 자신을 공격한 마지막 공격자
			 [LAST ACTIVE ATTACKER]		// 자신을 공격한 마지막 공격자(액티브 오브젝트)
			 [LAST ATTACKSUCCESS]		// 자신이 마지막으로 데미지를 준 오브젝트
			 [LAST ATTACKSUCCESSES]		// 자신이 마지막으로 데미지를 준 오브젝트들
			 [LAST ACTIVE ATTACKSUCCESS]	// 자신이 마지막으로 데미지를 준 ACTIVE 오브젝트
			//mkjung 120515 add.
			 [CHARACTER ATTACKSUCCESS]	// 마지막으로 공격성공한 캐릭터

			 [LAST ATTACKERS]    1000  0	// 자신을 몇초 이내로 공격한 공격자들  첫번째 인자는 시간, 두번째 인자는 0 일때는 공격자 1일때는 액티브 오브젝트를 가져온다.
			 [ALL OUR TEAM] 		// 우리팀
			 [ALL ENEMY]			// 우리팀 빼고 다
			 [ALL MONSTER TEAM]		// 몬스터팀
			 [ALL CHARACTER TEAM]		// 캐릭터팀
			 [CHARACTER]			// 모든 캐릭터
		         [MONSTER]			// 모든 몬스터
			 //mkjung 120514 modi.
			 [PASSIVE]			// 모든 패시브 오브젝트
		         [AI CHARACTER]			// 모든 AI 캐릭터
			 [CREATE OBJECT]		// 생성되는 오브젝트 // ON CREATE OBJECT에서만 사용.
			 [DESTROY OBJECT] 		// 파괴되는 오브젝트 // ON DESTROY OBJECT에서만 사용
			 [LOAD TARGET] 0 		// 저장한 오브젝트를 불러내서 사용. 0번은 저장할때 사용한 인덱스. 

			 [PARTY TARGET]			// 특정 파티원 선택
				[INDEX] 0		// [INDEX]: 파티원의 인덱스(0 ~ 3) (필수 인자)
				[CHECK NEXT] 1		// [CHECK NEXT]: 없을 경우 다음자리의 캐릭터를 타겟으로 할지 1이면 변경, 0이면 변경 안함 (인자 생략 가능)
				[INCLUDE DEAD] 1		// [INCLUDE DEAD]: 죽은 파티원도 체크할지 여부 1이면 체크, 0이면 체크 안함 (인자 생략 가능)
			 [/PARTY TARGET]

			 [PLAYER] 			// 모든 캐릭터 (AI 캐릭터는 제외한 실제 파티원들)
			
	// 대상 조건 체크 부분 (소분류)
	[CHECKUP]
		[IS NAME] `고블린` `호도르` [/IS NAME]
		[IS CATEGORY] `야수` `로봇` `등등` [/IS CATEGORY]

		    [human],// CATEGORY_TRIBE_HUMAN
		    [beast],// CATEGORY_TRIBE_BEAST
 		    [plant],// CATEGORY_TRIBE_PLANT
    		    [insect],// CATEGORY_TRIBE_INSECT
    		    [machine],// CATEGORY_TRIBE_MACHINE
		    [organic],						// CATEGORY_TRIBE_ORGANIC
		    [hybrid],					    // CATEGORY_TRIBE_HYBRID
		    [undead],						// CATEGORY_TRIBE_UNDEAD
		    [devil],						// CATEGORY_TRIBE_DEVIL
    		    [spirit],						// CATEGORY_TRIBE_SPIRIT
                    [dragon],						// CATEGORY_TRIBE_DRAGON
		    [melee combat],				// CATEGORY_AI_MELEE_ATTACK
	            [range combat],				// CATEGORY_AI_RANGE_ATTACK
	            [close-passive],				// CATEGORY_AI_NEGATIVE
	            [close-carefully],			// CATEGORY_AI_CAREFUL
	            [full-superarmor],			// CATEGORY_AI_FULLSUPERARMOR
	            [close-tough],				// CATEGORY_AI_RASH
	            [close-manace],				// CATEGORY_AI_MANACE
		    [human armor],                // CATEGORY_ARMOR_HUMAN
    		    [fort armor],                 // CATEGORY_ARMOR_FORT
    		    [divine armor],               // CATEGORY_ARMOR_DIVINE
    		    [goblin], 					// CATEGORY_ETC_GOBLIN
                    [tau], 						// CATEGORY_ETC_TAU
    		    [lugaru], 					// CATEGORY_ETC_LUGARU
		    [fixture],					// CATEGORY_ETC_FIXTURE
		    [stay],						// CATEGORY_ETC_STAY : 초기 위치에서 움직이지 않음
                    
		    [melee],					// CATEGORY_PASSIVEOBJECT_TYPE_MELEE
	            [missile],					// CATEGORY_PASSIVEOBJECT_TYPE_MISSILE
	            [energy],					// CATEGORY_PASSIVEOBJECT_TYPE_ENERGY
	            [physical],					// CATEGORY_PASSIVEOBJECT_TYPE_PHYSICAL
	            [magical],					// CATEGORY_PASSIVEOBJECT_TYPE_MAGICAL
	            [bullet],					// CATEGORY_PASSIVEOBJECT_TYPE_BULLET
	            [cannon],					// CATEGORY_PASSIVEOBJECT_TYPE_CANON
	            [explosion],					// CATEGORY_PASSIVEOBJECT_TYPE_EXPLOSION
	            [inflame],					// CATEGORY_PASSIVEOBJECT_TYPE_INFLAME
	            [non inflame],					// CATEGORY_PASSIVEOBJECT_TYPE_NONINFLAME
	            [light],					// CATEGORY_PASSIVEOBJECT_TYPE_LIGHT
	            [dark],					// CATEGORY_PASSIVEOBJECT_TYPE_DARK
	            [water],					// CATEGORY_PASSIVEOBJECT_TYPE_WATER
	            [fire],					// CATEGORY_PASSIVEOBJECT_TYPE_FIRE
	            [fort],

		[IS INDEX] 1 2 3	[/IS INDEX]
		[IS NOT INDEX] 1 2 3	[/IS NOT INDEX]	// 기입한 인덱스가 아닌 놈만 체크
	
		[IS OBJECT TYPE] [PASSIVE OBJECT] [CHARACTER] 등등 [/IS OBJECT TYPE]
		[IS TEAM] [MY TEAM] [ENEMY TEAM] [MONSTER TEAM] [CHARACTER TEAM] ... [/TEAM]
		[CHECKED NO] [<] 1 // 체크된 오브젝트의 숫자를 체크. [<] 는 등호 사용가능
	  
   		[IS END MAP]				// 맵의 좌우 끝인지 판단 하는 태그 
		[IS END MAP VERTICALLY] 		// 맵의 상하 끝인지 판단 하는 태그
		[IS IN POS] 100 200 0			// 현재 타겟이 기재한 좌표에 있는지 확인한다
		[IS IN AREA]				// 현재 타겟이 기재한 영역 내에 있는지 확인한다 
			[POS] 100 200 0			// (기준좌표X,기준좌표Y,기준좌표Z)
			[RANGE] 10 10 10		// (X영역, Y영역, Z영역)
			[COORDINATE] `RELATIVE`		// `RELATIVE`, `ABSOLUTE` (생략 시 기본값: ABSOLUTE)
		[/IS IN AREA]
		[IS TARGET STATE] 3			// 타겟의 상태(STAND, HOLD 등등)를 검사하는 태그  
							// 0. 서있기,이동 1.앉기 2. 앉아있기 3. 맞기, 4.다운, 5.죽기, 6. 점프, 7. 점프 공격, 8. 공격, 9. 홀드, 10.소환시작, 11. 소환완료, 
							// 12. 투척, 13. 대쉬, 14. 대쉬 어택, 15. 아이템 줍기, 16. 버프, 17. 퀵스탠딩		

		[IS NOT TARGET STATE] 4		// 타겟의 상태가 아닌지 검사하는 태그(아닐때만 검사를 통과한다 [IS TARGET STATE] 의 반대)

		[X SPEED] [비교부등호] 0	// X축 속도 : 파티클로 이동 제어되는 부분 미지원
		[Y SPEED] [비교부등호] 0	// Y축 속도 : 파티클로 이동 제어되는 부분 미지원
		[Z SPEED] [비교부등호] 0	// Z축 속도 : 파티클로 이동 제어되는 부분 미지원
		[CHARGED TIME] [비교부등호] 0 // 차지한 시간  
		[ZPOS] [>]([=], [<], [>=], [<=], [=>], [=<]) 0	// Z좌표 체크.
		[HP] [>]([=], [<], [>=], [<=], [=>], [=<]) 50 [%](or [POINT])	// Z좌표 체크.
		[MP] [>]([=], [<], [>=], [<=], [=>], [=<]) 100 [%](or [POINT])	// Z좌표 체크.	
		[DISTANCE] [<=] 500	// 타겟과 자신과의 거리체크. 부등호 사용가능/
		[CHECK DISTANCE] 400 400  //적이 가까이 오는지 체크 x축, y축
		[TRIGGER CHECK] [STAY] 1 [ON] (or [OFF])	// stay 액션의 1번 트리거가 사용가능한지 체크.
				[MOVE] 0 [ON] (or [OFF])	// move 액션의 0번 트리거가 사용가능한지 체크
				[SIT] 트리거번호 [ON] (or [OFF])
				[DOWN] 트리거번호 [ON] (or [OFF])
				[DAMAGE] 1 3 [ON] (or [OFF])	// 1번 damage 액션의 3번 트리거가 사용가능한지 체크
				[ATTACK] 3 2 [ON] (or [OFF])	// 3번 attack 액션의 2번 트리거가 사용가능한지 체크
				[CUSTOM] 액션번호 트리거번호 [ON] (or [OFF])
				[DEFAULT] 트리거 번호 [ON] (or [OFF])
				[PROC] 트리거 번호 [ON] (or [OFF])
		[CHECK THREAT]	200  			// 범위 영역내에 장판이나 각종 어택렉트 달린 놈들을 체크 (범위)
		[AXIS INDEX] 0  - ON MOVE COLLISION 과 함께 사용하며 없을 경우 자동으로 x, y 축의 충돌을 체크합니다. 
				- 0 은 x축 1 은 y축 2는 z축의 충돌을 체크합니다.
				- 충돌이 일어나고 있는동안 계속 ON MOVE COLLISION 을 체크합니다.

		[IS OURTEAMATTACKED]  // 아군 타격시 인지

		//	ACTIVESTATUS_SLOW = 0,          /// 슬로우
		//	ACTIVESTATUS_FREEZE = 1,        /// 프리즈
		//	ACTIVESTATUS_POISON = 2,        /// 포이즌
		//	ACTIVESTATUS_STUN = 3,          /// 스턴
		//	ACTIVESTATUS_CURSE = 4,         /// 커스
		//	ACTIVESTATUS_BLIND = 5,         /// 블라인드
		//	ACTIVESTATUS_LIGHTNING = 6,     /// 라이트닝
		//	ACTIVESTATUS_STONE = 7,         /// 스톤
		//	ACTIVESTATUS_SLEEP,         /// 슬립
		//	ACTIVESTATUS_BURN,			/// 화상
		//	ACTIVESTATUS_WEAPON_BREAK,	/// 무기 파괴
		//	ACTIVESTATUS_BLEEDING,      /// 블리딩
		//	ACTIVESTATUS_HASTE,         /// 헤이스트
		//	ACTIVESTATUS_BLESS,         /// 블레스
		//	ACTIVESTATUS_ELEMENT,       /// 엘레먼트
		//	ACTIVESTATUS_CONFUSE,		/// 혼란
		//	ACTIVESTATUS_HOLD,			/// 홀드
		//	ACTIVESTATUS_ARMOR_BREAK,	/// 갑옷 파괴
            	[IS TARGETACTIVESTATUS] 3 // 타겟의 상태 변화 인지, 예제에서 3을 기재했으므로 스턴일때 참
		[FRONTSIDE]		//나를 바라보고 있는 몬스터와 패시브 검색
		[BACKSIDE]		//나를 등지고 있는 몬스터와 패시브 검색
		[IS LEFT]		//왼쪽에 있는지
		[IS RIGHT]		//오른쪽에 있는지
		[WITHIN SIGHT]	//내가 바라보고 있는 몬스터와 패시브 검색
		[OUT OF SIGHT]	//내가 등지고 있는 몬스터와 패시브 검색
		[CHECK SYMBOL] 1 1	// 심볼 체크 0(거짓 체크)/1(참 체크) 1(심볼이 1인지? 체크함)
		[IS CHILD] 1		// 자식인지 체크 (1: 자식, 0: 자식 아님)

		[CHECK PLAYER NUM]		// 파티원의 수를 체크
			[COUNT] 1		// 지정할 파티원의 수
			[INCLUDE DEAD] 0	// 죽은 파티원까지 포함할지 여부 (1: 포함, 0: 미포함), 태그 생략 시 기본값 = 0
		[/CHECK PLAYER NUM]

		//mkjung 120511 add. 
		[LAST TARGET PRIORITY] [LOW]
		//[LAST ATTACK PRIORITY] [LOW] // ( [LOW] or [HIGH] or [NEVER] or [ALWAYS] ) 우선순위 4 : 마지막 공격에 대한우선순위		

		//mkjung 120514 add. 
		[IS FRONTPOS]
		[FACE TO FACE]
		[IS GRABABLE] 10

		//mkjung 120517 add. 
		[CHECK AREA] 0 100 0 0 //대상의 범위를 체크, (x축 앞,x축 뒤,y축 위,y축 아래)
		[IS DAMAGE ENABLE]	// 공격가능 한놈만 걸러낸다(무적기 쓰는 놈은 스킵!! 무적기 쓰는 놈도 공격대상으로 하면 문제가 생긴다)
		[IS DAMAGEBOX ENABLE] 0	// 데미지 박스가 없는 놈만 골라낸다

	[/CHECKUP]

	//mkjung 120511 add. 
	[MOVE TO] [TARGET] 500	

	[GET TARGET] 2 [HP] [LOW] // HP 낮은 애부터 셋.
	[GET TARGET] 1 [MP] [HIGH] // MP 높은 애부터 셋
 	[GET TARGET] 3 [LEVEL] [HIGH] // 레벨 높은 애부터 셋
	[GET TARGET] 1 [DISTANCE] [LOW] // 구현완료.
	[GET TARGET] 5 [RANDOM] //랜덤하게 5명 - 랜덤에는 하이 로우 안들어감.
	[GET TARGET] 1 [LAST ATTACKSUCCESS] [HIGH] //가장 최근에 공격 성공했던 애부터 셋, [LOW]면 가장 예전에 공격 성공한 애부터
 

	// 명령 실행 제어 부분
	[DO BEHAVIOR]	[대상]	0				// 어떤 대상에게 몇번째 비해이비어를 실행할 것인가?
			[ME]					// 자신
			[CHECKUP OBJECT]			// 대상 조건 체크를 통과한 오브젝트
			[DROPOUT OBJECT]			// 대상 조건 체크를 통과하지 못한 오브젝트
			[TARGET]				// 대상 조건 체크를 통과한 오브젝트의 타겟
			[LAST ATTACKER]				// 대상 조건 체크를 통과한 오브젝트를 마지막으로 때린 적
  		        [LAST ACTIVE ATTACKER]			// 자신을 공격한 마지막 공격자(액티브 오브젝트)
			[LAST ATTACKSUCCESS]			// 대상 조건 체크를 통과한 오브젝트가 때린 적
			[SUMMON MASTER]			// 대상 조건 체크를 통과한 오브젝트의 소환주
			[LOAD TARGET] %x 			// 대상 조건 체크를 통과한 오브젝트가 저장한 x번의 타겟. 
			//mkjung 120516 add
			[LAST ATTACKSUCCESSES]
			//mkjung 120518 add
			[LAST ACTIVE ATTACKSUCCESS]
			[CHARACTER ATTACKSUCCESS]
	// PROC 액션의 명령 실행 제어 부분
	[DO PROC BEHAVIOR]	[대상]	0				// 어떤 대상에게 몇번째 비해이비어를 실행할 것인가?
				[ME]					// 자신
				[CHECKUP OBJECT]			// 대상 조건 체크를 통과한 오브젝트
				[DROPOUT OBJECT]			// 대상 조건 체크를 통과하지 못한 오브젝트
				[TARGET]				// 대상 조건 체크를 통과한 오브젝트의 타겟
				[LAST ATTACKER]				// 대상 조건 체크를 통과한 오브젝트를 마지막으로 때린 적
				[LAST ACTIVE ATTACKER]			// 자신을 공격한 마지막 공격자(액티브 오브젝트)
				[LAST ATTACKSUCCESS]			// 대상 조건 체크를 통과한 오브젝트가 때린 적
				[SUMMON MASTER]			// 대상 조건 체크를 통과한 오브젝트의 소환주
				[LOAD TARGET] %x 			// 대상 조건 체크를 통과한 오브젝트가 저장한 x번의 타겟. 
				//mkjung 120516 add
				[LAST ATTACKSUCCESSES]
				//mkjung 120518 add
				[LAST ACTIVE ATTACKSUCCESS]
				[CHARACTER ATTACKSUCCESS]

	// 명령 실행 제어 부분
	// 명령 실행 제어 부분
	[DIRECT DO BEHAVIOR]	[ME]				0
				[CHECKUP OBJECT]		0
				[DROPOUT OBJECT]		0
				[TARGET]			0
				[LAST ATTACKER]			0
				[LAST ACTIVE ATTACKER]		0
				[LAST ATTACKSUCCESS]		0
				[SUMMON MASTER]		0
				[LAST ATTACKSUCCESSES]		0
				[LAST ACTIVE ATTACKSUCCESS]	0
				[CHARACTER ATTACKSUCCESS]	0
				[LOAD TARGET] 0 0

	// 명령 실행 제어 부분
	[DELAY DO BEHAVIOR]	[대상]	0  1000			// 어떤 대상에게 몇번째 비해이비어를 실행할 것인가? 딜레이 시간 후 실행한다.
								// 두 개의 정수 인자(비해이비어 인덱스, 딜레이 시간(ms 단위))
				[ME]
				[CHECKUP OBJECT]				// 대상 조건 체크를 통과한 오브젝트
				[DROPOUT OBJECT]				// 대상 조건 체크를 통과하지 못한 오브젝트
				[TARGET]					// 대상 조건 체크를 통과한 오브젝트의 타겟
				[LAST ATTACKER]				// 대상 조건 체크를 통과한 오브젝트를 마지막으로 때린 적
				[LAST ACTIVE ATTACKER]			// 자신을 공격한 마지막 공격자(액티브 오브젝트)
				[LAST ATTACKSUUCCESS]			// 대상 조건 체크를 통과한 오브젝트가 때린 적
				[SUMMON MASTER]				// 대상 조건 체크를 통과한 오브젝트의 소환주
				[LOAD TARGET] %x 				// 대상 조건 체크를 통과한 오브젝트가 저장한 x번의 타겟. 
				//mkjung 120516 [LAST ATTACKSUCCESSES] add
				[LAST ATTACKSUCCESSES]

	[SAVE TARGET OBJECT] 0					// 해당 오브젝트중에 첫번째 오브젝트만 (하나만 대응) 해당 번호에 저장.
//                          △	이 사이에 밑에 태그들을 넣으면..
				[TARGET]				// 대상 조건 체크를 통과한 오브젝트의 타겟
				[LAST ATTACKER]				// 대상 조건 체크를 통과한 오브젝트를 마지막으로 때린 적
				[LAST ACTIVE ATTACKER]	// 자신을 공격한 마지막 공격자(액티브 오브젝트)
				[LAST ATTACKSUUCCESS]			// 대상 조건 체크를 통과한 오브젝트가 때린 적
				[SUMMON MASTER]				// 대상 조건 체크를 통과한 오브젝트의 소환주
				//mkjung 120516 [LAST ATTACKSUCCESSES] add
				[LAST ATTACKSUCCESSES]

				//mkjung 120517 add
				[SUMMON MASTER] 10
		
	[IS MISSILE DAMAGE] //원거리 공격인지
	[IS PHYSICAL DAMAGE] //물리 공격인지
	[IS MAGICAL DAMAGE] //마법 공격인지
	[IS ABSOLUTE DAMAGE] //방어부시 공격인지
	[IS FIRE DAMAGE] //화속성 공격인지
	[IS WATER DAMAGE] //수속성 공격인지
	[IS DARK DAMAGE] //암속성 공격인지
	[IS LIGHT DAMAGE] //명속성 공격인지
	[IS NONE DAMAGE] //무속성 공격인지

	[IS DIRECTION LEFT] //왼쪽을 쳐다보는지
	[IS DIRECTION RIGHT] //오른쪽을 쳐다보는지

	[RANDOM CHECK] 1 10  // 왼쪽 숫자/오른쪽 숫자 확률로 통과하는 조건


	[CHECK PARTYMEMBERS STATE][ALL ALIVE]		// 모두 살아있을때만 통과
	[CHECK PARTYMEMBERS STATE][EVEN ONE DEATH]	// 한놈이라도 죽었다면 통과, 아니면 통과안함


[/TRIGGER]	// 닫기.



[TRIGGER]		// 트리거는 여러개를 쓸 수 있으며 트리거가 여러개 있을 경우 각각 따로 발동함.
[/TRIGGER]









// 행동제어부. 트리거에서 실행하도록 하는 명령. 위부터 순서대로 0부터 인덱스가 붙음

[BEHAVIOR]	

	[CREATE PASSIVEOBJECT]	// 패시브 오브젝트 생성하기. // INDEX, 파티클이름, LEVEL, POS 는 반드시 순서대로 들어가야함. 그 외는 들어가던 말던 상관없음.
		[INDEX] 30001						//인덱스번호
		[PARTICLE FILENAME] `../Particle/ThrowStone.ptl`	// 패시브 오브젝트 생성 파티클
		[LEVEL] 0						// 마법레벨.
		[POS] 20 0 60						// 부모 좌표의 상대 좌표 x y z
		[USE ANGLE] 40 350 550 2				// 각도, Z포스, 속도, 땅에 충돌했을때의 처리(0. 관통, 1. 슬라이드, 2. 정지, 3. 사라짐) - 주의 : obj 파일에서 is vanish 속성 0으로 해야함
		//[USE NEUTRAL TEAM]				// 중립 팀으로 나타남([USE TARGET TEAM] 과 같이 쓰면 안됨!)
		//[USE TARGET TEAM]					// 타겟의 팀으로 나타남. (디폴트는 주인의 팀.)
		//[USE MY DIRECTION]					// 좌표 기준 X축 이동을 자신이 바라보는 방향으로 할 것인지 결정. (기본은 타겟방향)
		//[USE MY BASEPOS]					// 상대 좌표 이동을 자신의 좌표 기준으로 할 것인지 지정 (기본은 타겟 좌표)
		//[FIX DIRECTION] [LEFT] [RIGHT] [RANDOM] [NEUTRAL]			// 생성됐을 때 바라볼 방향을 지정해줌.
		//[USE MAP POS]						// 좌표이동을 맵절대좌표로 함.
		//[WARNING MARK] 330 0 100 2				// WarningMark 보정. x위치 보정, y위치 보정, 딜레이, 경고마크 종류 (1: 적색보통, 2: 적색대형, 3: 적색보통(아군만 보임), 4: 적색대형(아군만 보임), 5: 녹색보통, 6: 녹색대형)
		//[USE OBJECT ZPOS]					// Z좌표를 오브젝트 좌표를 따라가도록 수정.
		[FOLLOWING TARGET]					// 타겟(BEHAVIOR 호출할때 넘겨 받는 대상을 의미함)을 따라가도록 설정한다
		[MOVABLE POS ONLY]					// 맵 상에서 이동 가능한 위치인지 체크(생성 위치가 이동 불가능한 위치면 생성 안함)
		//mkjung 120514 add.
		[NO EFFECT]						// 소환 이펙트 없이 나감
	[/CREATE PASSIVEOBJECT]





	[SUMMON MONSTER]			// INDEX, LEVEL, POS 는 반드시 순서대로 들어가야함. 그 외는 들어가던 말던 상관없음.
		[INDEX] 30001 //인덱스번호 
		[LEVEL] 0
		
		[POS] 20 0 60 //x y z

		[NO EFFECT]					// 소환 이펙트 없이 나감.
		//[MAGIC CIRCLE]				// 마법진이 그려지면서 소환됨. 디폴트 값.
		//[JUMP OUT] 0 0 0 [LEFT] [UP]			// 몬스터가 뛰어 나가듯이 소환됨.
								// x velocity, y velocity, height
								// [NEUTRAL] or [LEFT] or [RIGHT] or [RANDOM]
								// [NEUTRAL] or [UP] or [DOWN] or [RANDOM]
		//[USE TARGET TEAM]				// 타겟의 팀으로 나타남. (디폴트는 주인의 팀.)
		//[USE MY DIRECTION]				// 좌표 기준 X축 이동을 자신이 바라보는 방향으로 할 것인지 결정. (기본은 타겟방향)
		//[USE MY BASEPOS]				// 상대 좌표 이동을 자신의 좌표 기준으로 할 것인지 지정 (기본은 타겟 좌표)
		//[NOT USE OBJECT DIRECTION]			// 방향 보정을 하지 않음
		//[USE MAP POS]					// 좌표이동을 맵 절대 좌표로 함.
		//[TEAM] 100 					// 팀 지정 0~번 캐릭터 팀 100~ 몬스터팀 200~ 뉴트럴
		//[USE OBJECT ZPOS]				// Z좌표를 오브젝트 좌표를 따라가도록 수정.
		//[SUMMON TIME] 1000				//소환물이 살아 있을 시간 설정

		//mkjung 120518 add.
		[SUMMON MARK] 0					// 바닥에 소환 마크 안보이게함 //[SUMMON TIME]  보다 뒤에 써야함
		[FIX DIRECTION] [LEFT] [RIGHT] [RANDOM] [NEUTRAL]		// 바라볼 방향을 지정해줌.

	[/SUMMON MONSTER]


	[SUMMON APC]			// INDEX, LEVEL, POS 는 반드시 들어가야함. 그 외는 들어가던 말던 상관없음.
		[INDEX] 30001//인덱스번호 
		[LEVEL] 0
		[POS] 20 0 60//x y z

		[NO EFFECT]					// 소환 이펙트 없이 나감.
		//[MAGIC CIRCLE]				// 마법진이 그려지면서 소환됨. 디폴트 값.
		//[JUMP OUT] 0 0 0 [LEFT] [UP]			// 몬스터가 뛰어 나가듯이 소환됨.
								// x velocity, y velocity, height
								// [NEUTRAL] or [LEFT] or [RIGHT] or [RANDOM]
								// [NEUTRAL] or [UP] or [DOWN] or [RANDOM]
		//[USE TARGET TEAM]				// 타겟의 팀으로 나타남. (디폴트는 주인의 팀.)
		//[USE MY DIRECTION]				// 좌표 기준 X축 이동을 자신이 바라보는 방향으로 할 것인지 결정. (기본은 타겟방향)
		//[USE MY BASEPOS]				// 상대 좌표 이동을 자신의 좌표 기준으로 할 것인지 지정 (기본은 타겟 좌표)
		//[NOT USE OBJECT DIRECTION]			// 방향 보정을 하지 않음
		//[USE MAP POS]					// 좌표이동을 맵 절대 좌표로 함.
		//[USE OBJECT ZPOS]				// Z좌표를 오브젝트 좌표를 따라가도록 수정. (APC는 동작안함.
		//[SUMMON TIME] 1000				//소환물이 살아 있을 시간 설정
		//[FOLLOW SUMMONER]				//태그 사용하면 소환자가 맵을 넘어갈 때 따라가고 아님 안따라감
		//[SUMMON TYPE] ([WITHOUT SUMMONER NONE] - 서머너 죽어도 변화 없음, [WITHOUT SUMMONER NEUTRAL] - 서머너 죽으면 중립으로, [WITHOUT SUMMONER DIE] - 서머너 죽으면 사라짐)
	[/SUMMON APC]

* 주의 사항 : apc는 몬스터 소환과 같은 스크립트로 처리가 가능하지만 일부 기능은 지원하지 않음. 등장시에 마법진이나 점프로 등장은 
스크립트로 작성해도 문제는 없지만 적용 되지는 않습니다.

	[BOOSTER APPENDAGE]					// 부스터 어팬디지 (각 하위태그는 생략 가능)
		[ZPOS CAMERA VIEW]				// 높이에 따라 카메라 추적할지 여부(생략 시 초기 값 : 추적 안함)
		[BOOSTER ACCEL] 0				// 부스터의 가속도 (생략 시 초기 값: 0)
		[BOOSTER VELOCITY] 1000				// 부스터의 초기속도 (생략 시 초기 값: 0)
		[BOOSTER USING TIME] 5000			// 부스터 게이지 소모 시간 (단위: ms, 생략 시 초기 값: 5000)
		[BOOSTER RECOVERY TIME] 10000			// 부스터 게이지 회복 시간 (단위: ms, 생략 시 초기 값: 10000)
		[EVADE ACCEL] 1500				// 회피 가속도 ( > 0 생략 시 초기 값: 0)
		[GRAVITY] 1500					// 중력 가속도 ( >= 0, 생략 시 초기 값: 10)
		[FALLING INIT VELOCITY] 1000			// 낙하 초기 속도 ( >= 0 )
		[TERMINAL VELOCITY] 3000			// 종단 속도 ( > 0, 생략 시 초기 값: 0)
		[HEIGHT] 200000					// 낙하 초기 높이 ( > 0, 생략 시 초기 값: 0)
		[LIMIT HEIGHT] 2000				// 낙하 중에 장면 전환을 위해 카메라가 멈추는 높이 ( > 0, 생략 시 초기 값: 0)
		[INIT POS] 400 120 200000			// 초기 위치 (순서대로 X, Y, Z 위치)
		[LINE GAP] 200					// 이동 시 각 라인간의 거리 (생략 시 초기 값: 200)
		[DISABLE KEYINPUT]				// 키 입력을 막을 것인지 여부 (생략 시 키 입력 가능)
		[DEFAULT ANI] `Character\Common\Animation\fallingeffect_default.ani`
		[BOOSTING ANI] `Character\Common\Animation\fallingeffect_boost.ani`
	[/BOOSTER APPENDAGE]

	[SET MOVABLE AREA]		// 중심좌표 [POS] 기준으로 [RANGE] 각 값의 1/2로 +/- 범위를 정함
		[POS] 600 120 150	// (생략 시, 기본값: 0 0 0)
		[RANGE] 400 200 200	// (생략 시, 기본값: 0 0 0, 값은 모두 >= 0, 짝수이지 않으면 1px 오차가 생김)
		[COORDINATE] `RELATIVE` // 상대좌표: `RELATIVE` 절대좌표: `ABSOLUTE` (생략 시, 절대좌표 기준)
	[/SET MOVABLE AREA]
	
	[CHANGE GRAVITY] 0		// 중력값을 해당 int값으로 바꿔줌 (매 프레임마다 불러줘야 중력값을 유지할 수 있음)

	[SHOW HITGAUGE]
		[COUNT] 12		// 데미지를 받을 때 게이지를 나눠서 없어지는 표시를 할 개수 (생략시, 실제 HP와 데미지 기준으로 표시)
		[POS] 0 0		// 상대 좌표 (X, Y)
		[TIME] 0		// 게이지를 표시할 시간 제한
	[/SHOW HITGAUGE]

	[TELEPORT]					// 텔레포트를 합니다.
		[POS] 0 0 0				// 이동할 좌표. (중심축)
		//[USE MY DIRECTION]			// 좌표 기준 X축 이동을 자신이 바라보는 방향으로 할 것인지 결정. (기본은 타겟방향)
		//[USE MY BASEPOS]			// 상대 좌표 이동을 자신의 좌표 기준으로 할 것인지 지정 (기본은 타겟 좌표)
		//[NOT USE OBJECT DIRECTION]		// 방향 보정을 하지 않음
		//[USE MAP POS]				// 좌표이동을 맵 절대 좌표로 함.
		//[NOT USE OBJECT ZPOS]		// 기준 오브젝트의 Z 위치를 사용하지 않음
		//[MOVE ME]				// 자기가 그 좌표 기준으로 움직임
		//[MOVE TARGET]				// 타겟이 그 좌표 기준으로 움직임. (디폴트)
		[ALLOW FIXTURE]			// 고정형 몹도 텔레포트 허용		

		//mkjung 120518 add
		[USE EFFECT]
	[/TELEPORT]
	
	//mkjung 120511 modi.
	[DIM] `time1` [=] [GET TIME] [/DIM]
	[DIM] `position` [=] 0 [/DIM]
	[DIM] `count2` [=] 60 [-] `count1` [/DIM]
	[DIM] `count1` [=] `count1` [+] 1 [/DIM]

	[CHANGE ATTACKINFO]	`../AttackInfo/Attack2.atk`	// attackInfo파일을 바꿉니다.
	[CHANGE ATTACKINFO]	[DEFAULT]			// [DEFAULT ATTACK INFO]에서 지정한 기본 공격정보로 돌아감



	[SET SPEED]					// 속도 지정. 
		[X AXIS] 500				// X축 속도 (필수아님)
		[Y AXIS] 2000				// Y축 속도
		[Z AXIS] 300				// Z축 속도
		//[NOT USE DIRECTION]			// 방향이랑 관련 없을 경우. 절대방향은 오른쪽과 아래가 디폴트.
		[USE MY DIRECTION]			// 방향을 자신의 방향을 쓸 경우.
	[/SET SPEED]

	[SET ACCEL]					// 가속도 지정.  (현재사용하지 않고 있습니다. 2010.9.2)
		[X AXIS] 0				// X축 가속도
		[Y AXIS] 0				// Y축 가속도
		[USE MY DIRECTION]			// 방향을 자신의 방향을 쓸 경우.
	[/SET ACCEL]

	[PARTICLE] `../particle/sample.ptl` 0 0 0 		//파티클 파일의 상대 경로, 파티클 생성될 상대 좌표 (x,y,z)
	[TRIGGER] 1 [ON] (or [OFF] or [RESET])			// 트리거 ENABLE을 켜고 끄기. RESET은 실행숫자 리셋.
									//[CHANGE ACTION FILE] 로 액션을 바꾸고 다시 원래의 액션으로 돌아 올 경우 초기화되니 주의!
	[TRIGGER] [STAY] 1 [ON] // stay 액션의 1번 트리거가 켬
		  [MOVE] 0 [OFF] // move 액션의 0번 트리거가 끔
		  [SIT] 트리거번호 [ON] (or [OFF] or [RESET])	
		  [DOWN] 트리거번호 [ON] (or [OFF] or [RESET])	
		  [DAMAGE] 1 3 [RESET]	// 1번 damage 액션의 3번 트리거리셋
		  [ATTACK] 3 2 [RESET]	// 3번 attack 액션의 2번 트리거리셋
		  [CUSTOM] 액션번호 트리거번호 [ON] (or [OFF] or [RESET])	
		  [PROC] 트리거번호 [ON] (or [OFF] or [RESET])	

	[CHANGE FLOATING HEIGHT]	10	// 부유형 오브젝트 높이 변경	인자1:높이

	[RESTORE] [HP]  (or[MP] 100 [POINT](or [%])		// 회복 : 타겟이 몬스터나 캐릭터일 때만 동작.
	[DESTROY]						// 파괴된다. 뭐 조각이런거 안내고 그냥 사라짐.
	[DESTROY BY FORCE]					// [DESTROY]와 동일하나, 해당 오브젝트의 마스터가 아닌 경우에도 수행 가능
								// 잘못 사용하면 오동작을 일으킬 수 있으므로, 최대한 사용을 자제해야 하는 태그 (클라파트 문의 필요)

	[SEND DO BEHAVIOR] [CHECKUP OBJECT] 1						// 대상의 비해이비어를 시킴 (가운데 실행시킬 대상이 들어감)
	[ATTACKRECT] [RESET] (or [ON] or [OFF])			// 어택렉트를 켜거나 끄거나 리셋해줌

	//mkjung 120511 add.
	[SET SAVED TARGET] 0
	[MOVE TO TARGET] 500

	[SET HP] 1000						// HP를 강제로 지정해 준 숫자로 바꿔줌
	[SET DIRECTION] [LEFT] (or [RIGHT] or [TO TARGET] or [RANDOM] or [REVERSE] or [MY DIRECTION] or [MY OPPOSITE DIRECTION] or [MY CURRENT DIRECTION])	// 대상의 방향을 바꿔줌
	[CASTING] 5000 2					// 캐스팅 바가 뜬 후에 자동으로 지정된 비해이비어를 실행한다. 캐스팅 바 지속시간, 비해이비어 인덱스
	[ABS CASTING] 5000 2					// 액션이 중간에 바뀌어도 캐스팅은 계속됨, 캐스팅을 시전할 당시 액션의 비해이비어를 실행

	[CASTING EX]
		2000				// 캐스팅 시간
		3					// 캐스팅후 실행할 행위 인덱스 
		[NORMAL]			// 일반 캐스팅(액션이 바뀌면 캐스팅이 끊긴다)
		[DISPLAY TARGET] 	// (or [DISPLAY ME]) // 타겟에 캐스팅 게이지를 붙인다
			[DISPLAY SCREEN]	//화면 중앙 하단에 캐스팅바를 띄운다.
		[DO ME]				// 캐스팅 후 behavior 를 불러올 대상 오브젝트(이 경우 캐스팅후 나의 behavior 를 부른다)
	[/CASTING EX]
	
	[SET ACTION]	[STAND]			 [NOW] (or [END])
			[DAMAGE]   
				[DIRECTION] [LEFT]			//  or [RIGHT] or [RANDOM] or [REVERSE] or [MY DIRECTION] or [MY OPPOSITE DIRECTION]
				[HIT DELAY] 10
				[DAMAGE MOTION] 0 			// 데미지 ACT 파일 인덱스
				[HIT TYPE] [KNOCK]			//  or [SLASH] or [BURN] or [CUSTOM] or [MANA BURN]
				[RIGIDITY] 0				// 경직도
		 		[FORCE HIT STUN TIME] 0
				[KNOCK BACK TYPE] [NORMAL]	//  or [KNOCK BACK] or [SHORT KNOCK BACK] or [PIXEL WITHOUT DAMAGE TIME] or [NOT BACK]
		 		[KNOCK BACK PIXEL] 0
			[/DAMAGE]		
			 [HOLD]
			 [DOWN]	 ([DEFAULT], [LEFT], [RIGHT], [RANDOM],[MY DIRECTION],[MY OPPOSITE DIRECTION]) 숫자1 ([FORCE], [BOUNCE], [VALUE]) 숫자2, 숫자3
			 [SIT]
			 [DIE]
			 [ATTACK] INDEX
			 [CUSTOM] INDEX
			 [PATTERN] INDEX // mob 파일에 등록되어 있는 패턴 인덱스 실행
	[SET FRAME] 0 						// 액션의 프레임 강제이동. 
	[SAY SPEECH] `speech`					// 대사를 출력한다.
	[SAY SPEECH WITH POSITION]`speech` 10 20		// 대사를 출력한다. X좌표, Y좌표
	[SHAKING] 1 1000					// 지진의 파워, 지진이 지속될 시간
	[SHAKE INPUT] [ON] 					// [OFF] 도 사용 가능. 흔들기 입력을 띄울지 아닐지 여부.
	[FLIP HOLD ANIMATION] 					// 타겟이 홀드중일 때 홀드 애니메이션을 데미지 모션끼리 교체. 잡기에서만 씀.
	[APPEND HIT] 0 0 0 					// 공격렉트와 데미지 렉트의 충돌을 체크하지 않고 강제로 공격을 함. 즉. 해당 좌표에 있는 오브젝트는 아무 이유없이 HIT 됨.

	[SAVE POSITION]				// 현재 위치를 저장한다 [LOAD POSITION] 태그와 함께 쓰인다
	[SET POS FORCE] 				// 타겟의 위치를 강제 지정한다. 프레임단위로 사용. END가 없을 경우 한자리에 고정. END가 있을 경우 START->END사이를 이동.
		[X START] 0  					// X 시작점
		[X END] 0 					// X 끝점
		[Y START] 0 					// Y 시작점
		[Y END] 0 					// Y 끝점
		[Z START] 0 					// Z 시작점
		[Z END] 0 					// Z 끝점
		
		// 위처럼 쓸수 있고 [LOAD POSITION] 을 이용할 수도 있다.
		// 반드시 [SAVE POSITION] 을 하고 사용해야 된다.
		// [LASTATTACK POSITION] 는 마지막으로 때린 놈의 상대 좌표를 저장 
		// 두 태그는 숫자 하나당 태그 하나가가 1:1 로 매치된다. 주의할것
		[X START][LOAD POSITION]	혹은 	[LASTATTACK POSITION]
		[X END][LOAD POSITION] 혹은 [LASTATTACK POSITION]

		//[USE MY DIRECTION]	// 좌표 기준 X축 이동을 자신이 바라보는 방향으로 할 것인지 결정. (기본은 타겟방향)
		//[USE MY BASEPOS]	// 상대 좌표 이동을 자신의 좌표 기준으로 할 것인지 지정 (기본은 타겟 좌표)
		//[USE TARGET POS]	// 상대 좌표 이동을 타겟의 좌표 기준으로 한다. (디폴트. 안쓰면 이거. 명시하고 싶을경우는 사용해도 무방)
		//[NOT USE OBJECT DIRECTION] // 오브젝트의 방향을 참조하지 않음
		//[USE MAP POS]		// 좌표이동을 맵절대좌표로 함.
		//[MOVE UNIFORM]	// 목표좌표까지 선형으로 움직임
		//[MOVE ACCELATE]	// 목표좌표까지 가속하면서 움직임
		//[MOVE REDUCE]		// 목표좌표까지 감속하면서 움직임.
		//[MOVE ME]		// 자신의 좌표를 상대에 맞춘다. 반드시 [USE TARGET POS]를 사용하던가, [USE MY BASEPOS]를 사용하지 말것
		//[MOVE TARGET]		// 상대의 좌표를 자신에 맞춘다. 반드시 [USE MY BASEPOS]를 사용할 것. 없으면 이게 디폴트.
	[/SET POS FORCE]

	//메세지 전송
	[SEND MESSAGE]	[ATTACK_COMMAND] 0			//어택 인덱스
			[MOVE_COMMAND] 				//아직 미완성
			[ETC_COMMAND] 1	1 5000			//명령 인덱스, 타겟 지정(1 : 보내는 객체의 타겟, 0 : 받는 객체의 타겟), 명령 지속 시간
			[DIE_COMMAND] 0 //monster죽는 방식 1 : 라스트 액션을 하고 죽는다. 0: 라스트 액션을 하지 않고 죽는다

	//카테고리 제거
	//[REMOVE CATEGORY] 0 					//삭제할 카테고리 인덱스
	[REMOVE CATEGORY] [FIXTURE] 				//삭제할 카테고리 [FIXTURE]
	//[ADD CATEGORY] 24 					//삽입할 카테고리 인덱스 24 : fixture
	[ADD CATEGORY] [FIXTURE] 				//삽입할 카테고리 [FIXTURE]

	//상태 이상
	[ACTIVE STATUS] [blind] 100 20 3000 10 100		// 확률, 레벨, 지속시간, 시야(%), 스턱률 증가(+)
	[ACTIVE STATUS] [freeze] 100 20 3000		// 확률, 레벨, 지속시간
	[ACTIVE STATUS] [stun] 100 20 3000			// 확률, 레벨, 지속시간
	[ACTIVE STATUS] [slow] 100 20 10000 50 50		// 확률, 레벨, 지속시간, 이속(%), 공속(%)
	[ACTIVE STATUS] [haste] 100 20 3000 50 50		// 확률, 레벨, 지속시간, 이속(%), 공속(%)
	[ACTIVE STATUS] [stone] 100 20 3000 50		// 확률, 레벨, 지속시간, 데미지값(+)
	[ACTIVE STATUS] [sleep] 100 20 3000		// 확률, 레벨, 지속시간
	[ACTIVE STATUS] [confuse] 100 20 3000 1		// 확률, 레벨, 지속시간, 1이면 몬스터가 혼란에 걸렸을때, 같은편을 공격하게 된다.
	[ACTIVE STATUS] [hold] 100 20 3000			// 확률, 레벨, 지속시간
	//mkjung 120704 [weakness]-->[element]로 변경 
	//[ACTIVE STATUS] [weakness] 100 20 50		// 확률, 레벨, 데미지 감소 비율(남아있는 HP를 기준으로 한다)
	[ACTIVE STATUS] [element] 100 20 50		// 확률, 레벨, 데미지 감소 비율(남아있는 HP를 기준으로 한다)
	[ACTIVE STATUS] [armor break] 100 20 10000 15	// 확률, 레벨, 지속시간, 내구도 소모 체크 횟수
	[ACTIVE STATUS] [weapon break] 100 20 10000 15	// 확률, 레벨, 지속시간, 내구도 소모 체크 횟수
	[ACTIVE STATUS] [poison] 100 10 20000 1000 		// 확률, 레벨, 지속시간, 데미지
	[ACTIVE STATUS] [lightning] 100 10 2000 100 		// 확률, 레벨, 지속시간, 데미지
	[ACTIVE STATUS] [bleeding] 100 10 5000 10 		// 확률, 레벨, 지속시간, 데미지
	[ACTIVE STATUS] [burn] 100 10 20000 1000 10 1 3000	// 확률, 레벨, 지속시간, 데미지, 주변데미지, 주변데미지 옵션(1이면 적군에게만 주변데미지가 적용된다), 주변데미지 적용간격(시간)
	[ACTIVE STATUS] [bless] 100 10 5000 10 10 10 10	// 확률, 레벨, 지속시간, 힘,체력,지능,정신력
	[ACTIVE STATUS] [curse] 100 10 5000 20 20 20 20	// 확률, 레벨, 지속시간, 힘,체력,지능,정신력

	//대상의 스테이터스 변경
	[APPENDAGE] 5000				// 시간(0이면 무한)
		[physical attack] [+] 100.0 			// 힘 증감방법 강도
		[magical attack] [%] 100.0			// 지능
		[physical defense] [%] 100.0			// 체력
		[magical defense] [%] 100.0			// 정신력
		[equipment physical attack] [%] 100.0		// 물리공격
		[equipment physical defense] [%] 100.0		// 물리방어
		[jump power] [%] 100.0				// 점프력 
		[attack speed] [%] 100.0			// 공격속도
		[move speed] [%] 100.0				// 이동속도
		[cast speed] [%] 100.0				// 캐스팅 속도
		[hp max] [%] 100.0				// HP
		[hp regen rate] [%] 100.0			// HP회복율
		[magical critical hit rate] [%] 100.0		// 마법공격 크리티컬 확률
		[physical critical hit rate] [%] 100.0		// 물리공격 크리티컬 확률
		[physical back attack critical rate] [%] 100.0	// 물리 백어택 크리티컬 확률
		[magical back attack critical rate] [%] 100.0	// 마법 백어택 크리티컬 확률
		[fire element] [%] 100.0			// 화속성 
		[water element] [%] 100.0			// 수속성
		[dark element] [%] 100.0			// 암속성
		[light element] [+] 100.0			// 명속성
		[stuck] [%] 100.0				// 스턱률(맞을시)
		[good hit] [%] 100.0				// 스턱률(가격시)
		[mp regen rate] [%] 100.0			// MP회복율
		[hit recovery] [%] 100.0			// 히트 리커버리
		[equipment magical attack] [%] 100.0		// 마법공격
		[equipment magical defense] [%] 100.0		// 마법방어
		[all active status resistance] [%] 100.0	// 모든 상태이상 저항
		[all element] [%] 100.0				// 모든 속성 저항

		[fire element attack]  [+] 100.0		// 화속성 강화
		[water element attack]  [+] 100.0		// 수속성 강화
		[dark element attack]  [+] 100.0		// 암속성 강화
		[light element attack]  [+] 100.0		// 명속성 강화
		[all element attack]  [+] 100.0			// 모든속성 강화
		[separate physical attack]  [+] 100.0	// 독립 데미지 물리 공격력 
		[separate magical attack]  [+] 100.0	// 독립 데미지 마법 공격력
		[separate all attack]  [+] 100.0		// 독립 데미지 모든 공격력(물리, 마법)
		[antievil]  [+] 100.0					// 실제 항마력 수치
		[physical absolute damage]  [+] 100.0	// 물리 절대 데미지 or 물리 방무뎀
		[village moving speed]  [+] 100.0		// 마을 이속
	[/APPENDAGE]

	[MASTER APPENDAGE] 0 300 [ENEMY TEAM]  			//순서 대로 - 시간(0으로하면 계속), 범위, 우리편에만 적용 되어야 하면 [MY TEAM], 
								//적에게만 적용되어야 하면[ENEMY TEAM]
		[physical attack] [+] 100.0 			// 힘 증감방법 강도
		[magical attack] [%] 100.0			// 지능
		[physical defense] [%] 100.0			// 체력
		[magical defense] [%] 100.0			// 정신력
		[equipment physical attack] [%] 100.0		// 물리공격
		[equipment physical defense] [%] 100.0		// 물리방어
		[jump power] [%] 100.0				// 점프력 
		[attack speed] [%] 100.0			// 공격속도
		[move speed] [%] 100.0				// 이동속도
		[cast speed] [%] 100.0				// 캐스팅 속도
		[hp max] [%] 100.0				// HP
		[hp regen rate] [%] 100.0			// HP회복율
		[magical critical hit rate] [%] 100.0		// 마법공격 크리티컬 확률
		[physical critical hit rate] [%] 100.0		// 물리공격 크리티컬 확률
		[physical back attack critical rate] [%] 100.0	// 물리 백어택 크리티컬 확률
		[magical back attack critical rate] [%] 100.0	// 마법 백어택 크리티컬 확률
		[fire element] [%] 100.0			// 화속성 
		[water element] [%] 100.0			// 수속성
		[dark element] [%] 100.0			// 암속성
		[light element] [+] 100.0			// 명속성
		[stuck] [%] 100.0				// 스턱률
		[mp regen rate] [%] 100.0			// MP회복율
		[hit recovery] [%] 100.0			// 히트 리커버리
		[equipment magical attack] [%] 100.0		// 마법공격
		[equipment magical defense] [%] 100.0		// 마법방어
		[all active status resistance] [%] 100.0	// 모든 상태이상 저항
		[all element] [%] 100.0				// 모든 속성 저항
		
		[fire element attack]  [+] 100.0		// 화속성 강화
		[water element attack]  [+] 100.0		// 수속성 강화
		[dark element attack]  [+] 100.0		// 암속성 강화
		[light element attack]  [+] 100.0		// 명속성 강화
		[all element attack]  [+] 100.0			// 모든속성 강화
		[separate physical attack]  [+] 100.0	// 독립 데미지 물리 공격력 
		[separate magical attack]  [+] 100.0	// 독립 데미지 마법 공격력
		[separate all attack]  [+] 100.0		// 독립 데미지 모든 공격력(물리, 마법)
		[antievil]  [+] 100.0					// 실제 항마력 수치
		[physical absolute damage]  [+] 100.0	// 물리 절대 데미지 or 물리 방무뎀
		[village moving speed]  [+] 100.0		// 마을 이속
	[/MASTER APPENDAGE]

	//mkjung 120511 add. 
	[DELETE APPENDAGE] 0
		[equipment physical defense] [%] 5000.0		// 물리방어
		[equipment magical defense] [%] 5000.0		// 마법방어
		[stuck] [%] 30.0				// 스턱률
	[/DELETE APPENDAGE]


	[SET COLOR] 255 255 255 				//RGB칼라값

	[ICE APPENDAGE] 1000 1000 1000    			//데미지, 범위, 데미지간격
	[CURSE APPENDAGE] 1000 1000 1000 1000 			//데미지, 범위, 데미지간격, 커스 간격
	[MIND CONTROL APPENDAGE] 10 1000 1000				//레벨, 일정방향으로 이동하는 시간, 지속시간
	[TELEKINESIS APPENDAGE] 25000 1000 30 50 80 100 4000	// 어펜디지 유지시간(ms), 조종을 잘못했을때 버티는 시간(ms), 양력 변동치0~3(픽셀/s^2), 땅바닥에 떨어질때 데미지
	
	// 0. 인식 오브젝트 인덱스
	// 1. 오브젝트 피격시 올라갈 게이지수
	// 2. 5칸 이상 찼을때 다음 타격시 들어가는 데미지
	// 3. 감염 게이지가 1칸이 빠질 시간
	// 4. 어펜디지 지속 시간(무한대로 하고 싶으면 숫자를 매우크게 주세요)
	[INFECTION APPENDAGE] 2123 	1 200 4000 10000

	[CHANGE DIRECTION BY TARGET] 0    			//몬스터가 타겟을 바라 볼지 아닐지 결정하는 플레그 (0 : 이면 타겟을 처음 생성시 바라본 방향을 유지
	[DISEASE APPENDAGE] 30000 300 100 1000 // 질병 지속 시간, 질병 데미지, 질병 감염 범위, 질병노출 x초후 감염
	[IS DIRECTION TO MOVE] 1 				//1이면 이동하는 방향을 보고 이동, 0이면 타겟을 보면서 이동(default는 0)
													   (1 : 이면 타겟을 바라봄)
	[CHANGE ACTION FILE] [STAY] `액션 파일 이름`
			[DAMAGE] INDEX `액션 파일 이름`	// 데미지 인덱스는 0번 1번 만 사용			 
			[HOLD] `액션 파일 이름`
			[DOWN] `액션 파일 이름`
			[SIT] `액션 파일 이름`
			[DIE] `액션 파일 이름`
			[ATTACK] INDEX `액션 파일 이름`	// 공격의 갯수가 넘어가면 행동을 보장못함.
			[CUSTOM] INDEX `액션 파일 이름`	// 커스텀 액션의 갯수를 넘어가는 INDEX를 넣으면 행동을 보장 못함.

			[MOVE] `액션 파일 이름`
			[LAST] `액션 파일 이름`
			[MOVEBACK] `액션 파일 이름`
			[DASH] `액션 파일 이름`
			[DASHATTACK] `액션 파일 이름`
			[JUMP] `액션 파일 이름`
			[JUMPATTACK] `액션 파일 이름`

//	[ADD LAYER ANIMATION] `` 100 				// 몇번 레이어에 그 경로의 애니메이션을 생성해서 붙인다. (미구현)
				     				// 근데 언제 없애지? 
//	[REMOVE ANIMATION] [SUB] 0 				// (미구현)
//	[REMOVE ANIMATION] [LAYER] 0 				// (미구현)
//	[CREATE ANIMATION] `` x,y  				// (미구현)
	[SET OVERTURN]						// 홀드시킨 타겟의 오버턴 애니메이션으로 바꿔줌.
	[SET HOLD DAMAGEANI] INDEX				// 홀드시킨 타겟의 데미지 애니메이션으로 바꿔줌 1번이나 0번 사용.
	[SET HOLD DOWNANI]					// 홀드시킨 타겟의 다운 애니메이션으로 바꿔줌.

	[WIND APPENDAGE] 5.0 0.0 2 0 5000   X축 이동 속도(소수), Y축 이동 속도(소수), X축 이동 방향, Y축 이동방향, 시간
	X축 이동 방향 - 0 : 이동안함, 1 : 오른쪽, 2 : 왼쪽
	Y축 이동방향 - 0 : 이동안함, 1 : 위쪽, 2 : 아래쪽

	[PULL APPENDAGE] 		// 타겟에 캐릭터 팀을 끌어당긴다
	//2.0 0.0 2000  //x축 강도, //y축 강도, //시간
	// 주의!! 시간에 음수값을 넣으면 속도 WIND 모드로 된다. 속도모드는 반드시 6 이상을 설정해야한다
	// 예 [PULL APPENDAGE] 6.1 6.1 -200
	
	// 주의!! : 태그 순서를 지켜주셔야 합니다!
	[PULL APPENDAGE EX] 	// 타겟에 캐릭터 팀을 끌어당긴다
		[SPEED] 2.0 0.0		// x축 강도, y축 강도
		[VALIDTIME] 2000
		[USE TARGET] 1		// 끌어당기는 원점을 타겟으로 할 것인가(1: 타겟, 0: 액션 부모)
		[OFFSET POS] 0 0 	// 오프셋 좌표(쓰지 않으면 기본 0)
		[MIN DISTANCE] 	30	// 끌어오기 위한 최소 범위(쓰지 않으면 기본 30)
	[/PULL APPENDAGE EX]

	[COLOR CHANGE EFFECT]
		[EFFECT BLUE START] 255	// 청색 시작값 (RED GREEN BLUE ALPHA ) 있음. 데이타 안집어넣으면 0
		[EFFECT BLUE END]	//mkjung 120516 add
		[EFFECT RED START]	//mkjung 120516 add
		[EFFECT RED END] 255	// 적색 끝값 (START 랑 END) 있음
		[EFFECT GREEN START]	//mkjung 120516 add
		[EFFECT GREEN END]	//mkjung 120516 add
		[EFFECT ALPHA START]	//mkjung 120516 add
		[EFFECT ALPHA END] 255	// 알파 끝값
		[CHANGE SIZE START] 100	// 100%  시작 확대 축소 비율값 % 임 지정안하면 이전에 설정한값에서 시작됨.
		[CHANGE SIZE END] 100	// 100%  최종 확대축소 비율값 % 임
		[CHANGE TIME] 1000	// 바뀌는 시간. 1초에 걸쳐 바뀜 /1000 초임.
		[LIFE TIME] 2000	// 붙어있을 시간. 지정 안하면 CHANGE TIME을 따라가고 0으로 지정하면 몬스터가 없어질 때까지 (혹은 새로 컬러 체인지 이펙트를 할 때까지) 계속 붙어있음.
	[/COLOR CHANGE EFFECT]

	[HP APPENDAGE]
		5000 //시간
		300 //범위
		[ALL] //대상	   [MY TEAM], [ENEMY TEAM], [ALL]
		[%]   //적용 방법  [%], [+]
		[HP MAX] //기준 hp [HP MAX], [HP] 두가지
		-10	//적용 양   //데미지 주고 싶으면 -로 힐해주고 싶으면 +로
		500	//적용 텀
	[/HP APPENDAGE]

	[FLASH SCREEN] 1000 2000 1000 150 0 0 0  //원하는 색으로 변경되는 시간, 변경이 유지될 시간, 다시 원상태로 돌아가는 시간
					   최대 알파값(투명도), 변경하고 싶은 색의 red, green, blue값

	[FLASH SCREEN EX] 1000 2000 1000 150 0 0 0 0 //원하는 색으로 변경되는 시간, 변경이 유지될 시간, 다시 원상태로 돌아가는 시간
					   최대 알파값(투명도), 변경하고 싶은 색의 red, green, blue값, 변경이 표시되는 레이어 <0(접경), 1(근경), 2(중경), 3(원경)>

	[SET GRABABLE] 1  //1이면 잡히는 몬스터, 0이면 안잡히는 몬스터 

	//데미지 체크 시작 (action파일)
	[SET DAMAGE CHECK] 1  1000//1이면 데미지 체크시작, 0이면 데미지 체크 중지 //체크 시간 설정

	//레이어 추가 제거(action파일)
	[ADD LAYER] 100 0 0 0    //레이어의 인덱스값, [etc motion]에 있는 애니의 인덱스값, x좌표, y좌표
	[REMOVE LAYER] 0 //[etc motion]에 있는 애니의 인덱스값

	[SET OUTLINE] 1 255 255 255 2 //1이면 그리기0이면 지우기, Red, green, blue, depth기본값은 2

	[SET PASSTYPE]  [pass all] 	// 패스타입을 바꿈. 패시브오브젝트만 됩니다. 패시브오브젝트 스크립트의 [pass type]과 같습니다. 모두 지나다닐수 있음
			[pass only float type] // 부유형만 지나다닐수 있음
			[do not pass] // 못지나감
			[pass only red team] // 레드팀만 가능 (카오스용)
			[pass only blue team] // 블루팀만 가능 (카오스용)

	[SET WIDTH] %d %d // xWidth, yWidth 순 . width를 지정해줄수 있습니다. 몬스터 패시브 오브젝트에 모두 사용할 수 있습니다. 몬스터에 width가 없어지면 맵밖을 뚫고 나갈수 있으니 사용시 주의

	[SET RANDOM TARGET] //타겟을 랜덤으로 변경

	[SET PARTY TARGET] 1 1 // 파티의 인덱스 번호(0 ~ 3), 없을 경우 다음자리의 캐릭터를 타겟으로 할지 1이면 변경, 0이면 변경 안함
	//타겟을 특정 파티원으로 변경

	[HELLOFHEAL APPENDAGE] 200 1000 // 범위 안에서 회복했을 때 데미지를 준다. DISTANCE로 체크해서 사용해야함
					// 배수(200이면 2배) , 적용 텀 (1000이면 1초)

	[THORNS APPENDAGE] 3000 70 6 2000 99 4 600000 //분노 레벨의 증감을 결정하는 시간 간격, 화염 데미지 반사률 (%), 
							     //분노 폭탄이 터지기 위한 연속 타격 횟수, 분노 폭탄의 타격횟수 감소 간격, 
							     //분노 폭탄의 레벨, 분노 레벨이 떨어지기 위한 타격 수, 지속 시간

	[MUCU LIMIT CONTROL] 10000 //침묵, 스킬 사용 제한, 뒤에 시간을 써주면 해당 시간 동안 스킬사용이 불가능해진다.

	[JUMP TO TARGET] -1 500 -1500 1.2 1000 600 0 1 2 // 타겟을 향해 점프합니다. 인자에 따라 점프 궤도를 조정할 수 있습니다. 
							         // 속도, 점프 높이, 커스텀중력, 타겟과 거리 유지 비율, 최대X, 최대Y, 상승시 프레임, 하강시 프레임, 착지시 프레임
							         // (2009/09/28 이원만, 기능 추가 및 수정)
								 // 주의:반드시 .mob파일에 [jump action]이 등록되어 있어야 합니다!	

	[CHANGE MY TARGET] 		// 비헤이비어 주체로 타겟을 변경시켜준다. 예를 들어 [DO BEHAVIOR] [LAST ATTACKER] 로 비헤이비어를 불러왔다면 
				 		// 마지막으로 때린놈을 타겟으로 설정해주는 것이다.
	[TAKE IT] 10086 -1 -1 -1 -1 // 비헤이비어 주체를 먹는다.(5개의 인덱스를 지정해야함 없으면 -1 로 넣어줌)
	[THROW ITS OWN]  			// 먹은 오브젝트를 뱉는다.

	[SET USE HOMING] 0 			// 0. 허밍 사용 안 함, 1. 허밍 사용 함 

	[BOUNCE FROM THE WALL] 1 30 	// 0. 위아래 벽 변사, 1. 좌우 벽 반사, 반사각(각도는 수평선 기준으로 반시계 방향)
	[SET VISIBLITY] 1 			// 0 : 보이지 않게 함, 1 : 보이게 함. 
								// 주의!! : 순수하게 안보이게 하고 싶을때만 사용하세요! 
								// 보이지 않는 상태가 되면 액션 체크같은 것들이 제대로 동작을
								// 하지 않습니다!!! 

	[MAKE VIBRATION] 0.2 6.0 `CHAR1_VIBRATION` 	// 진동 지속 시간(초), 진폭(픽셀), 진동 아이디 
	[CHARACTER COOLTIME RESET] 0 //0이면 전체 스킬, 1이면 무큐기만, 2면 각성기만

	[SET INTERPOLATION] 0  //0이면 인터폴레이션 중지, 1이면 인터폴레이션 사용
	[DEBUFF]			//타겟의 좋은 버프를 제거
	[DEBUFF GHOST]		//고스트 계열의 스킬 잡아 먹는다
	[REFLECTBUFF APPENDAGE]	1000 // 상태 이상 반사 어펜디지를 걸어준다, 지속 시간(ms)
	[ZOOM IT] 2000 150		// 해당 TARGET 을 줌 한다,  줌 지속 시간(밀리초), 확대 비율 (예: 200% 일 경우 2배)

	[AURA] 1  //오라머신을 사용한다 1. 인덱스
	[CENTER MSG] `중앙에 출력할 메시지` 	5000 // 중앙에 출력할 메시지, 출력할 시간
	 
             // 총 시간, 데미지 반사%, 회복%, 대상몹 인덱스, 초기 데미지를 주는 값(사용 안함), 데미지를 주는 시간 간격, 
	 // 데미지 증가 미지항, 데미지 증가 미지항2(임계점을 넘었을 때), 어펜디지 이전 시간 간격, 어펜디지 이전 범위
       	[DARKSCALP APPENDAGE] 15000 20 500 56721 0 1000 2 3 10000 300
	[DESOLATEPAIN APPENDAGE] 3000 3000 60000 200 60 40 20 61232  // 유효시간, 체크 텀, 절대 데미지, 데미지를 나눌 거리, 2인팟일때 %, 3인팟일때 %, 4인팟일때 %, 데미지 줄때 소환할 폭파 인덱스

	[SUB ANI FLAG] 0 1 //서브애니 그려 줄지 설정 [SUB ANI FLAG] 애니 인덱스, 1이면 사용 0이면 사용안함 (초기값은 사용으로 처리)
	[VIRTUALHP APPENDAGE]	10 50 10 1		// 가상 HP 제거위한 히트수, 가상 HP 제거위한 데미지, 가상 HP 제거 조건(0:히트수, 1:데미지, 2: 둘다 만족), 가상 HP 동작시 히트당 깍이는 HP
	[REMOVE VIRTUALHP]				// 가상 HP 제거
	[TERROR APPENDAGE] 60 5000 10000		// 레벨, 굳는데 걸리는 시간, 지속시간
	[SHAKING GAGE] 50000 10000 5 10 500 		// 흔들기 액션 : 방향키를 흔들어서 게이지가 차지 않도록 버티는 엑션
							// 상태유지시간, 가만히 놔뒀을때 게이지가 꽉차는 시간, 1초당 흔들어야 하는 횟수, 
							// 흔들기에 성공할 경우 깍이는 게이지의 퍼센트,  게이지가 꽉차서 실패했을 경우 받는 데미지
	[CHANGE TEAM] 1 5000 100			// 배신 : 바꿀 팀 번호 (1~4), 바뀔 시간, 바꿀 HP의 비율(%)
	[DEFAULT TEAM]					// 팀을 원래대로 돌린다.
	[CHANGE SIGHT]					// 시야교환 : 파티원들간에 임의로 시야를 교환한다.
	[DEFAULT SIGHT]					// 시야를 원래대로 돌린다.
	[RHYTHM ACTION] 4 5000 1021			// 리듬액션  총 입력 커맨드 수/ 총 입력 가능한 시간 / 생성되는 패시브 오브젝트 인덱스
		[PATTERN] [RIGHT] 1000 0		// 커맨드 패턴 방향, 입력대기시간, 오브젝트의 프레임번호
		[PATTERN] [UP] 500 0
		[PATTERN] [LEFT] 800 0
		[PATTERN] [DOWN] 1200 0
		[IF SUCCESS] 1 0 0 0			// 성공시 생성하는 오브젝트 인덱스, 대상 기준으로의 X,Y,Z 좌표
		[IF FAIL] 2 0 0 10			// 실패시 생성하는 오브젝트 인덱스, 대상 기준으로의 X,Y,Z 좌표
	[/RHYTHM ACTION]
	[SET DAMAGE BOX][OFF]						// 투명상태이므로 데미지 박스를 끈다
	[ANGER APPENDAGE]	1 10000 3000 2 20 50000	// 인식 레이어인덱스, 5칸 이상 찼을때 입을 데미지, 감염게이지가 1칸이 빠질시간, 피격시 올라갈 칸수, 알파 감소량, 어펜디지 지속시간
	[SET WHOLE ALPHA]					150		// 타겟의 알파값을 변경한다.
	[SET WHOLE DAMAGETYPE]  0 					// 데미지 타입을 설정합니다(0 보통, 1. 슈퍼아머, 2. 무적)
	[ATTACKABLEAREA APPENDAGE] 0 200 1000 -1 0			// 공격가능 영역 어펜디지, 모드(0. 근거리 타격모드, 1. 원거리 타격모드), 기준거리, 이미지출력유효거리, 반사데미지% (-1 을 입력하면 원킬), 지속시간(0을 입력하면 무한)
	[REFRESH MOVEINFO]					// 이동 정보를 갱신함
	[DESPAIR APPENDAGE] 500 5000 123 600 50			// 서로 타격해야할 데미지, 서로 타격가능한 시간, 제거 실패시 생성되는 오브젝트, 제거 실패시 폭탄 데미지, 제거 실패시 입는 데미지(%)
	[CHANGE DISGUISER] 63500 10000				// 변신할 몬스터의 인덱스 (미리 소스상에 등록되어있어야 한다), 변신하는 시간

	[REMOVE ACTIVE STATUS] `ACTIVE STATUS 아이디` 	// ID 는 클라개발자에게 문의하세요!
	[REMOVE APPENDAGE][어펜디지ID] 			// ID 는 클라개발자에게 문의하세요!
	[SET RESPAWN POS] 100 200				// 부활할 위치를 정해줄수 있다 x, y (-1 을 넣어줄 경우 초기화 됨)
	[SET CASTING GAUGEPOS] 100 0 100		// 캐스팅 게이지 위치를 정해줄 수 있다 (기준 오브젝트 위치)
	[CHANGE RIDABLESKILL PATTERN] 1			// 변신 몹의 스킬 패턴을 바꿔준다, 패턴 인덱스
	[RESTART COOLTIME]						// 현재 액션의 쿨타임을 다시 시작한다

	[NAME HIDE ON] 			// 몬스터, APC의 이름을 가려준다.
	[NAME HIDE OFF]			// 몬스터, APC의 이름을 표시한다.
	
	[RESTORE TARGET]			// 초기 타겟으로 변경(가던길 감)
	
	//피격시 화면색이 변하고 일정 피격 횟수를 넘길 경우 
	//그 대상 주변에 애니메이션을 뿌려주고 지정한 수치만큼의 데미지를 주는 어펜디지
	//`*.ani파일경로`, 애니좌표x, 애니좌표y, red, green, blue, 피격시알파감소값, 피격횟수, 최종피격후주는데미지, 어펜디지발동체력(최소), 어펜디지발동체력(최대)
	[HIT APPENDAGE]	`Common/CommonEffect/Animation/Blast1.ani` 0 100 0 0 0 50 5 100 0 50
	[CHANGE AI][NORMAL] 2 `aaa2.ai`		// AI 를 원하는 파일로 변경해준다, [AI 난이도], 바꿀인덱스, 대체할 AI 파일 경로
	[CHANGE AI] [NORMAL] 2 `Action2.ai`		// AI 를 원하는 파일로 변경해준다, [AI 난이도], 바꿀인덱스, 대체할 AI 파일 경로
	[CHANGE AI] [EXPERT] 2 `Action2.ai`
	[CHANGE AI] [MASTER] 2 `Action2.ai`
	[CHANGE AI] [KING] 2 `Action2.ai`
	[CHANGE AI] [HERO] 2 `Action2.ai`

	[SET SAVED OBJECT] 0 			// TARGET을 트리거의 [SAVE TARGET OBJECT]에서 저장해둔 오브젝트로 설정한다, 저장된 오브젝트 인덱스
	[SET SYMBOL] 1					// 타겟 오브젝트에 심볼을 설정한다. 	
	
	// 캐스팅 차는 시간, 히트텀, 히트시 줄어드는 게이지 정도 (0-100%), 아웃라인색 R, G, B, 때릴 수 있을때 아웃라인색 R, G, B, 최대 아웃라인 굵기, 공격력 증가, 공속 증가, 이속 증가
	// 줄어드는 속도(0을 입력할 경우 확 줄어듬)
	[DAMAGE APPENDAGE] 10000 1000 10 100 100 100 255 255 255 5 100 100 100 250
	
		
	[RESOLUTION APPENDAGE] 
		2 		// 오브젝트 숫자
		221 	// 오브젝트 인덱스
		10 		// x
		10 		// y
		30 		// z
		221 	// 오브젝트 인덱스
		-10 	// x
		50 		// y
		30 		// z
		20 		// RPM
		50 		// RPM 최대 
		500		// RPM 변화시간0 
		500		// RPM 회복시간 0 
		10 		// HP 1% 감소할때 증가하는 RPM 량
		20 		// MIN 반지름
		500		// MAX 반지름 
		250		// 거리보정기준인자(예 : 100 을 넣으면 거리가 100일때 100% RPM, 1000일때 10% RPM) 
		0.5f	// 반지름변화 민감도 
	//대상을 직선으로 이동시키는 태그. 각 옵션 지정 순서 관계없음.
	[STRAIGHT MOVE]
		[AXIS] [X]		//직선이동시킬 좌표축 [X],[Y],[Z] 중 택 1
		[MOVING MOTION] [JUMP]	//이동 중에 취할 모션.[STAND],[JUMP],[DAMAGE],[SIT],[OVERTURN],[DOWN] 중 택 1
		[RELEASE MOTION]	//이동이 끝난 직후에 취할 모션. 옵션은 [MOVING MOTION]과 동일.
		
		//이동하는 시간과 거리를 지정해줄 수 있다.
		//[TIME]만 지정할 경우 : 해당 시간동안 "등가속"운동
		//[DISTANCE]만 지정할 경우 : 해당 거리 만큼 "등가속"운동
		//둘 다 지정할 경우 : 해당 시간동안 해당 거리까지 "등속"운동
		[TIME] 3000		//이동시킬 시간.ms 단위.
		[DISTANCE] 1000		//이동시킬 거리.pixel 단위. 음수 지정 가능.
		
		[DAMAGE HP] 50		//이동 후 데미지를 준다. %단위.
		
		//이동 후 되돌아올 좌표. 미지정시 돌아오지 않고 이동한 곳에 그대로 있는다.
		[RETURN XPOS] 100	//x좌표
		[RETUNN YPOS] 200	//y좌표
		[RETURN ZPOS] 300	//z좌표
		
		[ACCELERATE] 100	//이동시 가속도를 지정해준다.[TIME]과[DISTANCE]를 동시에 지정해줬을 경우에는 등속운동을 하므로 의미없음.
	[/STRAIGHT MOVE] 

	[MOVE APPENDAGE] 200 500 1 20000 -1   //몇초동안 움직이지 않으면 데미지를 줄것인가, HP가 감소되는 시간, 감소되는 HP%, 어펜디지 지속시간, 대상에게 생성되는 패시브 인덱스
	[FREEZE APPENDAGE] 1 500 1 20000 -1   //0-모든 움직임 제한 1-점프는 허용, HP가 감소되는 시간, 감소되는 HP%, 어펜디지 지속시간, 대상에게 생성되는 패시브 인덱스
	[TRAP APPENDAGE] 			// 대상의 움직임을 구속하여 발동시킨 오브젝트가 소멸될때까지 움직이지 못하게 한다

	[RANDOM GENERATE PASSIVE OBJECT]   // 특정 영역안에 패시브 오브젝트를 랜덤으로 생성하는 기능
		[GENERATE AREA] -100 100 -100 100 0 0	// 패시브 오브젝트가 생성되는 에어리어 (x좌표시작, x좌표끝, y좌표시작, y좌표끝, z좌표시작, y좌표끝)
		[CREATE FREQUENCE] 0 500			// 생성빈도수 (타입, 시간)
				     1 30000			// 0 : 규칙적으로 시간마다 오브젝트를 1개씩 생성한다.
								 // 1:시간을 종료시점으로 랜덤 타이밍으로 오브젝트를 생성한다. 
		[PASSIVE OBJECT INDEX]			//생성될 오브젝트 리스트 (번호, 개수) 
			10334 100
			10335 30
			10336 20
		[/PASSIVE OBJECT INDEX]
		[USE TARGET X POS]		// 타켓의 X좌표에 생성 AREA를 동기화할것인가?
		[USE TARGET Y POS]		// 타켓의 Y좌표에 생성 AREA를 동기화할것인가?
		[USE TARGET Z POS]		// 타켓의 Z좌표에 생성 AREA를 동기화할것인가?
	[/RANDOM GENERATE PASSIVE OBJECT]

	[EXCHANGE HP RATE] 			// 타겟과 내 HP 비율을 맞바꾼다. 타겟이 여럿일 경우 피가 가장 큰 타겟의 것을 가져온다.

	[MOVE PATTERN]				// 대상을 특정 지점들을 경유 하거나 
		[TYPE] 0
		[VELOCITY] 300
		[STAY TIME] 1000
		[AREA] 100 0 0 800 400 0
	[/MOVE PATTERN]

	[MOVE PATTERN]				// 대상을 특점 지점들을 경유하거나 배회하는 패턴 태그
		[TYPE] 0				// 0, 1 : [POS] 태그로 입력한 점들을 따라 직선(0), 곡선(1) 이동한다. 2,3 : [AREA] 태그로 입력한 영역을 직선(2), 곡선(3) 이동한다.
		[LOOP] 1				// 입력한 점들을 루프를 돌것인가?
		[VELOCITY] 400			// 이동 속도, (곡선 이동시에는 평균 속도)
		[STAY TIME] 1000			// 한 점을 이동한 후에 거기서 머무르는 시간
		[AREA] 100 0 0 800 400 0		// 이동 가능한 영역
		[POS] 30 50 20			// 이동할 점들 
		[POS] 440 40 40
		[POS] 230 150 60
		[POS] 530 270 60			// *********** [주의] : 몬스터 이동 destination.ai 를 -1 로 설정해주세요 ***********************
		[POS] 30 50 20
		[MIN MOVE DISTANCE]		// 랜덤으로 이동할 시 한번 이동에 최소로 이동할 거리
	[/MOVE PATTERN]

	[MOVE PATTERN OFF]				//[MOVE PATTERN] 태그를 종료한다.

	[SUFFOCATION APPENDAGE]			// 질식 어펜디지
		[LEVEL] 70			// 레벨
		[APPEND DELAY TIME] 10000	// 데미지 입기 시작하기 전에 딜레이 줄 타임 
		[FREQUENCY TIME] 1000		// 데미지 입는 시간 간격
		[DAMAGE] 100			// 데미지
	[/SUFFOCATION APPENDAGE]

	[GUARD APPENDAGE]
		[DAMAGE]
			[PHYSICAL] 25.0 //물뎀 방어 비율(백분율)
			[MAGICAL] 25.0  //마뎀 방어 비율(백분율)
		[/DAMAGE]
		[TIME] 1000			//어펜디지 걸리는 시간(0:무한대)
		[KNOCK BACK] 1000	//밀리는 값
		[BACK ATTACK] 1		//백어택시 적용 여부 (0:미적용 1:적용)
	[/GUARD APPENDAGE]
	//mkjung 120514 add.
	[SET TEAM] 1000

	//mkjung 120514 add.
	[CUT SCENE]
		[FLIP TYPE]   	  1		// 0 : 없음 1 : 캐릭터 방향에 따라 2 : 캐릭터 위치에 따라 
		[START POSITION]    -400 600		// 시작 x,y좌표
		[ANI FILE]      `Monster/NewMonsters/dimensiongate/blackearth/michaela/animation/cutscene.ani`
		[MOVE DIR]
			  -5 600 500	// 정지할 위치 x,y , 스피드 (스피드 = 1/10 초당 이동거리
			   7 600 50	// 정지할 위치 x,y , 스피드 (스피드 = 1/10 초당 이동거리
			  -5 600 50	// 정지할 위치 x,y , 스피드 (스피드 = 1/10 초당 이동거리
			  -5 600 800	// 정지,정지할 시간
			   7 600 50	// 정지할 위치 x,y , 스피드 (스피드 = 1/10 초당 이동거리
			-400 600 500	// 정지할 위치 x,y , 스피드
			-400 600 2000	// 정지할 위치 x,y , 스피드
		[/MOVE DIR]
	[/CUT SCENE]

	//mkjung 120516 add.
	[CAMOUFLAGE] 0 0
	[TRIGGER QUESTEVENT] 0
	[START KEYSTROKE MODE] 8 9 0 0 1	// 종속 attack 액션 인덱스, 종결 attack 액션 인덱스, 연타 모드 0: 순간 키 모드, 1: 누적 키 모드, 한번 종속액션 실행하기 위해 눌러야되는 횟수, 종속 액션 루프 한계

	[LOCK QUEST UNTIL][CHANGE MODULE]	6650		// 업적을 잠근다

	//mkjung 120517 add.
	[SET MOVEVELS]
		[X NORMAL] 0
		[X SLANT] 0
		//mkjung 120518 add 
		[Y NORMAL] 0
		[Y SLANT] 0
	[/SET MOVEVELS]

	//mkjung 120518 add.
	[END KEYSTROKE MODE]
	[DESTROY BY FORCE]


[/BEHAVIOR] 	// 비헤이비어를 닫아줌











//////////////////////////////////////////////////////////////////////////
* 방향 관련 태그
[DEFAULT] : 중립방향
[LEFT] : 왼쪽방향
[RIGHT] : 오른쪽방향
[RANDOM] : 랜덤 (좌,우 중 택일)
[MY DIRECTION] : 현재 시전자의 방향
[MY OPPOSITE DIRECTION] : 현재 시전자의 반대방향

* 다운스테이트 
0 : 첫번째 다운
1 : 땅에 팅기는 상태 (뜨는 높이 1/4로 감소)
2 : 땅에 누운 상태 (x이동 및 뜨는 높이 0)


