-module(p08).
-export([compress/1]).
-author("Bogdan Kalyta").

compress([H1,H1|T])->
	compress([H1|T]);
compress([H1,H2|T])->
	[H1|compress([H2|T])];
compress([T])->
	[T];
compress([])->
	[].
