
// Project: stefan dubnicka perms 
// Created: 2020-10-09

// show all errors
SetErrorMode(2)

// set window properties
SetWindowTitle( "stefan dubnicka perms" )
SetWindowSize( 1024, 768, 0 )
SetWindowAllowResize( 1 ) // allow the user to resize the window

SetVirtualResolution( 1024, 768 ) // doesn't have to match the window
SetSyncRate( 30, 0 ) // 30fps instead of 60 to save battery
UseNewDefaultFonts( 1 ) // since version 2.0.22 we can use nicer default fonts



do
    num = 5
    pos = 2
    com as integer [2]
    gut = 1
    idiot = 1
    count = 1
    while idiot < num
		com [ count ] = idiot
		count = count + 1
		for i = 0 to pos - 1
			com [ count ] = idiot + gut
			gut = gut + 1
		next i 
		for i = 0 to pos-1
			Print( com [i] )
		next i
		if com [ pos ] = num
			idiot = idiot + 1
			gut = 1
		endif
		for i = 0 to 1
			com.remove (i)
		next i
	endwhile
    Sync()
loop
