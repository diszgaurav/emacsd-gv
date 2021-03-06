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
		     leuven-theme
                     powerline
                     ranger
                     ;; editing
		     clean-aindent-mode
                     ;; flx-ido
                     ;; smex
                     counsel
                     flx
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
                     ;; markdown
                     markdown-mode
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
(add-to-list 'load-path "~/tools/org-cv/")

(require 'gv-user)
(require 'gv-ui)
(require 'gv-editing)
(require 'gv-abbrevs)
(require 'gv-python)
(require 'gv-c)
(require 'gv-rust)
(require 'gv-org)
(require 'gv-blog)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (ox-twbs org2blog markdown-mode racer sphinx-doc elpy ggtags company-c-headers highlight-symbol projectile flyspell-popup flycheck smartparens indent-guide fill-column-indicator duplicate-thing volatile-highlights undo-tree flx-ido clean-aindent-mode ranger powerline atom-one-dark-theme))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'downcase-region 'disabled nil)
(put 'dired-find-alternate-file 'disabled nil)
