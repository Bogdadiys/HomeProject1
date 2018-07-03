-module(p01_test).
%-compile(export_all).
-ifdef(TEST).
-include_lib("eunit/include/eunit.hrl").
-author("Bogdan Kalyta").
last_test()->[
?_assertEqual(p01:last([1,2,3]),3),
?_assertEqual(p01:last([]),[]),
?_assertError(function_clause,p01:last([])),
?_assertError(bad_argument,p01:last(1))].
-endif.
