
(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "<f12>")'open-init-file)

;;(global-set-key (kbd "<f12>" 'semantic))
(global-set-key (kbd "<f2>") 'windmove-right)
(global-set-key (kbd "<f1>") 'windmove-left)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "C-h f") 'counsel-describe-function)
(global-set-key (kbd "C-h v") 'counsel-describe-variable)

(global-set-key (kbd "C-h C-f") 'find-function)
(global-set-key (kbd "C-h C-k") 'find-function-on-key)
;;(global-set-key ("\C-x\ \C-r" 'recentf-open-files))
;;Move to the next line and the open a line.
(global-set-key (kbd "C-o") 'vi-open-next-line)
;;(local-set-key [(control o)] 'vi-open-next-line)
(defun vi-open-next-line (arg)
  (interactive "p")
  (end-of-line)
  (open-line arg)
  (next-line 1)
  (indent-according-to-mode))

;;;Winner-mode
(when (fboundp 'winner-mode)
  (winner-mode)
  (windmove-default-keybindings))

;;;windmove-mode
(when (fboundp 'windmove-default-keybindings)
  (windmove-default-keybindings)
  (global-set-key (kbd "C-c j") 'windmove-left)
  (global-set-key (kbd "C-c l") 'windmove-right)
  (global-set-key (kbd "C-c i") 'windmove-up)
  (global-set-key (kbd "C-c k") 'windmove-down))
(provide 'init-keybindings)
