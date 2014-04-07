(require 'package)

(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/"))

(package-initialize)

(unless package-archive-contents
  (package-refresh-contents))

(defvar my-packages '(better-defaults
                      cider
                      ido-ubiquitous
                      paredit
                      smex))

(dolist (p my-packages)
  (unless (package-installed-p p)
    (package-install p)))

(add-hook 'cider-repl-mode-hook 'paredit-mode)
(add-hook 'clojure-mode-hook 'paredit-mode)
(add-hook 'emacs-lisp-mode-hook 'paredit-mode)
(column-number-mode t)
(global-set-key (kbd "M-x") 'smex)
(load-theme 'wombat t)
(setq ido-ubiquitous-mode t)
(setq inhibit-startup-screen t)
(setq nrepl-hide-special-buffers t)
