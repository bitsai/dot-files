(require 'package)

(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)

(package-initialize)

(defvar my-packages '(better-defaults
                      cider
                      company
                      find-file-in-project
                      flycheck
                      idle-highlight-mode
                      ido-ubiquitous
                      paredit
                      smex
                      solarized-theme))

(dolist (p my-packages)
  (unless (package-installed-p p)
    (package-install p)))

;; hooks
(defun my-coding-hook ()
  (company-mode t)
  (idle-highlight-mode t))

(defun my-lisp-hook ()
  (my-coding-hook)
  (paredit-mode t))

(defun my-python-hook ()
  (my-coding-hook)
  (flycheck-mode t))

(add-hook 'cider-repl-mode-hook 'my-lisp-hook)
(add-hook 'clojure-mode-hook 'my-lisp-hook)
(add-hook 'emacs-lisp-mode-hook 'my-lisp-hook)
(add-hook 'python-mode-hook 'my-python-hook)

;; key bindings
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "C-x f") 'find-file-in-project)

;; OSX hacks
(global-set-key (kbd "<home>") 'beginning-of-line)
(global-set-key (kbd "<end>") 'end-of-line)
(setenv "PATH" (concat (getenv "PATH") ":/usr/local/bin"))
(setq exec-path (append exec-path '("/usr/local/bin")))

;; misc.
(column-number-mode t)
(ido-ubiquitous-mode t)
(load-theme 'solarized-dark t)
(server-start)
(setq flycheck-flake8-maximum-line-length 1024)
(setq inhibit-startup-screen t)
(setq split-height-threshold nil)
(setq split-width-threshold nil)
