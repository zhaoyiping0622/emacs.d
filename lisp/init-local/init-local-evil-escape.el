;;; init-local-evil-escape.el --- map kj to escape key
;;; Commentary:

;;; Code:
(maybe-require-package 'evil-escape)
(require 'evil-escape)

;; Enable evil-escape
(evil-escape-mode)

;; evil-escape args
(setq-default evil-escape-key-sequence "kj")
(setq-default evil-escape-delay 0.2)

(provide 'init-local-evil-escape)
;;; init-local-evil-escape.el ends here
