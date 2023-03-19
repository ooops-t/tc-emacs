(require 'use-package)

;;; Format source code
(use-package format-all
  :ensure t
  :config
  (add-hook 'prog-mode-hook #'format-all-ensure-formatter))

;;; Client for LSP
(use-package eglot
  :ensure t
  :hook
  (c-mode . eglot-ensure)
  (c++-mode . eglot-ensure))

(provide 'tc-programs)
;;; end of tc-programs
