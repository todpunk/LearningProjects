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
	while tonumber(input) == nil and input < 1 do
		io.write(apology, "\n", question)
		input = io.read()
	end
	return input
end

function fibonacci(n)
	x = 1
	fib1 = 0
	fib2 = 1
	fibT = 0
	io.write(fib1, " ")
	while x < n do
		io.write(fib2, " ")
		fibT = fib2
		fib2 = fib2 + fib1
		fib1 = fibT
		x = x + 1
	end
	return fib
end

io.write("Hello, today I will be recursing the fibonacci sequence.\n")

limit = 100

theNum = 1 * getNumber("Why don't you give me a positive number less than "..limit..": ", "Sorry, that didn't seem to be a good number.")
if theNum > limit then
	theNum = theNum % limit
	io.write("Let's trim that a bit to ", theNum, "\n")
end

fibonacci(theNum)

io.write("\nWasn't that fun?")

sleep(5)
