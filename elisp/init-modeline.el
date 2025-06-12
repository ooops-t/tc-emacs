(setq display-time-day-and-date t)
(setq display-time-24hr-format t)
(setq display-time-default-load-average nil)
(setq display-time-format "%Y-%m-%d %H:%M")
(setq display-time-mail-string "")
(display-time-mode)

(defun tc/simple-mode-line-render (left right)
  "Return a string of `window-width' length containing LEFT, and RIGHT
aligned respectively."
  (let* ((available-width (- (window-width) (length left) 2)))
    (format (format " %%s %%%ds " available-width) left right)))

(defun tc/file-name ()
    "Return file name or the `%b' for mode line"
  (let ((file-name (buffer-file-name)))
    (if file-name
	file-name
      "%b")))

(setq-default mode-line-format
      '((:eval (tc/simple-mode-line-render
		;; left
		(format-mode-line (concat "[%*] [%m] " (tc/file-name) ":%I"))
		;; right
		(format-mode-line (concat "%l/%c [" display-time-string "]"))))))

(provide 'init-modeline)
