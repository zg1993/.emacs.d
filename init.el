;;init.el
(package-initialize)
;;将lisp目录添加到搜索路径
(add-to-list 'load-path "~/.emacs.d/lisp/")
(add-to-list 'load-path' "/usr/share/emacs24/site-lisp/slime/")
(tool-bar-mode -1)
(defun open-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))
;;配置lisp环境
(require 'slime-autoloads)
(setq inferior-lisp-program "/usr/bin/sbcl")
(setq slime-contribs '(slime-fancy))

(require 'init-packages)
;;界面相关的配置
(require 'init-ui)

(require 'init-better-defaults)
;;快捷键相关的配置
(require 'init-keybindings)
(require 'org)
