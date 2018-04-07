(eval-after-load "go-mode"
  '(progn (require 'go-autocomplete)))

(add-hook 'before-save-hook 'gofmt-before-save)
(add-hook 'go-mode-hook
	  '(lambda () (setq tab-width 4)))
