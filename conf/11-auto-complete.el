(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/elisp/ac-dict")
(ac-config-default)
(define-key ac-mode-map (kbd "C-/") 'auto-complete)
(ac-flyspell-workaround)
