-module(fortunes).
-export([init/0, all/0]).

init() ->
    emysql:prepare(all_fortunes, <<"SELECT id, message FROM Fortune;">>).

all() ->
    [{Id, Message} || [Id, Message] <- store:rows(all_fortunes, [])].
