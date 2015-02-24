(require 'package)

(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/"))

(package-initialize)

(defvar my-packages '(better-defaults
                      cider
                      company
                      find-file-in-project
                      idle-highlight-mode
                      ido-ubiquitous
                      paredit
                      smex))

(dolist (p my-packages)
  (unless (package-installed-p p)
    (package-install p)))

;; hooks
(defun my-coding-hook ()
  (idle-highlight-mode t))

(defun my-lisp-hook ()
  (my-coding-hook)
  (paredit-mode t))

(add-hook 'after-init-hook 'global-company-mode)
(add-hook 'cider-repl-mode-hook 'my-lisp-hook)
(add-hook 'clojure-mode-hook 'my-lisp-hook)
(add-hook 'emacs-lisp-mode-hook 'my-lisp-hook)
(add-hook 'python-mode-hook 'my-coding-hook)

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
(server-start)
(setq inhibit-startup-screen t)
