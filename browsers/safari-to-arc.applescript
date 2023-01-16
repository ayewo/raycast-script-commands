#!/usr/bin/osascript

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Safari-to-Arc
# @raycast.mode silent

# Optional parameters:
# @raycast.icon 🤖

# Documentation:
# @raycast.author ayewo
# @raycast.authorURL https://ayewo.com

-- loosely based on https://gist.github.com/prashanthrajagopal/08ab39d62725c8a8716b
property myURL : ""

tell application "System Events"
	tell application "Safari" to activate
	tell application "Safari" to set myURL to the URL of the current tab of the front window
	
	delay 0.4
	
	tell application "Arc"
		activate
		open location myURL
	end tell
	
	tell application "System Events"
		keystroke "o" using command down
	end tell
end tell
