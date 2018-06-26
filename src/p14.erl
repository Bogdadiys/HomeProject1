-module(p14).
-export([dublicate/1]).
-author("Bogdan Kalyta").

dublicate([H|T])->
	[H,H|dublicate(T)];
dublicate([])->
	[].
