;;; init-local-config-change.el --- configs to edit local-config
;;; Commentary:

;;; Code:
(maybe-require-package 'restart-emacs)

(defun open-local-config ()
  "open this file"
  (interactive)
  (find-file "~/.emacs.d/lisp/init-local.el")
  )

(provide 'init-local-config-change)
;;; init-local-config-change.el ends here
