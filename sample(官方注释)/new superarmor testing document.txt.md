[event super on scr]
`[on hp]` 20 10000 1
`[half]` -1 -1 -1 -1
[/event super on scr]

이것은 완벽하게 동작한다.   20% 닳때마다 동작하고 정확히 10초간 유지하며 재활성화 여부도 잘 동작한다. 
한마디로 on hp 기능은 잘 동작한다고 볼 수 있다. 
하프 슈퍼아머도 원거리는 배리어를 표시하며 근거리는 배리어를 표시하지 않으며 
원거리는 맞는 모션이 없으며 근거리는 맞는 모션이 없으므로 하프슈퍼아머도 제대로 돌아가고 있다고 생각된다.



[event super on scr]
`[on hp]` 20 10000 1
`[unbreakable]` -1 -1 -1 -1
[/event super on scr]

이것 역시 잘 동작한다.   on hp기능 잘 동작하고 
unbreakable 기능도 완벽하게 동작한다. 




[event super on scr]
`[on time]` 10000 5000 1
`[half]` -1 -1 -1 -1
[/event super on scr]

시간에 의한 "발동"  은 무조건 UDP 패킷으로만 활성화가 된다.
이 스크립트는 완벽하게 작동한다.
한마디로 UDP가 완벽히 작동 하고 있다는 것이며, 10초 동안 휴면기,  5초간 발동, 재활성화 여부가 완벽히
동작한다.   그리고 하프아머도 완벽히 동작한다.




[event super on scr]
`[always]` 5000 1
`[half]` -1 -1 -1 -1
[/event super on scr]

always 역시 이 테스트에서 잘 동작한다.   하프타입이므로 깨지는 일이 없기 때문에 죽을때 까지 항상 슈퍼아머 상태가 유지되게 된다.




[event super on scr]
`[always]` 5000 1
`[breakable]` 20 10 100 100
[/event super on scr]

제대로 꺼지고 제대로 활성화 된다.   꺼질때  UDP패킷이 제대로 가고 있는 것이다.
5초후에 재활성화도 잘 된다.      허나 재활성화 된 브레이커블 아머 체력이 닳지 않는다.
-> 해결 완료


[event super on scr]
`[on hp]` 20 10000 1
`[breakable]` 20 10 100 100
[/event super on scr]

여기서는 일단 이런 생각을 해볼 수 있다. 브레이커블 아머가 아직 깨지지 않았는데 10초가 경과되면 어떻게 될 것인가?
답은 10초가 되면 무조건 꺼진다. 
헌데 다시 20%의 체력이 소진된 후 슈퍼아머가 켜질때 이전에 사라진 깍인 슈퍼아머의 체력이 다시 나타나고
이것이 슈퍼아머 자체 체력이 0이 되어서 파괴되면 다시는 재활성화 되지 않는 문제가 나타난다.
-> 해결 완료



[event super on scr]
`[on time]` 10000 5000 1
`[breakable]` 20 10 100 100
[/event super on scr]

일단 시간에 의한 슈퍼아머는 제대로 동작한다.   허나 시간에 의해 재발동될때 이전에 체력이 깍인만큼의 브레이커블 아머가
활성화 되고 그 브레이커블 아머가 파괴되었다면 시간이 되어도 다시는 재발동 되지 않는다.
-> 해결 완료




[atk super on scr]
0 `[half]` -1 -1 -1 -1
[/atk super on scr]

완벽동작.  이전의 문제는 onStartMap에서 atkPVector를 잘못 호출하고 있었다..  해결 완료
0번 인덱스가 동작할때 하프 아머가 정확히 발동된다.



[atk super on scr]
0 `[half]` -1 -1 -1 -1
1 `[breakable]` 20 10 100 100
[/atk super on scr]

완벽히 동작한다.    0번 인덱스의 공격일때 하프아머가 발동되며 1번 인덱스의 공격일때 브레이커블 아머가 정확이 발동된다.





[event super on scr]
`[on time]` 5000 10000 1
`[breakable]` 20 10 100 100
[/event super on scr]

[atk super on scr]
0 `[half]` -1 -1 -1 -1
[/atk super on scr]

일때 이상하게 atk아머만 발동이 된다.   event 아머는 발동이 되지 않는다..

-> 해결완료 둘다 완벽히 동작하며 위에서 언급한 특징들이 전부 완벽히 동작한다.






[event super on scr]
`[always]` 5000 1
`[breakable]` 20 10 100 100
[/event super on scr]

