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
(defcustom tc-font-size 16
  "User define font size."
  :group 'tc
  :type 'int)

(defcustom tc-font-family "Fira Code"
  "User define font family."
  :group 'tc
  :type 'string)

(defcustom tc-font-for-cjk "LXGW WenKai Mono"
  "User define unicode font family."
  :group 'tc
  :type 'string)

(when (display-graphic-p)
  (set-face-attribute 'default nil
		      :font (font-spec
			     :family tc-font-family
			     :size tc-font-size))
  ;; Set unicode character set
  (set-fontset-font t 'unicode (font-spec
				:family tc-font-family
				:size tc-font-size))
  ;; Set cjk character set
  (set-fontset-font t '(#x2ff0 . #x9ffc) (font-spec
					  :family tc-font-for-cjk
					  :size tc-font-size)))

(provide 'tc-faces)
;;; tc-faces.el ends here
