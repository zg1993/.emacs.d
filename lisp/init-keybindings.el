
(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "<f2>")'open-init-file)

(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "C-h f") 'counsel-describe-function)
(global-set-key (kbd "C-h v") 'counsel-describe-variable)

(global-set-key (kbd "C-h C-f") 'find-function)
(global-set-key (kbd "C-h C-k") 'find-function-on-key)
;;(global-set-key ("\C-x\ \C-r" 'recentf-open-files))
(provide 'init-keybindings)
