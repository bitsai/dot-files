(require 'package)

(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)

(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

(defvar my-packages '(better-defaults
                      cider
                      company
                      paredit
                      smex
                      solarized-theme))

(dolist (p my-packages)
  (unless (package-installed-p p)
    (package-install p)))

;; hooks
(add-hook 'after-init-hook 'global-company-mode)

(defun my-lisp-hook ()
  (eldoc-mode t)
  (paredit-mode t))

(add-hook 'cider-mode-hook 'my-lisp-hook)
(add-hook 'cider-repl-mode-hook 'my-lisp-hook)
(add-hook 'clojure-mode-hook 'my-lisp-hook)
(add-hook 'emacs-lisp-mode-hook 'my-lisp-hook)

;; key bindings
(global-set-key (kbd "M-x") 'smex)

;; OSX hacks
(setenv "PATH" (concat (getenv "PATH") ":/usr/local/bin"))
(setq exec-path (append exec-path '("/usr/local/bin")))

;; misc.
(column-number-mode t)
(load-theme 'solarized-dark t)
(server-start)
(setq inhibit-startup-screen t)
