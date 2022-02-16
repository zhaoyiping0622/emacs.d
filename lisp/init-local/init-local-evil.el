;;; init-local-evil.el --- init evil
;;; Commentary:

;;; Code:
;; evil args
(maybe-require-package 'undo-tree)
(maybe-require-package 'evil-collection)
(setq evil-want-C-u-scroll t)
(setq evil-shift-width 2)

(require 'init-local-evil-escape)
(require 'init-local-evil-leader)

;; Enable Evil
(require 'evil)
(evil-mode 1)
(require 'evil-collection)
(evil-collection-init)

;; set redo
(evil-set-undo-system 'undo-tree)
(global-undo-tree-mode 1)
(provide 'init-local-evil)
;;; init-local-evil.el ends here
