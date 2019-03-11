(global-unset-key (kbd "s-="))
(global-set-key (kbd "s-=") 'text-scale-increase)

(global-unset-key (kbd "s--"))
(global-set-key (kbd "s--") 'text-scale-decrease)

(global-unset-key (kbd "s-b"))
(global-set-key (kbd "s-b") 'helm-buffers-list)

(global-unset-key (kbd "s-9"))
(global-set-key (kbd "s-9") 'previous-buffer)

(global-unset-key (kbd "s-0"))
(global-set-key (kbd "s-0") 'next-buffer)

(global-unset-key (kbd "s-j"))
(global-set-key (kbd "s-j") 'evil-scroll-down)

(global-unset-key (kbd "s-k"))
(global-set-key (kbd "s-k") 'evil-scroll-up)

(global-unset-key (kbd "s-z"))
(global-set-key (kbd "s-z") 'undo-tree-visualize)

(global-unset-key (kbd "s-q"))
(global-set-key (kbd "s-q") 'evil-save-modified-and-close)

(global-unset-key (kbd "s-w"))
(global-set-key (kbd "s-w") 'kill-buffer-and-window)

(global-unset-key (kbd "s-1"))
(global-set-key (kbd "s-1") 'spacemacs/toggle-maximize-buffer)

(global-unset-key (kbd "s-2"))
(global-set-key (kbd "s-2") 'split-window-below)

(global-unset-key (kbd "s-3"))
(global-set-key (kbd "s-3") 'split-window-right)

(global-unset-key (kbd "s-`"))
(global-set-key (kbd "s-`") 'other-window)

(global-unset-key (kbd "s-i"))
(global-set-key (kbd "s-i") 'evil-force-normal-state)

(global-unset-key (kbd "s-h"))
(global-set-key (kbd "s-h") 'evil-backward-char)

(global-unset-key (kbd "s-l"))
(global-set-key (kbd "s-l") 'forward-char)
