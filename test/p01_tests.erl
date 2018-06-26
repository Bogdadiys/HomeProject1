-module(p01_tests).
-include_lib("eunit/include/eunit.hrl").
-author("Bogdan Kalyta").
last_test()->[
?_assertEqual(last([1,2,3]),3),
?_assertEqual(last([]),[]),
?_assertError(function_clause,last([])),
?_assertError(bad_argument,last(1))].
-endif.
