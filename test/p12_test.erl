-module(p12_test).
%-compile(export_all).
-ifdef(TEST).
-include_lib("eunit/include/eunit.hrl").
-author("Bogdan Kalyta").
last_test()->[
?_assertEqual(p12:decode_modified([{2,1},3]),[1,1,3]),
?_assertEqual(p12:decode_modified([1,b,3]),[1,b,3]),
?_assertError(bad_argument,p12:decode_modified(1))].
-endif.
