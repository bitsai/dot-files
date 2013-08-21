(require 'package)

(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/"))

(package-initialize)

(unless package-archive-contents
  (package-refresh-contents))

(defvar my-packages '(better-defaults
                      clojure-mode
                      elixir-mode
                      erlang
                      go-mode
                      nrepl
                      paredit
                      smex))

(dolist (p my-packages)
  (unless (package-installed-p p)
    (package-install p)))

(add-hook 'clojure-mode-hook 'paredit-mode)
(add-hook 'nrepl-mode-hook 'paredit-mode)

(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)

(column-number-mode t)
(load-theme 'wombat t)
(setq inhibit-startup-screen t)
