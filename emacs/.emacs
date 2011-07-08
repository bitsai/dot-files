(server-start)

(setq make-backup-files nil)
(setq auto-save-default nil)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(cua-mode t nil (cua-base))
 '(global-visual-line-mode t)
 '(inferior-lisp-program "clj")
 '(inhibit-startup-screen t)
 '(quack-default-program "kawa")
 '(show-paren-mode t)
 '(show-paren-style (quote expression))
 '(tool-bar-mode nil))

(load "~/.emacs.d/clojure-mode/clojure-mode")
(require 'clojure-mode)

(load "~/.emacs.d/quack/quack")
(require 'quack)
