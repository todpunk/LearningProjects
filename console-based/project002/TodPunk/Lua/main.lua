#!/usr/bin/env lua

-- This is purely for a nice pause at the end of programs.  Ctrl-C of course cuts out early
local clock = os.clock
function sleep(n)  -- seconds
	local t0 = clock()
	io.write("\n\nSleeping for " .. n .. " seconds")
	while clock() - t0 <= n do end
end
-- warning: clock can eventually wrap around for sufficiently large n
-- (whose value is platform dependent).  Even for n == 1, clock() - t0
-- might become negative on the second that clock wraps.


io.write("Hello, what's your first name? ")
firstName = io.read()
io.write(firstName .. ", what is your last name? ")
lastName = io.read()
io.write("Nice to meet you, " .. firstName .. " " .. lastName .. "\n")
sleep(5)
