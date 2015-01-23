(require 'package)

(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/"))

(package-initialize)

(unless package-archive-contents
  (package-refresh-contents))

(defvar my-packages '(better-defaults
                      cider
                      company
                      ido-ubiquitous
                      paredit
                      smex))

(dolist (p my-packages)
  (unless (package-installed-p p)
    (package-install p)))

;; use company-mode for auto-completion in all buffers
(add-hook 'after-init-hook 'global-company-mode)

;; use paredit for all things LISPy
(add-hook 'cider-repl-mode-hook 'paredit-mode)
(add-hook 'clojure-mode-hook 'paredit-mode)
(add-hook 'emacs-lisp-mode-hook 'paredit-mode)

;; OSX hacks
(global-set-key (kbd "<home>") 'beginning-of-line)
(global-set-key (kbd "<end>") 'end-of-line)
(setenv "PATH" (concat (getenv "PATH") ":/usr/local/bin"))
(setq exec-path (append exec-path '("/usr/local/bin")))

;; misc.
(column-number-mode t)
(global-set-key (kbd "M-x") 'smex)
(load-theme 'deeper-blue t)
(setq inhibit-startup-screen t)
