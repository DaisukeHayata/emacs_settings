(require 'twittering-mode)
;; 起動時パスワード認証 *要 gpgコマンド
(setq twittering-use-master-password t)
;; パスワード暗号ファイル保存先変更 (デフォはホームディレクトリ)
(setq twittering-private-info-file "~/.emacs.d/twittering-mode.gpg")
(setq twittering-status-format "%i @%s / %S %p: \n %T\n\n [%@]%r %R %f%L\n==============================================\n")
(setq twittering-retweet-format " RT @%s: %t")
;; (setq twittering-use-ssl nil)
(setq twittering-icon-mode t)
(setq twittering-scroll-mode nil)
;; (setq twittering-convert-fix-size 40)
(setq twittering-timer-interval 60)
(setq twittering-number-of-tweets-on-retrieval 50)
(setq twittering-update-status-function 'twittering-update-status-from-pop-up-buffer)

;; 起動時に読み込むタイムライン
(setq twittering-initial-timeline-spec-string
      '(":home"
        ":replies"))

;; キーを設定
(add-hook 'twittering-mode-hook
          '(lambda ()
             (define-key twittering-mode-map (kbd "F") 'twittering-favorite)
             (define-key twittering-mode-map (kbd "R") 'twittering-reply-to-user)
             (define-key twittering-mode-map (kbd "Q") 'twittering-organic-retweet)
             (define-key twittering-mode-map (kbd "T") 'twittering-native-retweet)
             (define-key twittering-mode-map (kbd "M") 'twittering-direct-message)
             (define-key twittering-mode-map (kbd "N") 'twittering-update-status-interactive)
             (define-key twittering-mode-map (kbd "C-c C-f") 'twittering-home-timeline)))
