;;; init-local-evil-leader.el --- define the key binding for evil
;;; Commentary:

;;; Code:
(maybe-require-package 'evil-leader)
;; Enable evil-leader before Evil
(require 'evil-leader)
(evil-leader/set-leader "<SPC>")
(evil-leader/set-key
  "<SPC>" 'execute-extended-command
  ;; buffer commands
  "bt" 'switch-to-buffer
  "bl" 'list-buffers
  "bk" 'kill-this-buffer
  "bK" 'kill-buffer
  ;; file commands
  "fo" 'find-file
  "fn" 'dired-create-empty-file
  "h" 'help-command
  ;; avy mode
  "ss" 'avy-goto-char-timer
  ;; dired sidebar
  "dd" 'dired-sidebar-toggle-sidebar
  )
(global-evil-leader-mode)
(provide 'init-local-evil-leader)
;;; init-local-evil-leader.el ends here
