--
-- (C) 2013 - ntop.org
--

dirs = ntop.getDirs()
package.path = dirs.installdir .. "/scripts/lua/modules/?.lua;" .. package.path

require "lua_utils"

sendHTTPHeader('application/json')

ifname          = _GET["if"]
if(ifname == nil) then	  
  ifname = "any"
end

interface.find(ifname)
hosts_stats = interface.getHostsInfo()

print [[
{
 "name": "flare",
 "children": [
  {
   "name": "analytics",
   "children": [
    {
     "name": "Local Hosts",
     "children": [
  ]]

tot = 0
for key, value in pairs(hosts_stats) do
   tot = tot +  hosts_stats[key]["bytes.sent"]+hosts_stats[key]["bytes.rcvd"]
end
threshold = tot/40

other = 0
num = 0
for key, value in pairs(hosts_stats) do
   val = hosts_stats[key]["bytes.sent"]+hosts_stats[key]["bytes.rcvd"]

   if(val > threshold) then

   if(num > 0) then print(",\n") else print("\n") end
   print("{ \"name\": \"" .. hosts_stats[key]["name"].. "\", \"size\": " .. (hosts_stats[key]["bytes.sent"]+hosts_stats[key]["bytes.rcvd"]).. "} ")
   num = num + 1

else
   other = other + val
end
end


print [[

]
}
]]

if(other > 0) then
print [[,
  {
   "name": "Remote Hosts",
   "children": [
]]

print("{ \"name\": \"Other\", \"size\": " .. other .. "} ")

print [[
   ]
}
]]
end

print [[
]
}
]
}

]]