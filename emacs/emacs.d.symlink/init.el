(require 'package)
(package-initialize)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/") t)
(add-to-list 'package-archives
	     '("melpa-stable" . "http://stable.melpa.org/packages/") t)
(add-to-list 'package-archives
	     '("marmalade" . "http://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives
	     '("org" . "http://orgmode.org/elpa/") t)
(package-initialize)

(when (not package-archive-contents)
    (package-refresh-contents))

(defvar install-package-list
  '(
    init-loader
    lua-mode
    markdown-mode
    go-mode
    go-autocomplete
    yatex
    exec-path-from-shell
    bison-mode
    ))
(dolist (package install-package-list)
  (unless (package-installed-p package)
    (package-install package)))

(require 'init-loader)
(init-loader-load "~/.emacs.d/inits")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (google-c-style yaml-mode magit toml-mode rust-mode haml-mode cmake-mode yatex markdown-mode lua-mode init-loader go-mode go-autocomplete exec-path-from-shell))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
