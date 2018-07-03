-module(p05_test).
%-compile(export_all).
-ifdef(TEST).
-include_lib("eunit/include/eunit.hrl").
-author("Bogdan Kalyta").
last_test()->[
?_assertEqual(p05:reverse([1,2,3]),[3,2,1]),
?_assertError(bad_argument,p05:reverse(1))].
-endif.
