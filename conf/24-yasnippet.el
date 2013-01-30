(require 'yasnippet)
(yas/initialize)
(yas/load-directory "~/.emacs.d/plugin/yasnippet/snippets")
(yas/load-directory "~/.emacs.d/plugin/yasnippets-rails/rails-snippets")
;; auto complete の候補一覧にyasnippetを追加
(add-to-list 'ac-sources 'ac-source-yasnipp)
