(with-eval-after-load 'org
  (setq org-agenda-files '("/var/www/source/org"))
  (setq org-src-fontify-natively t)
  (setq org-capture-templates
      '(("t" "Todo" entry (file+headline "/var/www/source/org/gtd.org" "工作安排")
	 "* TODO [#B] %?\n  %i\n"
	 :empty-lines 1))))
(provide 'init-org)
