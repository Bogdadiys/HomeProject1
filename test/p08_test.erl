-module(p08_test).
%-compile(export_all).
-ifdef(TEST).
-include_lib("eunit/include/eunit.hrl").
-author("Bogdan Kalyta").
compress_test()->[
?_assertEqual(p08:compress([1,1,3]),[1,3]),
?_assertEqual(p08:compress([1,2,3]),[1,2,3]),
?_assertError(bad_argument,p08:compress(1))].
-endif.
