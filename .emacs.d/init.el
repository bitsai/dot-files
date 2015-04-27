(require 'package)

(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)

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
(defun my-lisp-hook ()
  (company-mode t)
  (paredit-mode t))

(add-hook 'emacs-lisp-mode-hook 'eldoc-mode)
(add-hook 'emacs-lisp-mode-hook 'my-lisp-hook)

(defun my-clojure-hook ()
  (my-lisp-hook)
  (subword-mode t))

(add-hook 'cider-mode-hook 'eldoc-mode)
(add-hook 'cider-repl-mode-hook 'my-clojure-hook)
(add-hook 'clojure-mode-hook 'my-clojure-hook)

;; key bindings
(global-set-key (kbd "M-x") 'smex)

;; OSX hacks
(global-set-key (kbd "<home>") 'beginning-of-line)
(global-set-key (kbd "<end>") 'end-of-line)
(setenv "PATH" (concat (getenv "PATH") ":/usr/local/bin"))
(setq exec-path (append exec-path '("/usr/local/bin")))

;; RFZ
(setq js-indent-level 2)

;; misc.
(column-number-mode t)
(load-theme 'solarized-dark t)
(server-start)
(setq inhibit-startup-screen t)
(setq split-height-threshold nil)
(setq split-width-threshold nil)
