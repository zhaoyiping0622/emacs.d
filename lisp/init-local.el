;;; init-local.el --- customize config

;; Set up package.el to work with MELPA
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(package-initialize)
(package-refresh-contents)

(maybe-require-package 'evil)
(maybe-require-package 'keyfreq)

(add-to-list 'load-path (expand-file-name "lisp/init-local" user-emacs-directory))
(require 'init-local-keyfreq)
(require 'init-local-evil)

;; display line number
(global-display-line-numbers-mode)
(require 'init-local-clipboard)

;; the last line of local config
(provide 'init-local)
;;; init-local.el ends here
