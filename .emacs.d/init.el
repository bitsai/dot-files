;; package manager
(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

;; UI
(load-theme 'wombat t)
(menu-bar-mode 0)
(scroll-bar-mode 0)
(tool-bar-mode 0)

;; indentation
(setq js-indent-level 2)
(setq-default indent-tabs-mode nil)

;; no backups
(setq auto-save-default nil)
(setq make-backup-files nil)

;; paredit
(add-hook 'clojure-mode-hook (lambda () (paredit-mode t)))
(add-hook 'emacs-lisp-mode-hook (lambda () (paredit-mode t)))
(add-hook 'lisp-interaction-mode-hook (lambda () (paredit-mode t)))

;; rebind keys
(global-set-key "\C-w" 'backward-kill-word)
(global-set-key "\C-x\C-k" 'kill-region)
(global-set-key "\C-x\C-m" 'execute-extended-command)
(global-set-key (kbd "C-x C-M-f") 'find-file-in-project)

;; miscellaneous
(column-number-mode t)
(ido-mode t)
(setq inhibit-startup-screen t)
(setq read-file-name-completion-ignore-case t)
(show-paren-mode t)
