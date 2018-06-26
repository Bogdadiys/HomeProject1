-module(p05).
-export([reverse/1]).
-author("Bogdan Kalyta").

reverse(L)->
	get_rev(L,[]).

get_rev([],RevL)->
	RevL;
get_rev([H|T],RevL)->
	get_rev(T,[H|RevL]).

