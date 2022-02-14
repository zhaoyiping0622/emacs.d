;; Set up package.el to work with MELPA
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(package-initialize)
(package-refresh-contents)

;; Download Evil
(unless (package-installed-p 'evil)
  (package-install 'evil))

;; Enable Evil
(require 'evil)
(evil-mode 1)

;; Download evil-escape
(unless (package-installed-p 'evil-escape)
  (package-install 'evil-escape))

;; evil-escape args
(setq-default evil-escape-key-sequence "kj")
(setq-default evil-escape-delay 0.2)

;; Enable evil-escape
(evil-escape-mode)

;; the last line of local config
(provide 'init-local)
;;; init-local.el ends here
