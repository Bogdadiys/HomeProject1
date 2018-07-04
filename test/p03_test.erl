-module(p03_test).
%-compile(export_all).
-ifdef(TEST).
-include_lib("eunit/include/eunit.hrl").
-author("Bogdan Kalyta").
element_at_test()->[
?_assertEqual(p03:element_at([1,2,3],2),2),
?_assertEqual(p03:element_at([3],1),3),
?_assertError(function_clause,p03:element_at([1,2],3)),
?_assertError(bad_argument,p03:element_at(1))].
-endif.
