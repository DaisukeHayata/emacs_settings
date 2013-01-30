 (defun js-beautify-region()
   "Run js-beautify on the current region."
   (interactive)
   (save-excursion
     (shell-command-on-region (point) (mark) "js-beautify -i" nil t)))
