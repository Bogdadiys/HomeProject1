-module(p06).
-export([is_palindrome/1]).
-author("Bogdan Kalyta").

is_palindrome(L)->
	L==p05:reverse(L).
%%	get_rev(L,L,[]).

%%get_rev(L,[],RevL)->
%%	palindrome(L,RevL,true);
%%get_rev(L,[H|T],RevL)->
%%	get_rev(L,T,[H|RevL]).

%%palindrome([],[],true)->
%%	true;
%%palindrome([H1|T1],[H2|T2],true)->
%%	palidrome(T1,T2,H1==H2);
%%palindrome(_,_,false)->
%%	false.

