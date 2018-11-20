
(when (>= emacs-major-version 24)
  ;;(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
  (add-to-list 'package-archives '("melpa" . "http://elpa.emacs-china.org/melpa/") t)
  )

(require 'cl)

(defvar my/packages '(
		      company
		      hungry-delete
		      swiper
		      counsel
		      smartparens
		      highlight-parentheses
		      monokai-theme)"Default packages")
(setq package-selected-packages my/packages)

(defun my/packages-installed-p()
  (loop for pkg in my/packages
	when (not (package-installed-p pkg)) do (return nil)
		  finally (return t)))

(unless (my/packages-installed-p)
  (message "%s" "Refreshing package database...")
  (package-refresh-contents)
  (dolist (pkg my/packages)
    (when (not (package-installed-p pkg))
      (package-install pkg))))

(global-hungry-delete-mode)

(smartparens-global-mode t)

(global-highlight-parentheses-mode t)

(global-company-mode t)

(load-theme 'monokai t)
(provide 'init-packages)
