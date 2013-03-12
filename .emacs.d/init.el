;; packages
(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

(defvar my-packages '(nrepl
                      paredit))

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

;; UI
(column-number-mode t)
(load-theme 'wombat t)
(menu-bar-mode 0)
(scroll-bar-mode 0)
(show-paren-mode 1)
(tool-bar-mode 0)

;; paredit
(add-hook 'clojure-mode-hook 'paredit-mode)
(add-hook 'nrepl-mode-hook 'paredit-mode)

;; miscellaneous
(setq inhibit-startup-message t)
(setq read-file-name-completion-ignore-case t)
