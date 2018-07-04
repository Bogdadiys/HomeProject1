-module(p02_test).
%-compile(export_all).
-ifdef(TEST).
-include_lib("eunit/include/eunit.hrl").
-author("Bogdan Kalyta").
but_last_test()->[
?_assertEqual(p02:but_last([1,2,3]),[2,3]),
?_assertEqual(p02:but_last([3]),3),
?_assertError(function_clause,p02:but_last([])),
?_assertError(bad_argument,p02:but_last(1))].
-endif.
