-module(p07_test).
%-compile(export_all).
-ifdef(TEST).
-include_lib("eunit/include/eunit.hrl").
-author("Bogdan Kalyta").
flatten_test()->[
?_assertEqual(p07:flatten([1,[2,3]]),[1,2,3]),
?_assertEqual(p07:flatten([3]),[3]),
?_assertError(bad_argument,p07:flatten(1))].
-endif.
