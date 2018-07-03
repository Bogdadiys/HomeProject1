-module(p10).
-export([encode/1]).
-author("Bogdan Kalyta").

encode(L)->
	encode(L,1).
encode([H1,H1|T],Count)->
	encode([H1|T],Count+1);
encode([H1,H2|T],Count)->
	[{Count,H1}|encode([H2|T],1)];
encode([T],Count)->
	[{Count,T}];
encode([],_)->
	[];
encode(_,_)->
	undefined.

