(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)
(unless package-archive-contents
  (package-refresh-contents))

(defvar my-packages '(better-defaults
                      clojure-mode
                      elixir-mode
                      go-mode
                      nrepl
                      paredit))

(dolist (p my-packages)
  (unless (package-installed-p p)
    (package-install p)))

(add-hook 'clojure-mode-hook 'paredit-mode)
(add-hook 'nrepl-mode-hook 'paredit-mode)

(load-theme 'wombat t)
(setq inhibit-startup-screen t)
