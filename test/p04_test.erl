-module(p04_test).
%-compile(export_all).
-ifdef(TEST).
-include_lib("eunit/include/eunit.hrl").
-author("Bogdan Kalyta").
len_test()->[
?_assertEqual(p04:len([1,2,3]),3),
?_assertEqual(p04:len([]),0),
?_assertError(bad_argument,p04:len(1))].
-endif.
