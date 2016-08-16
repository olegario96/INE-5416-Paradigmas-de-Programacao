friends(olegario,victor).
friends(olegario,salomao).
friends(salomao,victor).
friends(salomao,caio).

more_friends(FRIEND1, FRIEND3) :- friends(FRIEND1,FRIEND2),
								  friends(FRIEND2,FRIEND3).