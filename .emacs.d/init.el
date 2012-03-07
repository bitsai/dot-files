(column-number-mode t)
(setq inhibit-startup-screen t)
(setq read-file-name-completion-ignore-case t)
(tool-bar-mode 0)

(setq auto-save-default nil)
(setq make-backup-files nil)

(show-paren-mode t)
(setq show-paren-style 'expression)

(add-to-list 'load-path "~/.emacs.d/clojure-mode")
(require 'clojure-mode)
(setq inferior-lisp-program "/usr/local/bin/lein repl")

(add-to-list 'load-path "~/.emacs.d/color-theme")
(require 'color-theme)
(color-theme-charcoal-black)

(add-to-list 'load-path "~/.emacs.d/paredit")
(autoload 'enable-paredit-mode "paredit" t)
(add-hook 'clojure-mode-hook 'enable-paredit-mode)
(add-hook 'emacs-lisp-mode-hook 'enable-paredit-mode)
(add-hook 'inferior-lisp-mode-hook 'enable-paredit-mode)
(add-hook 'lisp-interaction-mode-hook 'enable-paredit-mode)
