(require 'eshell-pop)
(require 'esh-myparser)
(require 'esh-cmdline-stack)
(global-set-key (kbd "C-x z") 'shell-pop)
(setq shell-pop-window-height 100)
(defun eshell-parser/z (str) (eshell-parser/b str "zsh"))
(progn
 (defmacro eval-after-load* (name &rest body)
   (declare (indent 1))
   `(eval-after-load ,name '(progn ,@body)))
 (defun eshell-disable-unix-command-emulation ()
   (eval-after-load* "em-ls"
     (fmakunbound 'eshell/ls))
   (eval-after-load* "em-unix"
     (mapc 'fmakunbound '(eshell/agrep
                          eshell/basename
                          eshell/cat
                          eshell/cp
                          eshell/date
                          eshell/diff
                          eshell/dirname
                          eshell/du
                          eshell/egrep
                          eshell/fgrep
                          eshell/glimpse
                          eshell/grep
                          eshell/info
                          eshell/ln
                          eshell/locate
                          eshell/make
                          eshell/man
                          eshell/mkdir
                          eshell/mv
                          eshell/occur
                          eshell/rm
                          eshell/rmdir
                          eshell/su
                          eshell/sudo
                          eshell/time))))
 (eshell-disable-unix-command-emulation))
