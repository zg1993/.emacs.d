(when (require 'flycheck nil t)
  (setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
  (add_hook 'elpy-mode-hook 'flycheck-mode))
