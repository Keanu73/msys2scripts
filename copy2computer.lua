-- Copy 2 Computer
-- Coded by Keanu73
-- Written on 27/10/14, 16:28
-- THIS IS MSYS2 ONLY, NOT WINDOWS
----------------------------
-- User Settings
local windowsuser = "Keanu" -- This must be your Windows username, otherwise this script will not work.
local directory = "Documents" -- Where you want to copy. If in a sub-directory, do Documents\\example, example is the sub-directory.
----------------------------
-- Variables
local answer
local dir
----------------------------
io.write("Please type in the name of the file you want to copy to your computer, otherwise if it is a directory leave this blank: ")
local answer = io.read()
if answer == "" then
	io.write("Please type in the name of the directory you want to copy to your computer: ")
	local dir = io.read()
	print("Copying...")
	os.execute("cp " ..dir.. "/* /c/Users/" ..windowsuser.. "/" ..directory.. "/" ..dir.. "/*")
	print("Copied. You can go to C:\\Users\\" ..windowsuser.. "\\" ..directory.. "\\" ..dir.. " to see your new directory.")
end
if answer ~= "" then
	print("Copying...")
	os.execute("cp " ..answer.. " /c/Users/" ..windowsuser.. "/" ..directory.. "/" ..answer)
	print("Copied. You can go to C:\\Users\\" ..windowsuser.. "\\" ..directory.. "\\" ..answer.. " to see your new file.")
end
