;;; init-local-clipboard.el --- make system clipboard available in no window mode emacs
;;; Commentary:
;;;   only for macos

;;; Code:
;; osx clipboard
(when (and *is-a-mac* (not window-system))
       (defun copy-from-osx ()
         (shell-command-to-string "pbpaste"))

       (defun paste-to-osx (text &optional push)
         (let ((process-connection-type nil))
           (let ((proc (start-process "pbcopy" "*Messages*" "pbcopy")))
             (process-send-string proc text)
             (process-send-eof proc))))

       (setq interprogram-cut-function 'paste-to-osx)
       (setq interprogram-paste-function 'copy-from-osx))
  (provide 'init-local-clipboard)
;;; init-local-clipboard.el ends here
