;; -*- lexical-binding: t; -*-
(use-package ef-themes
  :ensure t
  :if (display-graphic-p)
  :config
  (load-theme 'ef-trio-dark t))

(provide 'init-theme)
