-module(p11).
-export([encode_modified/1]).
-author("Bogdan Kalyta").

encode_modified(L)->
	encode_modified(L,1).
encode_modified([H1,H1|T],Count)->
	encode_modified([H1|T],Count+1);
encode_modified([H1,H2|T],1)->
	[H1|encode_modified([H2|T],1)];
encode_modified([H1,H2|T],Count)->
	[{Count,H1}|encode_modified([H2|T],1)];
encode_modified([T],1)->
	[T];
encode_modified([T],Count)->
	[{Count,T}];
encode_modified([],_)->
	[].

