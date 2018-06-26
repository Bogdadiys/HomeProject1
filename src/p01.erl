-module(p01).
-export([last/1]).
-author("Bogdan Kalyta").

last([_H|[]])->
	_H;
last([_|T])->
	last(T);
last(_)->
	io:write("Argument is not a list, or list is empty").
