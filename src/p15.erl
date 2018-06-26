-module(p15).
-export([replicate/2]).
-author("Bogdan Kalyta").

replicate(L,N)->
	replicate(L,N,N).
replicate([_H|T],0,N1)->
	replicate((T),N1,N1);
replicate([H|T],N,N1)->
	[H|replicate([H|T],N-1,N1)];
replicate([],_N,_N1)->
	[].

