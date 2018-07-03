-module(p01).
-export([last/1]).
-author("Bogdan Kalyta").

last([H|[]])->
	H;
last([_|T])->
	last(T);
last(_)->
	undefined.
