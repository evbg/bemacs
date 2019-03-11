(fset 'rm-prev-line
      (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ("kdd" 0 "%d")) arg)))
