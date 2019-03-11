(global-unset-key (kbd "M-="))
(global-set-key (kbd "M-=") 'text-scale-increase)

(global-unset-key (kbd "M--"))
(global-set-key (kbd "M--") 'text-scale-decrease)

(global-unset-key (kbd "M-b"))
(global-set-key (kbd "M-b") 'helm-buffers-list)

;; (global-unset-key (kbd "M-9"))
;; (global-set-key (kbd "M-9") 'previous-buffer)

;; (global-unset-key (kbd "M-0"))
;; (global-set-key (kbd "M-0") 'next-buffer)

(global-unset-key (kbd "M-j"))
(global-set-key (kbd "M-j") 'evil-scroll-down)

(global-unset-key (kbd "M-k"))
(global-set-key (kbd "M-k") 'evil-scroll-up)

(global-unset-key (kbd "M-z"))
(global-set-key (kbd "M-z") 'undo-tree-visualize)

(global-unset-key (kbd "M-q"))
(global-set-key (kbd "M-q") 'evil-save-modified-and-close)

(global-unset-key (kbd "M-w"))
(global-set-key (kbd "M-w") 'kill-buffer-and-window)

;; (global-unset-key (kbd "M-1"))
;; (global-set-key (kbd "M-1") 'spacemacs/toggle-maximize-buffer)

;; (global-unset-key (kbd "M-2"))
;; (global-set-key (kbd "M-2") 'split-window-below)

;; (global-unset-key (kbd "M-3"))
;; (global-set-key (kbd "M-3") 'split-window-right)

;; (global-unset-key (kbd "M-`"))
;; (global-set-key (kbd "M-`") 'other-window)

(global-unset-key (kbd "M-i"))
(global-set-key (kbd "M-i") 'evil-force-normal-state)

(global-unset-key (kbd "M-h"))
(global-set-key (kbd "M-h") 'evil-backward-char)

(global-unset-key (kbd "M-l"))
(global-set-key (kbd "M-l") 'forward-char)
