(add-hook 'verilog-mode-hook
	  '(lambda ()
	     (setq indent-tabs-mode nil)
	     (setq tab-width 4)))
