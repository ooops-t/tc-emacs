(use-package typst-ts-mode
  :ensure t
  :straight (:type git :host codeberg :repo "meow_king/typst-ts-mode")
  :mode ("\\.typ?\\'" . typst-ts-mode)
  :config
  (add-to-list 'treesit-language-source-alist '(typst "https://github.com/uben0/tree-sitter-typst"))
  (treesit-install-language-grammar 'typst))

(use-package websocket
  :ensure)
(use-package typst-preview
  :ensure t
  :straight (:type git :host github :repo "havarddj/typst-preview.el")
  :config
  (setq typst-preview-browser "default"))

(provide 'init-typst)
;;; init-typst.el ends there

