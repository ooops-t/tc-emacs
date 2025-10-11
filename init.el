;;; -*- lexical-binding: t; -*-
;;; init.el

;; code

(set-language-environment "UTF-8")
;; Hide scroll bar
(set-scroll-bar-mode nil)
;; Hide tool bar
(tool-bar-mode -1)
;; Hide menu bar
(menu-bar-mode -1)
;; Show line number
(global-display-line-numbers-mode)
;; Highlighting current line
(global-hl-line-mode t)
;; Don't blink cursor
(setq blink-cursor-mode nil)
;; No auto save backup file
(setq make-backup-files nil)
;; Refresh/revert file
(setq global-auto-revert-mdoe 1)
;; Disable startup screen and message
(setq inhibit-startup-screen t)
(setq inhibit-startup-message t)
(setq inhibit-startup-echo-area-message t)
;; (setq initial-scratch-message nil)
;; (if (display-graphic-p)
;;     (toggle-frame-maximized))

;; Auto-refresh buffers when files on disk change
(global-auto-revert-mode t)

;; Fonts
(defcustom tc/fonts-default "FantasqueSansM Nerd Font Mono"
  "Default Fonts"
  :type 'string
  :group 'tc/fonts)
(defcustom tc/fonts-chinese "LXGW WenKai Mono"
  "Chinese fonts"
  :type 'string
  :group 'tc/fonts)
(set-face-attribute 'default nil
		    :family tc/fonts-default
		    :foundry "*"
		    :width 'normal
		    :height (* 12 10)
		    :weight 'semi-light)
;; Set Chinese font
;; Reference: http://xahlee.info/emacs/emacs/emacs_set_font_zh.html
(set-fontset-font t 'han
		  (cond
		   ((member tc/fonts-chinese (font-family-list)) tc/fonts-chinese)))

;; Modeline
(use-package telephone-line
  :ensure t
  :init
  (setq telephone-line-primary-left-separator 'telephone-line-cubed-left
	telephone-line-secondary-left-separator 'telephone-line-cubed-hollow-left
	telephone-line-primary-right-separator 'telephone-line-cubed-right
	telephone-line-secondary-right-separator 'telephone-line-cubed-hollow-right)
  (setq telephone-line-height 24
	telephone-line-evil-use-short-tag t)
  :config
  (telephone-line-mode t))

;; Which key
(use-package which-key
  :ensure t
  :config
  (which-key-mode))

;; Magit
(use-package magit
  :defer t
  :ensure t)

;; Format all buffer
(use-package format-all
  :defer t
  :ensure t)

;; Environment
(use-package exec-path-from-shell
  :ensure t
  :config
  (exec-path-from-shell-initialize))

(use-package markdown-mode
  :ensure t
  :defer t
  :mode ("README\\.md\\'" . gfm-mode)
  :init (setq markdown-command "multimarkdown")
  :bind (:map markdown-mode-map
              ("C-c C-e" . markdown-do)))

;; User custom file path
(setq custom-file
      (concat user-emacs-directory "custom.el"))
(when (file-exists-p custom-file)
  (load custom-file))

(add-to-list 'after-init-hook
	     (lambda ()
               (message (concat "emacs (" (number-to-string (emacs-pid)) ") started in " (emacs-init-time)))))

;;; init.el ends here
