;;; Mew
(autoload 'mew "mew" nil t)
(autoload 'mew-send "mew" nil t)
(setq mew-prog-ssl "/opt/local/bin/stunnel")
;; Optional setup (Read Mail menu):
(setq read-mail-command 'mew)
(defun mew-gmail-config (config account name)
 `(,config
   ("pop-ssl"      . t)
   ("pop-ssl-port" . "995")
   ("inbox-folder" . ,(format "+%s" account))
   ("name"        . ,name)
   ("user"        . ,account)
   ("mail-domain" . "gmail.com")
   ("pop-user"    . ,(format "%s@gmail.com" account))
   ("pop-server"  . "pop.gmail.com")
   ;; 証明書がインストールされているディレクトリ
   ("ssl-cert-directory" . "/etc/ssl/certs")
   ;; 証明書がインストールされていないときは以下のコメントを外す
   ("ssl-verify-level" . 0) 
   ("smtp-ssl"     . t)
   ("smtp-ssl-port" . "465")
   ("smtp-user"    . ,(format "%s@gmail.com" account))
   ("smtp-server" . "smtp.gmail.com")))

;;; example@gmail.comの場合
(setq mew-pop-auth 'pass)
(setq mew-config-alist
     (list (mew-gmail-config 'default "dai0217" "")))
(require 'mew-w3m)
(setq exec-path (cons "/usr/local/bin/" exec-path))
(setenv "PATH"
       (concat '"/usr/local/bin:" (getenv "PATH")))
(setq mew-mime-multipart-alternative-list
      '("Text/Html" "Text/Plain" ".*"))
(define-key mew-summary-mode-map "T" 'mew-w3m-view-inline-image)
