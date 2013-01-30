;;; auto-install.elの設定
(require 'auto-install)
(setq auto-install-directory "~/.emacs.d/auto-install/")
(auto-install-update-emacswiki-package-name t)
(auto-install-compatibility-setup)
(defvar ediff-window-setup-function 'ediff-setup-windows-plain "")
