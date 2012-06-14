(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

(add-hook 'clojure-mode-hook (lambda () (paredit-mode t)))
(column-number-mode t)
(load-theme 'wombat t)
(setq inhibit-startup-screen t)
(setq read-file-name-completion-ignore-case t)
(tool-bar-mode 0)

(setq auto-save-default nil)
(setq make-backup-files nil)

(show-paren-mode t)
(setq show-paren-style 'expression)

(setq js-indent-level 2)
(setq-default indent-tabs-mode nil)
