-module(p14_test).
%-compile(export_all).
-ifdef(TEST).
-include_lib("eunit/include/eunit.hrl").
-author("Bogdan Kalyta").
dublicate_test()->[
?_assertEqual(p14:dublicate([1,1,3]),[1,1,1,1,3,3]),
?_assertEqual(p14:dublicate([1,2,3]),[1,1,2,2,3,3]),
?_assertError(bad_argument,p14:dublicate(1))].
-endif.
