-module(store).
-include_lib("emysql/include/emysql.hrl").
-export([init/0, rows/2]).

init() ->
    {ok, PoolSize} = application:get_env(erl_bench, db_pool),
    {ok, User} = application:get_env(erl_bench, db_user),
    {ok, Password} = application:get_env(erl_bench, db_password),
    {ok, Host} = application:get_env(erl_bench, db_host),
    {ok, Port} = application:get_env(erl_bench, db_port),
    {ok, Database} = application:get_env(erl_bench, db_name),

    emysql:add_pool(db_pool, PoolSize, User, Password, Host, Port, Database, utf8),

    randoms:init(),
    fortunes:init().

rows(Statement, Query) ->
    Result = emysql:execute(db_pool, Statement, Query),
    Result#result_packet.rows.
