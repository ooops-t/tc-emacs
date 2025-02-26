;; Haskell
(use-package haskell-mode
  :ensure t)
(add-hook 'haskell-mode-hook 'eglot-ensure)

(provide 'init-haskell)

