;;; tc-faces.el

;;; Code:

;; Disable tool bar
(if (fboundp 'tool-bar-mode)
    (tool-bar-mode -1))

;; Disable scroll bar
(if (fboundp 'scroll-bar-mode)
    (set-scroll-bar-mode nil))

;; Disable menu bar
(if (fboundp 'menu-bar-mode)
    (menu-bar-mode -1))

;; Disable startup screen and message
(setq inhibit-startup-screen t)
(setq inhibit-startup-message t)
(setq inhibit-startup-echo-area-message t)
;; (setq initial-scratch-message nil)

;; Show line number
(if (< emacs-major-version 29)
    (global-linum-mode)
  (progn (global-display-line-numbers-mode)
	 (setq display-line-numbers-type 'relative)
	 ;; Highlight current line
	 (global-hl-line-mode)))

;; Fonts
(defcustom tc-font-size 12
  "User define font size."
  :group 'tc
  :type 'int)

(defcustom tc-font-family "FiraCode Nerd Font Mono"
  "User define font family."
  :group 'tc
  :type 'string)

(defcustom tc-font-chinese "LXGW WenKai Mono"
  "User define Chinese font family."
  :group 'tc
  :type 'string)

(when (display-graphic-p)
  (set-face-attribute 'default nil
		      :family tc-font-family
		      :foundry "*"
		      :width 'normal
		      :height (* tc-font-size 10)
		      :weight 'regular)
  ;; Set Chinese font
  ;; Reference: http://xahlee.info/emacs/emacs/emacs_set_font_zh.html
  (set-fontset-font t 'han
		    (cond
		     ((member tc-font-chinese (font-family-list)) tc-font-chinese))))

(provide 'tc-faces)
;;; tc-faces.el ends here
