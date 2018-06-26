-module(p07).
-export([flatten/1]).
-author("Bogdan Kalyta").

flatten([[]|T])->
	flatten(T);
flatten([[H|T1]|T2])->
	flatten([H,T1|T2]);
flatten([H|T])->
	[H|flatten(T)];
flatten([])->
	[].


