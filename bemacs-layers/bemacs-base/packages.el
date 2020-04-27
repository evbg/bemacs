(defconst bemacs-base-packages
  '(
    ;; init
    ;; lispy
    parinfer
    ag
    httprepl
    yasnippet-snippets
    iedit ;; bind
    buffer-move ;; bind
    speed-type ;; bind

    ;; post-init
    helm
    evil-nerd-commenter ;; bind
    magit) ;; bind

  "The list of Lisp packages required by the bemacs-base layer.

Each entry is either:

1. A symbol, which is interpreted as a package to be installed, or

2. A list of the form (PACKAGE KEYS...), where PACKAGE is the
    name of the package to be installed or loaded, and KEYS are
    any number of keyword-value-pairs.

    The following keys are accepted:

    - :excluded (t or nil): Prevent the package from being loaded
      if value is non-nil

    - :location: Specify a custom installation location.
      The following values are legal:

      - The symbol `elpa' (default) means PACKAGE will be
        installed using the Emacs package manager.

      - The symbol `local' directs Spacemacs to load the file at
        `./local/PACKAGE/PACKAGE.el'

      - A list beginning with the symbol `recipe' is a melpa
        recipe.  See: https://github.com/milkypostman/melpa#recipe-format")


;;;;;;;;;;;;;;;;;;;
;;      init     ;;
;;;;;;;;;;;;;;;;;;;

(defun bemacs-base/init-parinfer ()
  (use-package parinfer
    :ensure t
    :bind
    (("C-," . parinfer-toggle-mode))
    :init
    (progn
      (setq parinfer-extensions
            '(defaults       ; should be included.
               pretty-parens  ; different paren styles for different modes.
               evil           ; If you use Evil.
               lispy          ; If you use Lispy. With this extension, you should install Lispy and do not enable lispy-mode directly.
               paredit        ; Introduce some paredit commands.
               smart-tab      ; C-b & C-f jump positions and smart shift with tab & S-tab.
               smart-yank))   ; Yank behavior depend on mode.
      (add-hook 'clojure-mode-hook #'parinfer-mode)
      (add-hook 'emacs-lisp-mode-hook #'parinfer-mode)
      (add-hook 'common-lisp-mode-hook #'parinfer-mode)
      (add-hook 'scheme-mode-hook #'parinfer-mode)
      (add-hook 'lisp-mode-hook #'parinfer-mode))))

(defun bemacs-base/init-ag ()
  (use-package ag :ensure t))

(defun bemacs-base/init-httprepl ()
  (use-package httprepl :ensure t))

(defun bemacs-base/init-yasnippet-snippets ()
  (use-package yasnippet-snippets :ensure t))

(defun bemacs-base/init-iedit ()
  (use-package iedit :ensure t
    :bind
    ("M-\[" . iedit-prev-occurrence)
    ("M-\]" . iedit-next-occurrence)
    ("M-\\" . iedit-toggle-selection)
    ("s-\[" . iedit-prev-occurrence)
    ("s-\]" . iedit-next-occurrence)
    ("s-\\" . iedit-toggle-selection)
    ("C-;" . iedit-mode)))


(defun bemacs-base/init-buffer-move ()
  (use-package buffer-move :ensure t
    :bind
    ("<C-s-up>"    .    buf-move-up)
    ("<C-s-down>"  .    buf-move-down)
    ("<C-s-left>"  .    buf-move-left)
    ("<C-s-right>" .    buf-move-right)))

(defun bemacs-base/init-speed-type ()
  (use-package speed-type :ensure t
    :commands (speed-type-text speed-type-region speed-type-buffer)
    :bind
    ("<f1> <f2>" . speed-type-text)
    ("<f1> <f3>" . speed-type-region)
    ("<f1> <f4>" . speed-type-buffer)))

;;;;;;;;;;;;;;;;;;;
;;   post-init   ;;
;;;;;;;;;;;;;;;;;;;

(defun bemacs-base/post-init-helm ()
  (use-package helm :ensure t
    :bind
    ("s-f" . spacemacs/helm-find-files)
    ("M-f" . spacemacs/helm-find-files)))

(defun bemacs-base/post-init-evil-nerd-commenter ()
  (use-package evil-nerd-commenter :ensure t
    :config
    (evilnc-default-hotkeys)
    :bind
    ("C-c ;" . evilnc-comment-or-uncomment-lines)
    ("s-/"   . evilnc-comment-or-uncomment-lines)
    ("M-/"   . evilnc-comment-or-uncomment-lines)
    ("C-c l" . evilnc-quick-comment-or-uncomment-to-the-line)
    ("C-c c" . evilnc-copy-and-comment-lines)))



(defun bemacs-base/post-init-magit ()
  (use-package magit :ensure t
    :bind
    ("<f8>" . magit-status)
    ("s-g" . magit-commit)
    ("C-x v -" . magit-diff-unstaged)
    ("C-x v f" . magit-file-checkout)))

;;; packages.el ends here
