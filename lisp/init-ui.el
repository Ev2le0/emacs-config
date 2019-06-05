;; backgroud color
(set-background-color "honeydew")
(load-theme 'monokai 1)
(global-linum-mode t)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(setq-default cursor-type 'bar)
(setq initial-frame-alist (quote ((fullscreen . maximized))))
(global-hl-line-mode t)

(provide 'init-ui)
