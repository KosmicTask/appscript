#appscript

This is a copy of the Hamish Sanderson's [appscript](http://sourceforge.net/projects/appscript/) suite.  As of 2011-12-09, this project is no longer under active development on sourceforge.

Appscript is a high level, user-friendly Apple event bridge that allows you to control scriptable Mac OS X applications from Python, Ruby and Objective-C. Appscript makes these languages a serious alternative to AppleScript for automating your Mac.

For example, to get the value of the first paragraph of the topmost document in TextEdit using appscript:

	app('TextEdit').documents['Read Me'].paragraphs[1].get()

This is equivalent to the AppleScript statement:

	tell application "TextEdit"
    	get paragraph 1 of document "Read Me"
	end tell

#External Documentation

[Project website](http://appscript.sourceforge.net/)

Python implementation: [py-appscript](http://appscript.sourceforge.net/py-appscript/index.html)

Ruby implementation: [rb-appscript](http://appscript.sourceforge.net/rb-appscript/index.html)

Obj-C implementation: [objc-appscript](http://appscript.sourceforge.net/objc-appscript/index.html)
 


