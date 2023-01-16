#!/usr/bin/osascript

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Firefox-to-Arc
# @raycast.mode silent

# Optional parameters:
# @raycast.icon 🤖

# Documentation:
# @raycast.author ayewo
# @raycast.authorURL https://ayewo.com

-- log "Hello World!"

-- loosely based on https://gist.github.com/prashanthrajagopal/08ab39d62725c8a8716b

tell application "System Events"
	tell application "Firefox" to activate
	tell application "System Events"
		keystroke "l" using command down
		keystroke "c" using command down
	end tell
	delay 0.4
	
	set myURL to the clipboard
	
	tell application "Arc"
		activate
		open location myURL
	end tell
	
	tell application "System Events"
		keystroke "o" using command down
	end tell
end tell