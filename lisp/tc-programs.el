(require 'use-package)

;;; Tab
(setq tab-stop-list nil)
(setq-default indent-tabs-mode t)
(setq-default tab-width 8)

;;; C/C++ mode
(defvaralias 'c-basic-offset 'tab-width)

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
