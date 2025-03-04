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
;; (if (display-graphic-p)
;;     (toggle-frame-maximized))
;; 
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

(add-to-list 'load-path "~/.emacs.d/elisp/")

(require 'init-font)
(require 'init-modeline)
(require 'init-ziglang)
(require 'init-org)
(require 'init-theme)

;; Company
(use-package company
  :ensure t
  :init
  (setq company-minimum-prefix-length 1)
  (setq company-global-modes '(not erc-mode message-mode eshell-mode))
  (setq company-idle-delay
	(lambda () (if (company-in-string-or-comment) nil 0.3)))
  :hook (prog-mode . global-company-mode))

;; Which key
(use-package which-key
  :ensure t
  :config
  (which-key-mode))

;;; init.el ends here
