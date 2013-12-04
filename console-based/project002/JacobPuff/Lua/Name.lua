 -- print What is your first name?
 -- get a reply and store it 
 -- print What is your last name?
 -- get a reply and store it
 -- put reply in the print Hello ______ ______
 -- wait for a small amount of time
 -- exit program
local clock = os.clock
function sleep(n) 
  local t0 = clock()
  while clock() - t0 <= n do end
end



io.write ("What is your first name? ")
firstName = io.read()
io.write ("What is your last name? ")
lastName = io.read()
io.write ("Hello ", firstName, " ", lastName, "\n")
sleep (3)
