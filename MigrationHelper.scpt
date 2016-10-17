tell application "Terminal"
	activate
	do script "cd Documents/content-copy-tool" in tab 1 of front window
	delay 2
	do script "./content-copy.py -s example.json -i example.tsv -cop --publish-collection" in tab 1 of front window
	delay 2
	do script "1" in tab 1 of front window
	delay 3
	my accept()
	my makeTab()
	
end tell
tell application "Terminal"
	delay 3
	do script "./content-copy.py -s example.json -i example-input.tsv -wcrop" in tab 2 of front window
	delay 3
	do script "1" in tab 2 of front window
	delay 3
	my accept()
	my makeTab()
end tell

tell application "Terminal"
	delay 3
	do script "./content-copy.py -s example.json -i example-input.tsv -wcrop" in tab 3 of front window
	delay 3
	do script "1" in tab 3 of front window
	delay 3
	my accept()
	my makeTab()
end tell

tell application "Terminal"
	delay 3
	do script "./content-copy.py -s example.json -i example-input.tsv -wcrop" in tab 4 of front window
	delay 3
	do script "1" in tab 4 of front window
	delay 3
	my accept()
end tell

on makeTab()
	tell application "System Events" to keystroke "t" using {command down}
	delay 0.2
end makeTab

on accept()
	tell application "System Events" to key code 36
	delay 0.2
end accept