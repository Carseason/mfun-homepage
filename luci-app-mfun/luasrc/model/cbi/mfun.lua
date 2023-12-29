--[[
LuCI - Lua Configuration Interface
]]--

local taskd = require "luci.model.tasks"
local m, s, o

m = taskd.docker_map("mfun", "mfun", "/usr/libexec/istorec/mfun.sh",
	translate("Mfun"),
	translate("Mfun is an ultimedia program.")
	.. translate("Default User") 
	.. ': admin password')

s = m:section(SimpleSection, translate("Service Status"), translate("Mfun status:"))
s:append(Template("mfun/status"))

s = m:section(TypedSection, "mfun", translate("Setup"), translate("The following parameters will only take effect during installation or upgrade:"))
s.addremove=false
s.anonymous=true

o = s:option(Value, "port", translate("HTTP Port").."<b>*</b>")
o.rmempty = false
o.default = "8990"
o.datatype = "port"

o = s:option(Value, "config_path", translate("Config path").."<b>*</b>")
o.rmempty = false
o.default = ""
o.datatype = "string"

o = s:option(Value, "tmp_path", translate("Tmp path").."<b>*</b>")
o.rmempty = false
o.default = ""
o.datatype = "string"

return m
