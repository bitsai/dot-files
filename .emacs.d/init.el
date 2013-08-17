(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)
(unless package-archive-contents
  (package-refresh-contents))

(defvar my-packages '(better-defaults
                      nrepl
                      paredit))

(dolist (p my-packages)
  (unless (package-installed-p p)
    (package-install p)))

(load-theme 'wombat t)

(setq inhibit-startup-screen t)
