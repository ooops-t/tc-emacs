;; -*- lexical-binding: t; -*-
(use-package ef-themes
  :ensure t
  :if (display-graphic-p)
  :config
  (load-theme 'ef-trio-light t))

(provide 'init-theme)
