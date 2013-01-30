;; load-path を追加する関数を定義
(when (> emacs-major-version 23)
  (defvar user-emacs-directory "~/.emacs.d"))
(defun add-to-load-path (&rest paths)
  (let (path)
    (dolist (path paths paths)
      (let ((default-directory
              (expand-file-name (concat user-emacs-directory path))))
        (add-to-list 'load-path default-directory)
        (if (fboundp 'normal-top-level-add-subdirs-to-load-path)
            (normal-top-level-add-subdirs-to-load-path))))))
(add-to-load-path "elisp" "conf" "auto-install" "elpa" "plugin")
(add-to-list 'exec-path "/usr/local/bin")

(require 'minor-mode-hack)

(require 'init-loader)
(init-loader-load "~/.emacs.d/conf") 

(require 'package)
; Add package-archives
;; (add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
;; (add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
; Initialize
(package-initialize)
; melpa.el
(require 'melpa)

;; (add-to-list 'package-archives
;;'("marmalade" .
;;  "http://marmalade-repo.org/packages/"
;; ))

;; --use init-loader--------------------------------------------------------------------------------
;; (require 'rinari)
