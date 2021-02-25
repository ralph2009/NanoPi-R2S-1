-- Copyright 2020 scw <me@songchenwen.com>
module("luci.controller.r4sflasher", package.seeall)

function index()
    entry({"admin", "system", "r4sflasher"}, form("r4sflasher/flash"), _("R4S Flasher"), 79)
    entry({"admin", "system", "r4sflasher", "log"}, form("r4sflasher/log"))
    entry({"admin", "system", "r4sflasher", "get_log"}, call("get_log")).leaf = true
end

function get_log()
    luci.http.write(luci.sys.exec(
                        "[ -f '/tmp/r4sflasher.log' ] && cat /tmp/r4sflasher.log"))
end
