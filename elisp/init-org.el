(use-package org
  :ensure nil
  :init
  ;;  (modify-all-frames-parameters
  ;;   '((right-divider-width . 40)
  ;;     (internal-border-width . 40)))
  ;;  (dolist (face '(window-divider
  ;;                  window-divider-first-pixel
  ;;                  window-divider-last-pixel))
  ;;    (face-spec-reset-face face)
  ;;    (set-face-foreground face (face-attribute 'default :background)))
  ;;  (set-face-background 'fringe (face-attribute 'default :background))
  :config
  (setq
   ;; Edit settings
   org-auto-align-tags nil
   org-tags-column 0
   org-catch-invisible-edits 'show-and-error
   org-special-ctrl-a/e t
   org-insert-heading-respect-content t

   ;; Org styling, hide markup etc.
   org-hide-emphasis-markers t
   org-pretty-entities t
   org-agenda-tags-column 0)
  ;; Ellipsis styling
  (setq org-ellipsis "…")
  (set-face-attribute 'org-ellipsis nil :inherit 'default :box nil))

(use-package org-modern
  :ensure t
  :config
  (global-org-modern-mode))

(provide 'init-org)

