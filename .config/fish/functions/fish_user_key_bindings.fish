function fish_user_key_bindings
	bind -M insert \u00F1 'forward-char'	
	bind \u00F1 'forward-char' 'forward-char'
	bind -M insert \cf 'thefuck-command-line'
end

