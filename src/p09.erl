-module(p09).
-export([pack/1]).
-author("Bogdan Kalyta").

pack(L)->
	pack(L,1).
pack([H1,H1|T],Count)->
	pack([H1|T],Count+1);
pack([H1,H2|T],Count)->
	[print(H1,Count)|pack([H2|T],1)];
pack([T],Count)->
	[print(T,Count)];
pack([],_)->
	[].

print(_H,0)->
	[];
print(H,Count)->
	[H|print(H,Count-1)].

