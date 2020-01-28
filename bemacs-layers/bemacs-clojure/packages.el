(defconst bemacs-clojure-packages
  '())
    ;; lispy
    ;; inf-clojure))


(defun bemacs-clojure/init-inf-clojure ()
  (add-hook 'clojure-mode-hook #'inf-clojure-minor-mode))


(defun bemacs-clojure/init-lispy ()
  (add-hook 'clojure-mode-hook #'lispy-mode)
  (add-hook 'emacs-lisp-mode-hook #'rlispy-mode)
  (add-hook 'common-lisp-mode-hook #'lispy-mode)
  (add-hook 'scheme-mode-hook #'lispy-mode)
  (add-hook 'lisp-mode-hook #'lispy-mode))

;;; packages.el ends here
