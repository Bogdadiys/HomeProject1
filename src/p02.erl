-module(p02).
-export([but_last/1]).
-author("Bogdan Kalyta").

but_last([_H1,_H2] = L)->
	L;
but_last([_H|T])->
	but_last(T);
but_last(_)->
	undefined.
