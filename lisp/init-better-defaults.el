
;; todo
(cua-mode 1)
;; recentf mode
(recentf-mode 1)
;; auto insert closing bracket
(electric-pair-mode 1)
;; make cursor movment stop in between camelCase wo(global-subword-mode 1)
;; make typing delete/overwrites selected text
(delete-selection-mode 1)
;; auto-company
(add-hook 'after-init-hook 'global-company-mode)
;;(when (member "Source Code Pro" (font-family-list))
;;  (set-frame-font "Source Code Pro 18" t t))
(set-frame-font "Source   Code Pro 18" nil t)


(setq make-backup-files nil)

(setq ring-bell-function 'ignore)
(global-auto-revert-mode t)


(setq auto-save-default nil)


(setq inhibit-splash-screen t)

;; UTF-8 as default enconding
(set-language-environment "UTF-8")
(set-default-coding-systems 'utf-8)
(menu-bar-mode 0) 
(display-time-mode t)
(setq display-time-24hr-format t) ;;格式
(setq display-time-day-and-date t)
(setq line-move-visual nil)
;; adjust margin
(defun xah-toggle-margin-right ()
  "Toggle the right margin between `fill-column' or window width.
This command is convenient when reading novel, documentation."
  (interactive)
  (if (eq (cdr (window-margins)) nil)
      (set-window-margins nil 0 (- (window-body-width) fill-column))
    (set-window-margins nil 0 0) ) )
(defalias 'yes-or-no-p 'y-or-n-p)
;; make cursor not blink
(blink-cursor-mode 0)
(setq dired-recursive-copies 'always)
(setq dired-recursive-deletes 'always)
(with-eval-after-load 'dired
  (define-key dired-mode-map (kbd "RET") 'dired-find-alternate-file))
(put 'dired-find-alternate-file 'disabled nil)

(setq dired-dwim-target t)
(setq hippie-expand-try-function-list '(try-expand-debbrev
					try-expand-debbrev-all-buffers
					try-expand-debbrev-from-kill
					try-complete-file-name-partially
					try-complete-file-name
					try-expand-all-abbrevs
					try-expand-list
					try-expand-line
					try-complete-lisp-symbol-partially
					try-complete-lisp-symbol))

(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)
(define-advice show-paren-function (:around (fn) fix-show-paren-function)
  "Highlight enclosing parens."
  (cond ((looking-at-p "\\s(") (funcall fn))
	(t (save-excursion
	     (ignore-errors (backward-up-list))
	     (funcall fn)))))
(save-place-mode t)

(provide 'init-better-defaults)
