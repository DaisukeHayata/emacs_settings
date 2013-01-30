;;; バックアップ設定
(setq make-backup-files nil)
;;; インデントにタブを使用しない
(setq-default indent-tabs-mode nil)
;;; タブの表示幅
(setq-default tab-width 2)
;;; タイトルバーにファイル名フルパス表示
(setq frame-title-format "%f")
;;; 折り返しトグル
(define-key global-map (kbd "C-c l") 'toggle-truncate-lines)
;;; リージョンを削除できるように
(delete-selection-mode t)
;;; 画面移動キー変更
(windmove-default-keybindings)
;;; 履歴を次回起動時にも保存
(savehist-mode 1)
;;; GCを減らす
(setq gc-cons-threshold (* 50 gc-cons-threshold))
;;; ログの記録行数を減らす
(setq message-log-max 10000)
;;; ミニバッファを再起的に呼び出せるようにする
(setq enable-recursive-minibuffers t)
;;; ダイアログボックスを使用しない
(setq use-dialog-box nil)
(defalias 'message-box nil)
;;; 履歴を多く保存する
(setq history-length 1000)
;;; キーストロークをエコーエリアに早く表示
(setq echo-keystrokes 0.1)
;;; 大きいファイルを開く際に警告を発生させる(デフォルトは10MB 25BMに拡張)
(setq large-file-warning-threshold (* 25 1024 1024))
;;; "yes" or "no"を"y" or "n"に
(fset 'yes-or-no-p 'y-or-n-p)
;;;改行と同時にインデントも行う
(global-set-key "\C-m" 'newline-and-indent) 

;;; dired-x
(add-hook 'dired-load-hook (lambda () (load "dired-x")))

;;; ファイル内のカーソル位置を記憶する
(require 'saveplace)
(setq-default save-place t)
(setq save-place-file "/Users/dai0217/.emacs.d/saveplace")

;;; オートコンパイル
(require 'auto-async-byte-compile) 
;;自動バイトコンパイルを無効にするファイル名の正規表現
(setq auto-async-byte-compile-exclude-files-regexp "/junk/") 
(add-hook 'emacs-lisp-mode-hook 'enable-auto-async-byte-compile-mode) 
(add-hook 'emacs-lisp-mode-hook 'turn-on-eldoc-mode) 
(add-hook 'lisp-interaction-mode-hook 'turn-on-eldoc-mode) 
(add-hook 'ielm-mode-hook 'turn-on-eldoc-mode) 
(defvar eldoc-idle-delay 0.2 "")
(setq eldoc-idle-delay 0.2) ;すぐに表示したい
(setq eldoc-minor-mode-string "") ;モードラインにElDocと表示しない

;;; bookmark
(defvar bookmark-save-flag 1 "")
(setq bookmark-save-flag 1)

(require 'lcomp)
(lcomp-install)
