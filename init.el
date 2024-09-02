;;; init.el

;; code

;; Disable startup screen and message
(setq inhibit-startup-screen t)
(setq inhibit-startup-message t)
(setq inhibit-startup-echo-area-message t)
;; (setq initial-scratch-message nil)
(if (display-graphic-p)
    (toggle-frame-maximized))

;; Set current languate environment
(setq current-language-environment "UTF-8")
;; Don't blink cursor
(setq blink-cursor-mode nil)
;; Show line number
(global-display-line-numbers-mode)
;; Hide scroll bar
(set-scroll-bar-mode nil)
;; Hide tool bar
(tool-bar-mode -1)

;; Set fonts
(when (display-graphic-p)
  (set-face-attribute 'default nil
		      :family "PT Mono"
		      :foundry "*"
		      :width 'normal
		      :height (* 12 10)
		      :weight 'regular)
  ;; Set Chinese font
  ;; Reference: http://xahlee.info/emacs/emacs/emacs_set_font_zh.html
  (set-fontset-font t 'han
		    (cond
		     ((member "PT Mono" (font-family-list)) "PT Mono"))))

;;; init.el ends here

