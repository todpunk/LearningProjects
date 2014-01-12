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
	if input == "Q" then
		return "Q"
	end
	while tonumber(input) == nil do
		io.write(apology, "\n", question)
		input = io.read()
	end
	return tonumber(input)
end


function printLinkedList(list)
	local l = list
	while l ~= nil do
		io.write(" -> ", l.value)
		l = l.next
	end
	io.write("\n")
end

function insertAfter(newNode, node)
	newNode.next = node.next
	node.next = newNode
end

function addToLinkedList(list, number)
	if list == nil then
		list = {next = nil, value = number}
		return list
	end
	if number <= list.value then
		newNode = {next = list, value = number}
		return newNode
	end
	l = list
	prev = l
	while l ~= nil do
		if l.value >= number then
			newNode = {next = prev.next, value = number}
			prev.next = newNode
			return list
		end
		if l.next == nil then
			newNode = {next = l.next, value = number}
			l.next = newNode
			return list
		end
		prev = l
		l = l.next
	end
	return nil
end

io.write("Hello, today we will make a Linked List\n")

ourList = nil
number = ""
quit = false

while not quit do
	number = getNumber("Why don't you give me a number (Q to quit): ", "Sorry, that didn't seem to be a good number.")
	if number == "Q" then
		quit = true
	else
		print "I'm adding"
		ourList = addToLinkedList(ourList, number)
	end
	io.write("HEAD")
	printLinkedList(ourList)
end


io.write("\nWasn't that fun?")

sleep(5)
