(delete-selection-mode t)
(global-hl-line-mode t)
(setq inhibit-startup-screen t)
(tool-bar-mode nil)

(setq auto-save-default nil)
(setq make-backup-files nil)

(show-paren-mode t)
(setq show-paren-style 'expression)

(load "~/.emacs.d/clojure-mode/clojure-mode")
(require 'clojure-mode)
(setq inferior-lisp-program "~/bin/lein repl")

(load "~/.emacs.d/coffee-mode/coffee-mode")
(require 'coffee-mode)
(add-hook 'coffee-mode-hook
	  '(lambda () (set (make-local-variable 'tab-width) 2)))

(add-to-list 'load-path "~/.emacs.d/paredit")
(autoload 'enable-paredit-mode "paredit" t)
(add-hook 'clojure-mode-hook 'enable-paredit-mode)
(add-hook 'emacs-lisp-mode-hook 'enable-paredit-mode)
(add-hook 'lisp-interaction-mode-hook 'enable-paredit-mode)
