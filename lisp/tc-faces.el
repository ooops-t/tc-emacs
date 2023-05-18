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

;;; Show emacs init time
;;; Reference: <https://emacs.stackexchange.com/questions/432/how-to-change-default-minibuffer-message>
(defun display-startup-echo-area-message ()
  (message (concat "Let's emacs hacking!!! Init time: "
		   (emacs-init-time))))

(if (display-graphic-p)
    (progn
;;; Font
      (defconst default-font-pt 10)
      (defvar font-size 12)
      (set-face-attribute 'default nil
			  :family "Monospace"
			  :font "CodeNewRoman NF"
			  :height (* default-font-pt
				     font-size) ;;; 1/10 pt
			  :weight 'light
			  :underline nil)

;;; Theme
      (use-package github-modern-theme
	:ensure t
	:config
	(load-theme 'github-modern t)))
;;; Terminal
  (load-theme 'manoj-dark t))

;;; Show line number
(defun get-total-lines ()
  (count-lines (point-min)
	       (point-max)))
(defun lines-width (lines)
  (number-to-string (string-bytes
		     (number-to-string lines))))
(setq linum-format
      (concat (concat "% "
		      (lines-width (get-total-lines)))
	      "d "))

(global-linum-mode)

;;; Show the column indicator
(setq-default display-fill-column-indicator-column 80)
(setq-default display-fill-column-indicator-character 9474) ;;; '|'
(global-display-fill-column-indicator-mode t)
;;; Show column number
(column-number-mode nil)

(provide 'tc-faces)
;;; end of tc-faces.el
