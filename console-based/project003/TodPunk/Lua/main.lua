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


io.write("Hello, may you input me a number? ")
theirNumber = io.read()
while tonumber(theirNumber) == nil do
	io.write("I'm sorry, that didn't seem to be a number, try again: ")
	theirNumber = io.read()
end
theirNumber = tonumber(theirNumber)
if theirNumber % 10 < 5 then
	theirNumber = theirNumber - (theirNumber % 10)
else
	theirNumber = theirNumber + 10 - (theirNumber % 10)
end
io.write("It appears your number rounded is " .. theirNumber .. "\n")

sleep(5)
