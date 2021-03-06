;; (when (>= emacs-major-version 24)
;;   (require 'package)
;;   (package-initialize)
;;   (setq package-archives '(("gun" . "http://elpa.emacs-china.org/gnu/")
;; 			   ("melpa" . "http://elpa.emacs-china.org/melpa/"))))


;; ;; Add Packages
;; (defvar zhangli/packages '(
;; 			   ;; --- Auto-completion ---
;; 			   company
;; 			   ;; --- Better Editor ---
;; 			   hungry-delete
;; 			   swiper
;; 			   counsel
;; 			   smartparens
;; 			   monokai-theme
;; 			   ivy
;; 			   popwin
;; 			   expand-region
;; 			   iedit
;; 			   helm-ag
;; 			   yasnippet
;; 			   auto-yasnippet
;; 			   evil
;; 			   evil-leader
;; 			   evil-surround
;; 			   evil-nerd-commenter
;; 			   window-numbering
;; 			   which-key
;; 			   use-package
;; 			   pallet
;; 			   cask
;; 			   ) "default packages")

;; (setq package-selected-packages zhangli/packages)
;; (defun zhangli/packages-installed-p ()
;;   (loop for pkg in zhangli/packages
;; 	when (not (package-installed-p pkg)) do (return nil)
;; 	finally (return t)))

;; (unless (zhangli/packages-installed-p)
;;   (message "%s" "Refreshing package database...")
;;   (package-refresh-contents)
;;   (dolist (pkg zhangli/packages)
;;     (when (not (package-installed-p pkg))
;;       (package-install pkg))))

(smartparens-global-mode t)
(sp-local-pair 'emacs-lisp-mode "'" nil :actions nil)
(sp-local-pair 'emacs-lisp-mode "`" nil :actions nil)
(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(popwin-mode t)
(yas-reload-all)
(add-hook 'prog-mode-hook #'yas-minor-mode)
(window-numbering-mode 1)
(evil-mode 1)
(global-evil-leader-mode 1)
(which-key-mode 1)
(provide 'init-packages)
