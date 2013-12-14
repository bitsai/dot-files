(require 'package)

(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/")
             t)

(package-initialize)

(unless package-archive-contents
  (package-refresh-contents))

(defvar my-packages '(better-defaults
                      cider
                      paredit
                      smex))

(dolist (p my-packages)
  (unless (package-installed-p p)
    (package-install p)))

(add-hook 'cider-repl-mode-hook 'paredit-mode)
(add-hook 'cider-repl-mode-hook 'subword-mode)
(add-hook 'clojure-mode-hook 'paredit-mode)
(add-hook 'clojure-mode-hook 'subword-mode)

(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)

(column-number-mode t)
(load-theme 'wombat t)
(setq inhibit-startup-screen t)
(setq nrepl-hide-special-buffers t)
