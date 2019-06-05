(package-initialize)
(require 'cl)
(require 'dired-x)
(require 'org-tempo)
(require 'popwin)
(add-to-list 'load-path "~/.emacs.d/lisp/")

;; modular config
(require 'init-func)
(require 'init-packages)
(require 'init-better-defaults)
(require 'init-keybindings)
(require 'init-ui)
(require 'init-org)

(setq custom-file (expand-file-name "lisp/init-custom.el" user-emacs-directory))
(load-file custom-file)
