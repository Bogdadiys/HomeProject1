-module(p10_test).
%-compile(export_all).
-ifdef(TEST).
-include_lib("eunit/include/eunit.hrl").
-author("Bogdan Kalyta").
last_test()->[
?_assertEqual(p10:encode([1,1,3]),[{2,1},{1,3}]),
?_assertEqual(p10:encode([1,b,3]),[{1,1},{1,b},{1,3}]),
?_assertError(bad_argument,p10:encode(1))].
-endif.
