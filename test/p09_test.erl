-module(p09_test).
%-compile(export_all).
-ifdef(TEST).
-include_lib("eunit/include/eunit.hrl").
-author("Bogdan Kalyta").
last_test()->[
?_assertEqual(p09:pack([1,1,3]),[[1,1],[3]]),
?_assertEqual(p09:pack([1,2,3]),[[1],[2],[3]]),
?_assertError(bad_argument,p09:pack(1))].
-endif.
