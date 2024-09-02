;;; init.el

;; code

;; Init package
(package-initialize)
(setq package-archives '(("gnu" . "https://mirrors.ustc.edu.cn/elpa/gnu/")
                         ("melpa" . "https://mirrors.ustc.edu.cn/elpa/melpa/")
                         ("nongnu" . "https://mirrors.ustc.edu.cn/elpa/nongnu/")))

;; User custom file path
(setq custom-file
      (concat user-emacs-directory "custom.el"))
(load custom-file 'noerror)

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
		      :family "Iosevka Comfy"
		      :foundry "*"
		      :width 'normal
		      :height (* 12 10)
		      :weight 'regular)
  ;; Set Chinese font
  ;; Reference: http://xahlee.info/emacs/emacs/emacs_set_font_zh.html
  (set-fontset-font t 'han
		    (cond
		     ((member "PT Mono" (font-family-list)) "PT Mono")))
  ;; Enable the ligature mode
  (use-package ligature
    :ensure t
    :config
    ;; Enable all Iosevka ligatures in programming modes
    (ligature-set-ligatures 'prog-mode '("<---" "<--"  "<<-" "<-" "->" "-->" "--->" "<->" "<-->" "<--->" "<---->" "<!--"
					 "<==" "<===" "<=" "=>" "=>>" "==>" "===>" ">=" "<=>" "<==>" "<===>" "<====>" "<!---"
					 "<~~" "<~" "~>" "~~>" "::" ":::" "==" "!=" "===" "!=="
					 ":=" ":-" ":+" "<*" "<*>" "*>" "<|" "<|>" "|>" "+:" "-:" "=:" "<******>" "++" "+++"))
    ;; Enables ligature checks globally in all buffers. You can also do it
    ;; per mode with `ligature-mode'.
    (global-ligature-mode t)))

;;; init.el ends here

