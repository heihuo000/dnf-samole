// 조건 : 조건을 검사하여 행위를 실행할지 여부를 결정한다
[TRIGGER]
	[LIMIT] 1			         	// 트리거를 체크하는 횟수(DO BEHAVIOR 가 호출될때마다 카운팅 됨, 0 일 경우 무한)
	[FRAME] 1 1						// 프레임 체크(1 1 이면 1 프레임에 트리거를 실행한다 ANIMATION 컨트롤에 사용하면 유용함)

	// 액션이 시작된 시점 부터의 타이밍에 조건문을 실행한다 
	[ON TIMING][START MAP] 100 100  	// 시작 시간과 끝시간이 같다면 해당시간에 한번만 실행됨
	[ON TIMING][SET ACTION]  1000 1500	 // 액션이 세팅 된 시간(컨트롤이 생성된 시간)부터 1000 ~ 1500 밀리초에 트리거가 실행됨
	[ON TIMING][SET ACTION]  1000 -1 	// 2번째 인자를 -1로 할 경우, 1000 밀리초 주기로 트리거가 실행됨
	// 사용할 수 있는 시작점 모드
	// ([SET ACTION] : 컨트롤이 처음 생성될때 부터, [START MAP] : 맵이 시작될때 부터, 
	//  [ENTER MOUSE] :  마우스가 컨트롤에 들어올때 부터, [LEAVE MOUSE] : 마우스가 컨트롤을 나갈때 부터,
 	//  [SET VISIBLE] : 컨트롤이 보이기 시작할때 부터 )

	[ON ENTER MOUSE]		     	// 마우스가 컨트롤에 들어 왔을때 발동됨
	[ON LEAVE MOUSE]		   	 // 마우스가 컨트롤에 들어와있다가 다시 나갈때 발동됨
	
	// 특정 타겟을 대상으로 지정한다
	[WHICH][MY CONTROL]					// 내 컨트롤
		   [MY GROUP]					// 같은 부모 컨트롤에 속해있는 모든 컨트롤
		   [ALL CONTROLS]				// 모든 컨트롤(퍼포먼스 저하 주의!)
		 
	[CHECKUP]							
		[IS TYPE] [balloon]			// 컨트롤 타입을 체크한다(UI 자동화에서 기재하는 컨트롤 타입 스트링과 동일함)
				  [button]
		[IS MOUSE LBUP]					// 타겟 컨트롤에 왼쪽 마우스가 UP 되었는지 체크
		[IS NAME] `IDC_BUTTON1`			// *.UI 파일에서 정의한 컨트롤 이름을 체크
		[IS ME]							// 내 컨트롤인지 체크
		[IS VISIBLE]	1				// 보이는지 체크 (1 : 보이면 통과, 0 : 보이지 않으면 통과)
		[IS ENABLE]		1				// 활성화 체크 (1 : 활성화 상태면 통과, 0 : 활성화 상태가 아니면 통과)
		[CHECK FUNC]					// 커스텀 함수 체크 (체크에 통과된 타겟만 통과된다)
			1							// 함수 모드(인덱스)
			5 3 5						// 커스텀 인자들(담당 클라 개발자에게 문의)
		[/CHECK FUNC]
	[/CHECKUP]	
	
	[CHECKED NO] [<] 1 // 체크된 오브젝트의 숫자를 체크. ([<=], [=], [>=] 이런식의 체크 부호 사용가능)
	
	[DO BEHAVIOR][CHECKUP CONTROL] 1	// 체크된 성공한 컨트롤을 매개로 비해비어 호출
	[DO BEHAVIOR][DROPOUT CONTROL] 0	// 체크에 탈락한 컨트롤을 매개로 비해비어 호출
	[DO BEHAVIOR][MY CONTROL] 0	// BEHAVIOR 를 호출, 행위를 실행할 대상, BEHAVIOR 넘버
[/TRIGGER]

// 행위 : TRIGGER 에 의해 호출이 되며 실제 명령을 수행한다
[BEHAVIOR]
	[INTERPOLATION]
		[SCALE] 			// ([MOVEMENT], [ROTATION] , [ALPHA] 등이 있음)
		[DURATION] 250
		[FIRST ARG] -1.0 -1.0		// 첫번째 인자 : 보간전 X 비율, 보간전 Y 비율(-1.0 을 입력할 경우 현재 값을 취한다)
		[SECOND ARG] 1.0 1.0		// 두번째 인자 : 보간후 X 비율, 보간후 Y 비율
	[/INTERPOLATION]
	[INTERPOLATION]
		[ROTATION]	
		[DURATION] 250
		[FIRST ARG] -1.0 -1.0		// 첫번째 인자 : 보간전 X 각도(DEGREE), -1.0(사용하지 않음)
		[SECOND ARG] 360 -1.0	// 두번째 인자 : 보간후 X 각도(DEGREE), -1.0(사용하지 않음)
	[/INTERPOLATION]

	[INTERPOLATION]
		[ALPHA]	
		[DURATION] 100
		[FIRST ARG] 255.0 -1.0	// 첫번째 인자 : 보간전 알파값, -1.0(사용하지 않음)
		[SECOND ARG] 0.0 1.0		// 두번째 인자 : 보간후 알파값, -1.0(사용하지 않음)	
	[/INTERPOLATION]
	[INTERPOLATION]
		[ALPHA]			// 주의 : 같은 타입의 INTERPOLATION 태그를 한 BEHAVIOR 에 사용시, 먼저 선언한 보간이 먼지 실행된 후 실행됨!	
		[DURATION] 100
		[FIRST ARG] 255.0 -1.0	// 첫번째 인자 : 보간전 알파값, -1.0(사용하지 않음)
		[SECOND ARG] 0.0 1.0		// 두번째 인자 : 보간후 알파값, -1.0(사용하지 않음)	
	[/INTERPOLATION]

	[SET GRAPHICEFFECT][NONE] ([DODGE], [LINEARDODGE])		// 컨트롤의 그래픽 이펙트 변경
	[RESET][TRIGGER] 0							// 트리거 횟수를 리셋한다(LIMIT 와 함께 쓰임)
	[RESET][CONTROL]							// 컨트롤을 초기상태로 리셋한다
	[REWIND]									// 애니메이션과 같은 컨트롤을 되감는다			
	[SET TRACKING MODE] `라이너스` 10 10					// UI 위치 고정 모드, 고정시킬 오브젝트 명, x오프셋, y오프셋
	
	[RETURN]									// 액션을 종료한다. (뒤에 나오는 모든 트리거와 비해비어가 더 이상 실행되지 않음)
	[SET TITLE]	`확인`							// 타이틀을 변경한다(예 : 버튼)

	[CALL FUNC]							// 커스텀 함수 실행
		1								// 함수 모드(인덱스)
		5 3 5							// 커스텀 인자들(담당 클라 개발자에게 문의)
	[/CALL FUNC]	
	[SET TRANS CENTER] 0 0		// 변형(회전/스케일) 중심점을 지정, 기본 가운데
[/BEHAVIOR]