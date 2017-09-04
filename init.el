;;init.el
(package-initialize)
;;将lisp目录添加到搜索路径
(add-to-list 'load-path "~/.emacs.d/lisp/")
(tool-bar-mode -1)
(defun open-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))
(require 'init-packages)
;;界面相关的配置
(require 'init-ui)

(require 'init-better-defaults)
;;快捷键相关的配置
(require 'init-keybindings)
(require 'org)
