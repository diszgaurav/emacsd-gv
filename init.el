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

(setq package-list '(indent-guide company-c-headers flyspell-popup ido-yes-or-no ido-ubiquitous fill-column-indicator sphinx-doc elpy smex projectile powerline leuven-theme flx-ido duplicate-thing volatile-highlights smartparens clean-aindent-mode undo-tree ggtags flycheck ranger highlight-symbol racer rustfmt))

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

(require 'gv-ui)
(require 'gv-editing)
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
    (racer rustfmt highlight-symbol ranger indent-guide company-c-headers flyspell-popup ido-yes-or-no fill-column-indicator sphinx-doc elpy smex projectile powerline leuven-theme flx-ido duplicate-thing))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'dired-find-alternate-file 'disabled nil)
(put 'upcase-region 'disabled nil)
