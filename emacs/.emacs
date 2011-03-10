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
 '(scheme-program-name "kawa")
 '(show-paren-mode t)
 '(show-paren-style (quote expression))
 '(tool-bar-mode nil))

(load "~/lib/emacs/clojure-mode/clojure-mode")
(require 'clojure-mode)

(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )

;;; This was installed by package-install.el.
;;; This provides support for the package system and
;;; interfacing with ELPA, the package archive.
;;; Move this code earlier if you want to reference
;;; packages in your .emacs.
(when
    (load
     (expand-file-name "~/.emacs.d/elpa/package.el"))
  (package-initialize))
