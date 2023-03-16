;;; No startup screen
(setq inhibit-startup-screen t)

;;; No startup message
(setq inhibit-startup-message t)
(setq inhibit-startup-echo-area-message t)

;;; No message in scratch buffer
(setq initial-scratch-message nil)

;;; No menu bar
(if (fboundp 'menu-bar-mode)
    (menu-bar-mode -1))

;;; No tool bar
(if (fboundp 'tool-bar-mode)
    (tool-bar-mode -1))

;;; No scroll bar
(if (fboundp 'scroll-bar-mode)
    (set-scroll-bar-mode nil))

;;; Font
(defconst default-font-pt 10)
(defvar font-size 11)
(set-face-attribute 'default nil
		    :family "Monospace"
		    :font "Ubuntu Mono"
		    :height (* default-font-pt
			       font-size) ;;; 1/10 pt
		    :weight 'light
		    :underline nil)

;;; Theme
(use-package github-modern-theme
  :ensure t
  :config
  (load-theme 'github-modern t))

(provide 'tc-faces)
;;; end of tc-faces.el
