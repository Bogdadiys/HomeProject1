-module(p15_test).
%-compile(export_all).
-ifdef(TEST).
-include_lib("eunit/include/eunit.hrl").
-author("Bogdan Kalyta").
replicate_test()->[
?_assertEqual(p15:replicate([1,1,3],2),[1,1,1,1,3,3]),
?_assertEqual(p15:replicate([1,2,3],2),[1,1,2,2,3,3]),
?_assertError(bad_argument,p15:replicate(1,1))].
-endif.
