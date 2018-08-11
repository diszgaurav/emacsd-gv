;;; init.el --- sets up Emacs configuration
;;; Commentary:
;;; gv Emacs configuration

;;; Code:

;;;----------------------------------------
;;; add MELPA package
;;;----------------------------------------
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(package-initialize)

(setq package-list '(
                     ;; ui
		     atom-one-dark-theme
                     powerline
                     ranger
                     ;; editing
		     clean-aindent-mode
		     counsel
		     undo-tree
		     volatile-highlights
                     duplicate-thing
                     fill-column-indicator
                     indent-guide
                     ;; programming
                     smartparens
		     flycheck
		     flyspell-popup
		     projectile
		     highlight-symbol
                     ;; c
		     company-c-headers
		     ggtags
                     ;; python
                     elpy
		     sphinx-doc
                     ;; rust
                     racer
                     rust-mode
		     ))

;;; fetch the list of packages available
(unless package-archive-contents
  (package-refresh-contents))

;;; install the missing packages
(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))

;;;----------------------------------------
;;; add custom files
;;;----------------------------------------
(add-to-list 'load-path "~/.emacs.d/gv/")

(require 'gv-user)
(require 'gv-ui)
(require 'gv-editing)
(require 'gv-abbrevs)
(require 'gv-python)
(require 'gv-c)
(require 'gv-rust)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (rust-mode sphinx-doc elpy ggtags company-c-headers highlight-symbol projectile flyspell-popup flycheck smartparens indent-guide fill-column-indicator duplicate-thing volatile-highlights undo-tree counsel clean-aindent-mode ranger powerline atom-one-dark-theme))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
