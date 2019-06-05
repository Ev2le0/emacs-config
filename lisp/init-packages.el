(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)
  (setq package-archives '(("gun" . "http://elpa.emacs-china.org/gnu/")
			   ("melpa" . "http://elpa.emacs-china.org/melpa/"))))


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

(provide 'init-packages)
