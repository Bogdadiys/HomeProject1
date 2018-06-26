-module(p04).
-export([len/1]).
-author("Bogdan Kalyta").

%len(L)->get_len(L,0).
%get_len([],N)->N;
%get_len([_H|T],N)->get_len(T,N+1).

len([_H|T])->
	1+len(T);
len([])->
	0.
