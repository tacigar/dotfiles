(add-hook 'c-mode-common-hook
	  (lambda()
	    (setq c-basic-offset 4
		  tab-width 4
		  indent-tabs-mode nil)
	    (c-set-offset 'innamespace 0)
	    (c-set-offset 'case-label '+)))
(add-hook 'c-mode-common-hook 'google-set-c-style)
(add-hook 'c++-mode-common-hook 'google-set-c-style)
(add-hook 'c-mode-common-hook 'google-make-newline-indent)
