;;; init-local.el --- customize config
;;; Commentary:

;; Set up package.el to work with MELPA
(require 'package)

;;; Code:

(setq-default tab-width 2)

(maybe-require-package 'evil)
(maybe-require-package 'keyfreq)

(add-to-list 'load-path (expand-file-name "lisp/init-local" user-emacs-directory))

(maybe-require-package 'dired-sidebar)
(require 'dired-sidebar)

(require 'init-local-keyfreq)
(require 'init-local-evil)

;; display line number
(global-display-line-numbers-mode)
(require 'init-local-clipboard)

(defun open-local-config ()
  "open this file"
  (interactive)
  (find-file "~/.emacs.d/lisp/init-local.el")
  )

;; the last line of local config
(provide 'init-local)
;;; init-local.el ends here