[atk super on scr]
0 `[half]` -1 -1 -1 -1
[/atk super on scr]

이것 역시 event 아머가 동작하지 않는다.  atk만 발동이 된다. 

-> 해결완료.    둘다 완벽히 동작하며 위에서 언급한 특징들이 전부 완벽히 동작한다.
평소에는 breakable 슈퍼아머가 활성화 중이었다가.   공격할때는 atk슈퍼아머로 바뀌게 되며
공격할때 잠시 꺼진 브레이커블 아머체력은 atk아머가 사라질때 이전 게이지로 정상 복귀하게 되며
breakable아머가 깨진후 5초후에 다시 breakable아머가 활성화 될때는 꽉 찬 게이지 상태의
breakable아머가 정상적으로 나타나서,  맞을때 정상적으로 게이지를 소비하게 된다.






[event super on scr]
`[always]` 5000 1
`[breakable]` 20 10 100 100
[/event super on scr]

[event super on scr]
`[on time]` 5000 10000 1
`[unbreakable]` -1 -1 -1 -1
[/event super on scr]


[atk super on scr]
0 `[half]` -1 -1 -1 -1
[/atk super on scr]

이것역시 정상적으로 동작이 된다.

평소에 항상 breakable 아머로 동작을 하다가 시간에 의해 unbreakable아머가 발동하면  (unbreakable아머가 breakable아머보다 
우선순위가 높다)  잠시 unbraekable아머가 할성화 됐다가 5초가 지나면 비활성화 된다. 
그리고 그 와중에도 atk 슈퍼아머가 발동이 되면 atk가 최상위 우선권으로 발동이 된다.









[event super on scr]
`[always]` 5000 1
`[breakable]` 20 10 100 100
[/event super on scr]

[event super on scr]
`[on time]` 5000 10000 1
`[unbreakable]` -1 -1 -1 -1
[/event super on scr]


[atk super on scr]
0 `[half]` -1 -1 -1 -1
1 `[breakable]` 20 10 100 100
[/atk super on scr]

이 역시도 완벽히 동작이 된다. 
위의 것과 동일한 스크립트에 atk슈퍼아머 안에 한 줄을 덧붙였다. 
0 인덱스와 1 인덱스에 의한 atk 슈퍼아머가 확실히 동작한다.


















최근(8월 3번째 주에 수정한 점들)



몬스터가 죽었을때 슈퍼아머 보호막이 사라지지 않은채로 죽는 모션을 한다.  (개편된것과 만진씨를 위한 예외 둘다)   -> 처리함


슈퍼아머 자체 체력 게이지를 좀더 이쁘게 꾸며야 한다. (밝게 빛나는 것, 1도트 밑으로 내려와 있는 것 등등) -> 처리함

슈퍼아머 보호막 크기를 조정해야 한다.  		-> 처리함
슈퍼아머 보호막 높낮이를 캐릭터 높이를 가져와서 좀더 이쁘게 붙인다.	-> 처리함
다른문제가 생김 : 하프아머 원거리 공격 이펙트 경우 맞는 방향으로 보호막이 안쳐지고 몬스터가 향하는 방향으로 보호막 전개됨 -> 처리함
슈퍼아머 이펙트가 랜덤하게 실감나게 표현 -> 처리함


성능 향상을 위해 CollisionObject에서 value로 전달하는지 reference로 전달하는지 확실히 추적해본다. ->  처리함.  reference로 전달함

슈퍼아머 proc코드중 일부를 collisionObject에서 ActiveObject나 IRDMonster쪽으로 내려서 성능향상을 꾀한다.  -> 내리지 않고도 처리함

슈퍼아머 이미지가 좀 뿌옇게 퍼지면서 보이는 이유를 알아낸다.  그리고 리니어 닷지가 무엇을 말하는지도 알아낸다.  -> 처리함

슈퍼아머 자체의 체력 회복률을 코드에 반영한다. -> 처리함

슈퍼아머 문서 보완 -> 처리함

슈퍼아머가 생성될때 동기화를 해주어야 한다. -> 처리함

슈퍼아머중 하프는 근거리에서 맞을땐 보호막 효과가 없어야 한다. (원거리만 있어야 한다)  -> 처리함

어택 슈퍼아머일때 어택 브레이커블 슈파아머가 proc() 코드에서 빠져 있었다.  -> 처리함

모든 종류의 테스트 -> 통과함, 처리함

manace, tough의 접근 half슈퍼아머가 근접공격을 맞았을때 이펙트가 안나오도록 해야 하는 예외처리를 하지 않았다. -> 처리함