(global-set-key (kbd "C-k") 'rm-prev-line)

(define-key evil-normal-state-map "J" 'evil-forward-section-begin)
(define-key evil-normal-state-map "K" 'evil-backward-section-end)

(global-unset-key (kbd "<f11>"))
(global-set-key (kbd "<f11>") 'toggle-frame-maximized)
