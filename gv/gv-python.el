;;; gv-python.el --- setup editing
;;; Commentary:
;;; sets up general editing environment
(provide 'gv-python)

(elpy-enable)

(add-hook 'python-mode-hook (lambda ()
			      (require 'sphinx-doc)
			      (sphinx-doc-mode t)))
