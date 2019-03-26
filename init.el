;; package install

(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
  )
(package-initialize)
(defvar my-packages '(
		     highlight-parentheses
		     ))
;; judge have package need install

(defun my-packages-installed-p()
  (loop for pkg in my-packages
	when (not (package-installed-p pkg)) do (return nil)
	finally (return t))
  )
;; package install
(require 'cl)
(unless (my-packages-installed-p)
  (package-refresh-contents)
  (message "%s" "refreshing")
  (dolist (pkg my-packages)
    (when (not (package-installed-p pkg))
      (package-install pkg)))
  )
(global-highlight-parentheses-mode t)



(setq make-backup-files nil)
(setq auto-save-default nil)
(global-linum-mode t)
(add-to-list 'load-path "/usr/share/emacs24/site-lisp/slime/")
(setq inferior-list-program "/usr/bin/sbcl")
(require 'slime)


