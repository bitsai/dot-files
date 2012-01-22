(column-number-mode t)
(global-hl-line-mode t)
(setq inhibit-startup-screen t)

(setq auto-save-default nil)
(setq make-backup-files nil)

(show-paren-mode t)
(setq show-paren-style 'expression)

(load "~/.emacs.d/clojure-mode/clojure-mode")
(require 'clojure-mode)
(setq inferior-lisp-program "/usr/local/bin/lein repl")

(add-to-list 'load-path "~/.emacs.d/paredit")
(autoload 'enable-paredit-mode "paredit" t)
(add-hook 'emacs-lisp-mode-hook 'enable-paredit-mode)
(add-hook 'inferior-lisp-mode-hook 'enable-paredit-mode)
(add-hook 'lisp-interaction-mode-hook 'enable-paredit-mode)
(add-hook 'clojure-mode-hook 'enable-paredit-mode)
