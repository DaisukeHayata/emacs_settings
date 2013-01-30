;;; ディレクトリ内のファイル名を自由自在に編集する
(require 'wdired)
(define-key dired-mode-map "r" 'wdired-change-to-wdired-mode)
