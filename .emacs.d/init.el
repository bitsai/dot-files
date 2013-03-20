(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

(defvar my-packages '(nrepl
                      starter-kit
                      starter-kit-eshell
                      starter-kit-js
                      starter-kit-lisp))

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

(add-hook 'nrepl-mode-hook 'paredit-mode)

(load-theme 'wombat t)
