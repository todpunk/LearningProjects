#!/usr/bin/env lua

-- This is purely for a nice pause at the end of programs.  Ctrl-C of course cuts out early
local clock = os.clock
function sleep(n)  -- seconds
	local t0 = clock()
	io.write("\n\nSleeping for ", n, " seconds")
	while clock() - t0 <= n do end
end
-- warning: clock can eventually wrap around for sufficiently large n
-- (whose value is platform dependent).  Even for n == 1, clock() - t0
-- might become negative on the second that clock wraps.


function getNumber(question, apology)
	local input = nil
	io.write(question)
	input = io.read()
	while tonumber(input) == nil do
		io.write(apology, "\n", question)
		input = io.read()
	end
	return input
end

io.write("Hello, today I will be counting for you.\n")
theNum = 1 * getNumber("Why don't you give me a number: ", "Sorry, that didn't seem to be a number.")
modifier = -1;
if theNum <= 0 then
  modifier = 1
else
	theNum = theNum * -1
end

for i = theNum, -1 do
	io.write((i * modifier), ", ")
end

io.write("0\nWasn't that fun?")

sleep(5)
