-module(p12).
-export([decode_modified/1]).
-author("Bogdan Kalyta").

decode_modified([{1,H}|T])->
	[H|decode_modified(T)];
decode_modified([{Count,H}|T])->
	[H|decode_modified([{Count-1,H}|T])];
decode_modified([H|T])->
	[H|decode_modified(T)];
decode_modified([])->
	[];
decode_modified(_)->
	undefined.
