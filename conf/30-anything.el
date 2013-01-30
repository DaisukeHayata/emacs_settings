(require 'anything-startup)
(require 'anything)
(require 'anything-rcodetools)
(require 'emoji)

(require 'anything-config)
(add-to-list 'anything-sources 'anything-c-source-recentf 'anything-c-source-emacs-commands)

;;; Command to get all RI entries.
(setq rct-get-all-methods-command "PAGER=cat /use/bin/qri -l")
(define-key anything-map "\C-z" 'anything-execute-persistent-action)
