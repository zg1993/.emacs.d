(setq make-backup-files nil)
(setq auto-save-default nil)
(global-linum-mode t)
(add-to-list 'load-path "/usr/share/emacs24/site-lisp/slime/")
(setq inferior-list-program "/usr/bin/sbcl")
(require 'slime)


