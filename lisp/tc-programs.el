(require 'use-package)

;;; Format source code
(use-package format-all
  :ensure t
  :config
  (add-hook 'prog-mode-hook #'format-all-ensure-formatter))

(provide 'tc-programs)
;;; end of tc-programs
