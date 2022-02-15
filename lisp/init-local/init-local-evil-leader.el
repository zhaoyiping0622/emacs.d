;;; init-local-evil-leader.el --- define the key binding for evil
;;; Commentary:

;;; Code:
(maybe-require-package 'evil-leader)
;; Enable evil-leader before Evil
(require 'evil-leader)
(evil-leader/set-leader "<SPC>")
(evil-leader/set-key
  "<SPC>" 'execute-extended-command
  "bt" 'switch-to-buffer
  "bl" 'list-buffers
  "bk" 'kill-this-buffer
  "bK" 'kill-buffer
  "h" 'help-command
  )
(global-evil-leader-mode)
(provide 'init-local-evil-leader)
;;; init-local-evil-leader.el ends here
