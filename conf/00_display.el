;; 起動時の画面を消す
(setq inhibit-startup-message t)
(tool-bar-mode -1)
;;; フォント
(let* ((size 14)
       (asciifont "Ricty")  ; ASCII fonts
       (jpfont "Ricty")     ; Japanese fonts
       (h (* size 10))
       (fontspec (font-spec :family asciifont))
       (jp-fontspec (font-spec :family jpfont)))
  (set-face-attribute 'default nil :family asciifont :height h)
  (set-fontset-font nil 'japanese-jisx0213.2004-1 jp-fontspec)
  (set-fontset-font nil 'japanese-jisx0213-2 jp-fontspec)
  (set-fontset-font nil 'katakana-jisx0201 jp-fontspec)
  (set-fontset-font nil '(#x0080 . #x024F) fontspec) 
  (set-fontset-font nil '(#x0370 . #x03FF) fontspec))

;;; tab space 可視化
(setq whitespace-style
      '(tabs tab-mark spaces space-mark))
(setq whitespace-space-regexp "\\(\x3000+\\)")
(setq whitespace-display-mappings
      '((space-mark ?\x3000 [?\□])
        (tab-mark   ?\t   [?\xBB ?\t])
        ))
(require 'whitespace)
(global-whitespace-mode 1)
(set-face-foreground 'whitespace-space "LightSlateGray")
(set-face-background 'whitespace-space "DarkSlateGray")
(set-face-foreground 'whitespace-tab "LightSlateGray")
(set-face-background 'whitespace-tab "DarkSlateGray")

;;;フレーム透過
(set-frame-parameter (selected-frame) 'alpha '(96 100))

;; フレームパラメータ初期値の設定
(setq default-frame-alist
      (append (list
               ;; default color
               '(background-color . "#2b2b2b") ; 背景色
               '(foreground-color . "snow")  ; 文字色
               ;; cursor
               '(cursor-color . "black") ; カーソル色
               '(cursor-type . box)     ; カーソル形状
               '(cursor-height . 4)     ; カーソルの高さ
               ;; mouse cursor
               '(mouse-color . "black") ; マウスカーソル色
               ;; border
               '(border-color . "snow") ; 縁の色
               ;; scroll bar
               '(vertical-scroll-bars . nil) ; スクロールバー
               ;; size
;;               '(width . 50)  ; 横幅(桁数)
;;               '(height . 100) ; 高さ(行数)
               ;; location
               '(left . 0) ; 左上隅 x 座標
               '(top . 0)    ; 左上隅 y 座標
               )
              default-frame-alist))
(auto-fill-mode -1)
(set-frame-height (next-frame) 53)
(set-frame-width (next-frame) 99)

(when (require 'color-theme nil t)
  (color-theme-initialize))

;;; 現在行に色をつける
(global-hl-line-mode 1)

;; 行番号表示
(setq my-linum-file-extension '("js"))
(dolist (hook (list
              'text-mode-hook
              'c-mode-hook
              'emacs-lisp-mode-hook
              'lisp-interaction-mode-hook
              'lisp-mode-hook
              'rhtml-mode-hook
              'html-mode-hook
              'yaml-mode-hook
              'java-mode-hook
              'ruby-mode-hook
              'sh-mode-hook
              'javascript-mode-hook
              'fundamental-mode-hook
              ))
(add-hook hook (lambda () (linum-mode t))))
;;(global-linum-mode 1)
(setq linum-format "%d")

(line-number-mode 1)
(column-number-mode 1)

;;; リージョンに色を付ける
(transient-mark-mode 1)

;;; 現在の関数名を常に表示
(which-func-mode 1)
(setq which-func-mode t)
(delete (assoc 'which-func-mode mode-line-format) mode-line-format)
(setq-default header-line-format '(which-func-mode ("" which-func-format)))

;;;釣り合いのとれる括弧をハイライトする
(show-paren-mode 1)

(require 'jaspace)



