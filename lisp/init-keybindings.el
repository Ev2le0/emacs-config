(global-set-key (kbd "<f2>") 'open-my-init-file)
(global-set-key "\C-s" 'swiper)

;; {{{ counsel keybindings start
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "C-h f") 'counsel-describe-function)
(global-set-key (kbd "C-h v") 'counsel-describe-variable)
;; counsel keybindings end}}}

;;; {{{about help keybindings start
(global-set-key (kbd "C-h C-f") 'find-function)
(global-set-key (kbd "C-h C-v") 'find-variable)
(global-set-key (kbd "C-h C-k") 'find-function-on-key)
;;; about help keybindings end}}}

;;{{{ helm keybindings start
;;(global-set-key (kbd "C-c p s") 'helm-do-ag-project-root)
(global-set-key (kbd "C-w") 'backward-kill-word)
;;}}}

;;{{{org keybindings start
;; r aka remember
(global-set-key (kbd "C-c r") 'org-capture)
(global-set-key (kbd "C-c a") 'org-agenda)
;; org keybindings end }}}

;; {{{ other keybindings start
(global-set-key (kbd "\C-x\ \C-r") 'recentf-open-files)
(global-set-key (kbd "s-/") 'hippie-expand)
(global-set-key (kbd "M-s o") 'occur-dwim)
(global-set-key (kbd "M-s i") 'counsel-imenu)
(global-set-key (kbd "M-s e") 'iedit-mode)
(global-set-key (kbd "C-=") 'er/expand-region)
(global-set-key (kbd "C-c n") 'new-line)
;;(global-set-key (kbd "C-c p f") 'project-find-file)
;; other keybindings end}}}
(provide 'init-keybindings)
