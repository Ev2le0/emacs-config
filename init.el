
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)
  (setq package-archives '(("gun" . "http://elpa.emacs-china.org/gnu/")
			   ("melpa" . "http://elpa.emacs-china.org/melpa/"))))

;; cl - common Lisp Extension
(require 'cl)

;; Add Packages
(defvar zhangli/packages '(
			   ;; --- Auto-completion ---
			   company
			   ;; --- Better Editor ---
			   hungry-delete
			   swiper
			   counsel
			   smartparens
			   monokai-theme
			   ) "default packages")
(setq package-selected-packages zhangli/packages)
(defun zhangli/packages-installed-p ()
  (loop for pkg in zhangli/packages
	when (not (package-installed-p pkg)) do (return nil)
	finally (return t)))

(unless (zhangli/packages-installed-p)
  (message "%s" "Refreshing package database...")
  (package-refresh-contents)
  (dolist (pkg zhangli/packages)
    (when (not (package-installed-p pkg))
      (package-install pkg))))

;; backgroud color
(set-background-color "honeydew")
;; todo
(cua-mode 1)
;; auto insert closing bracket
(electric-pair-mode 1)
;; make cursor movment stop in between camelCase words
(global-subword-mode 1)
;; make typing delete/overwrites selected text
(delete-selection-mode 1)
;; auto-company
(add-hook 'after-init-hook 'global-company-mode)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-minimum-prefix-length 1)
 '(cua-mode t nil (cua-base))
 '(package-selected-packages (quote (company))) 
 '(show-paren-mode t)
 '(tool-bar-mode nil))

;;(when (member "Source Code Pro" (font-family-list))
;;  (set-frame-font "Source Code Pro 18" t t))
(set-frame-font "Source   Code Pro 18" nil t)
(setq-default cursor-type 'bar)
(setq make-backup-files nil)
(load-theme 'monokai 1)

(add-hookx 'emacs-lisp-mode-hook 'show-paren-mode)
(setq initial-frame-alist (quote ((fullscreen . maximized))))
(global-hl-line-mode t)

(global-set-key (kbd "<f2>") 'open-my-init-file)
(defun open-my-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))
(global-set-key "\C-s" 'swiper)

(setq ring-bell-function 'ignore)
(global-auto-revert-mode t)
(global-linum-mode t)
(setq auto-save-default nil)
(tool-bar-mode -1)
(scroll-bar-mode -1)

(setq inhibit-splash-screen t)

(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "C-h f") 'counsel-describe-function)
(global-set-key (kbd "C-h v") 'counsel-describe-variable)
(global-set-key (kbd "C-h C-f") 'find-function)
(global-set-key (kbd "C-h C-v") 'find-variable)
(global-set-key (kbd "C-h C-k") 'find-function-on-key)
(save-place-mode t)
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
;;(setq pop-up-frames t)
