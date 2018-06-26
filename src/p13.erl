-module(p13).
-export([decode/1]).
-author("Bogdan Kalyta").

decode([{1,H}|T])->
	[H|decode(T)];
decode([{Count,H}|T])->
	[H|decode([{Count-1,H}|T])];
decode([])->
	[].

