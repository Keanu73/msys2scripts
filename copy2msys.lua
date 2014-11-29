-- Copy To MSYS2
-- Version 0.0.4
-- Coded by Keanu73
-- Written on 26/10/14, 20:44
-- Instructions:
-- 1. Edit the user settings below, nothing else except the user settings.
-- 2. Run this script.
-- 3. Your files will be copied to your msys environment.
-- THIS IS for Windows, not Linux. Linux users you have an environment so get rid of this file, Linux users.
-- User Setting Levels:
-- Level 0 - Not Important
-- Level 1 - Important
-- Level 2 - Essential
-- Level 3 - Critical
-- This works for MSYS2 only. Not for MinGW's MSYS.
-----------------------------
-- User settings, modify THEM
local msysuser = "Keanu" -- Level 3. Put the username of your MSYS environment here. It has to be exact, or it will not work. For example: http://prntscr.com/501yry
local msysdir = "C:\\msys64" -- Level 3. Your path to where your MSYS2 was installed. There should be 2 backslashes for the path, not 1. Otherwise Lua will think it is a escape character.
-----------------------------
-- DO NOT MODIFY BELOW THIS LINE.
-----------------------------
-- Variables
local answer
local dir
-----------------------------
io.write("Please type in the name of the file you want to copy to your MSYS environment, if no file leave this blank: ")
local answer = io.read()
if answer == "" then
	io.write("Please type in the name of the directory you want to copy to your MSYS environment: ")
	local dir = io.read()
	print("Copying...")
	os.execute("copy "..dir.."\\* "..msysdir.."\\home\\"..msysuser.."\\"..dir)
	os.execute("C:\\msys64\\msys2_shell.bat")
end
if answer ~= "" then
	print("Copying...")
	os.execute("copy " ..answer.. " " ..msysdir.. "\\home\\" ..msysuser.. "\\" ..answer)
	os.execute("C:\\msys64\\msys2_shell.bat")
end
