function fish_user_key_bindings
	bind -M insert ç 'forward-char'	
	bind ç 'forward-char' 'forward-char'
	bind -M insert \cf 'thefuck-command-line'
	bind \cf 'thefuck-command-line'
end

