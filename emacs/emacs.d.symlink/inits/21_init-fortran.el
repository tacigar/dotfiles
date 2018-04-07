(add-hook 'f90-mode-hook
	  '(lambda ()
	     (setq f90-do-indent 2
		   f90-if-indent 2
		   f90-type-indent 2
		   f90-program-indent 2
		   f90-continuation-indent 2
		   f90-interface-indent 2)))
