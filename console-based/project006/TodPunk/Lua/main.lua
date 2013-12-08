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
theNum = -1

while theNum <= 0 do
	theNum = 1 * getNumber("Why don't you give me a positive number: ", "Sorry, that didn't seem to be a number.")
end

io.write("0\n")
for i = 1, theNum do
	output=""
	if i % 3 == 0 then
		output="Fizz"
	end
	if i % 5 == 0 then
		output=output.."Buzz"
	end
	if output == "" then
		output=i
	end
	io.write(output,"\n")
end

io.write("Wasn't that fun?")

sleep(5)
