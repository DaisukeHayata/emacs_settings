(require 'skk-autoloads)
(setq Info-default-directory-list
      (cons "/Applications/Emacs.app/Contents/Resources/info" Info-default-directory-list))
(require 'skk-study)
(setq skk-server-host "localhost")
(setq skk-server-portnum 1178)
(setq skk-jisyo-code 'utf-8-unix)
(global-set-key "\C-xj" 'skk-mode)
