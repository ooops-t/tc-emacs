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

(provide 'tc-faces)
;;; end of tc-faces.el
