(add-hook 'c-mode-common-hook
	  (lambda()
	    (setq c-basic-offset 2
		  tab-width 2
		  c-default-style "linux"
		  indent-tabs-mode nil)
	    (c-set-offset 'innamespace 0)
	    (c-set-offset 'case-label '+)))
