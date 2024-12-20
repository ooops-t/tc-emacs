;;; init.el

;; code

;; Init package
(require 'package)
;; If you use in Emacs<27, you may want to add something like
;; Reference: https://elpa.gnu.org/
(unless (fboundp 'package-activate-all) (package-initialize))
(package-initialize)
(setq package-archives '(("gnu" . "https://mirrors.ustc.edu.cn/elpa/gnu/")
                         ("melpa" . "https://mirrors.ustc.edu.cn/elpa/melpa/")))
;; Not use this ("nongnu" . "https://mirrors.ustc.edu.cn/elpa/nongnu/")

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

;; Set current language environment
(setq current-language-environment "UTF-8")
;; Encoding and envs
(prefer-coding-system 'utf-8)
(setenv "LANG" "en_US.UTF-8")
(setenv "LC_ALL" "en_US.UTF-8")
(setenv "LC_CTYPE" "en_US.UTF-8")
;; Don't blink cursor
(setq blink-cursor-mode nil)
;; Show line number
(global-display-line-numbers-mode)
;; Hide scroll bar
(set-scroll-bar-mode nil)
;; Hide tool bar
(tool-bar-mode -1)
;; No auto save backup file
(setq make-backup-files nil)
;; Refresh/revert file
(setq global-auto-revert-mdoe 1)

;; Set fonts
(when (display-graphic-p)
  (defcustom tc/fonts-default "Iosevka"
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
		      :weight 'regular)
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

;;; init.el ends here

