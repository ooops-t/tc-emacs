;; Set fonts
(when (display-graphic-p)
  (defcustom tc/fonts-default "ComicShannsMono Nerd Font Mono"
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
;;		      :width 'normal
		      :height (* 12 10)
		      :weight 'semi-light)
  ;; Set Chinese font
  ;; Reference: http://xahlee.info/emacs/emacs/emacs_set_font_zh.html
  (set-fontset-font t 'han
		    (cond
		     ((member tc/fonts-chinese (font-family-list)) tc/fonts-chinese)))
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

(provide 'init-font)

