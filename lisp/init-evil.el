(evil-leader/set-key
  "ff" 'find-file
  "fr" 'recentf-open-files
  "bb" 'switch-to-buffer
  "bk" 'kill-buffer
  "pf" 'counsel-git
  "ps" 'helm-do-ag-project-root
  "0" 'select-window-0
  "1" 'select-window-1
  "2" 'select-window-2
  "3" 'select-window-3
  "fj" 'dired-jump
  "w/" 'split-window-right
  "w-" 'split-window-below
  "SPC" 'counsel-M-x
  "wd" 'delete-other-windows
  "qq" 'save-buffers-kill-terminal
  "sj" 'counsel-imenu
  "sp" 'counsel-git-grep
  )

(global-evil-surround-mode)

(evilnc-default-hotkeys)
(define-key evil-normal-state-map (kbd ",/") 'evilnc-comment-or-uncomment-lines)
(define-key evil-visual-state-map (kbd ",/") 'evilnc-comment-or-uncomment-lines)
(dolist (mode '(ag-mode
		flycheck-error-list-mode
		occur-mode
		git-rebase-mode))
  (add-to-list 'evil-emacs-state-modes mode))


(add-hook 'occur-mode-hook
	  (lambda ()
	    (evil-add-hjkl-bindings occur-mode-map 'emacs
	      (kbd "/")       'evil-search-forward
	      (kbd "n")       'evil-search-next
	      (kbd "N")       'evil-search-previous
	      (kbd "C-d")     'evil-scroll-down
	      (kbd "C-u")     'evil-scroll-up
	      )))

(provide 'init-evil)
