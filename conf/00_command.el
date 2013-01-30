;;; コマンドキーをmetaキーに設定
(setq ns-command-modifier (quote meta))
(setq ns-alternate-modifier (quote super))
(defvar mac-pass-control-to-system nil "controlキーの制御" )
(setq mac-pass-control-to-system nil)

;;; 後方削除
(global-set-key (kbd "C-h") 'delete-backward-char)

;;; find-functionをキー割り当てする
(find-function-setup-keys)

(cua-mode t)
(setq cua-enable-cua-keys nil) ; そのままだと C-x が切り取りになってしまったりするので無効化

(global-set-key "\C-z" nil)
