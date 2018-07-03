-module(p13_test).
%-compile(export_all).
-ifdef(TEST).
-include_lib("eunit/include/eunit.hrl").
-author("Bogdan Kalyta").
last_test()->[
?_assertEqual(p13:decode([{2,1},{1,3}]),[1,1,3]),
?_assertEqual(p13:decode([{1,1},{1,b},{1,3}]),[1,b,3]),
?_assertError(bad_argument,p13:decode(1))].
-endif.
