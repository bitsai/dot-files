(delete-selection-mode 1)
(global-hl-line-mode 1)
(setq inhibit-startup-screen t)
(tool-bar-mode 0)

(setq auto-save-default nil)
(setq make-backup-files nil)

(show-paren-mode 1)
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
