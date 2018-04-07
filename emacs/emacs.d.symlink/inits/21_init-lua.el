(add-to-list 'auto-mode-alist '("\\.lua$" . lua-mode))
(add-to-list 'interpreter-mode-alist '("lua" . lua-mode))
(add-hook 'lua-mode-hook
	  '(lambda ()
	     (setq lua-indent-level 2
		   indent-tabs-mode nil)))
