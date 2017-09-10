;;; init.el --- sets up Emacs configuration
;;; Commentary:
;;; gv Emacs configuration

;;; Code:

;;;----------------------------------------
;;; add MELPA package
;;;----------------------------------------
(require 'package)
(add-to-list 'package-archives '("melpa"
	     . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

(setq package-list '(indent-guide company-c-headers flyspell-popup ido-yes-or-no ido-ubiquitous fill-column-indicator sphinx-doc elpy smex projectile powerline leuven-theme flx-ido duplicate-thing volatile-highlights smartparens clean-aindent-mode undo-tree ggtags flycheck ranger highlight-symbol))

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
(require 'gv-blog)
(require 'gv-rust)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (volatile-highlights undo-tree sublime-themes sphinx-doc smex smartparens rustfmt ranger racer projectile powerline ox-twbs nord-theme mustache-mode leuven-theme indent-guide ido-yes-or-no ido-ubiquitous highlight-symbol ggtags flyspell-popup flycheck flx-ido fill-column-indicator elpy duplicate-thing company-c-headers clean-aindent-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
