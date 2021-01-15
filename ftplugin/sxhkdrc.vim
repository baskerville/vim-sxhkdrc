if exists("b:did_ftplugin")
	finish
endif

setlocal cms=#%s

if exists('b:undo_ftplugin')
	let b:undo_ftplugin .= "|setlocal commentstring<"
else
	let b:undo_ftplugin = "setlocal commentstring<"
endif
