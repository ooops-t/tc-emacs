;;; tc-edit.el

;;; Code:

;; Encoding and envs
(prefer-coding-system 'utf-8)
(setenv "LANG" "en_US.UTF-8")
(setenv "LC_ALL" "en_US.UTF-8")
(setenv "LC_CTYPE" "en_US.UTF-8")

;; Not auto save backup file
(setq make-backup-files nil)

;; Refresh/revert file
(global-auto-revert-mode 1)

;; Move line
;; Reference: https://www.emacswiki.org/emacs/MoveLine
(defun tc/move-line (n)
  "Move the current line up or down by N lines."
  (interactive "p")
  (setq col (current-column))
  (beginning-of-line) (setq start (point))
  (end-of-line) (forward-char) (setq end (point))
  (let ((line-text (delete-and-extract-region start end)))
    (forward-line n)
    (insert line-text)
    ;; restore point to original column in moved line
    (forward-line -1)
    (forward-char col)))

(defun tc/move-line-up (n)
  "Move the current line up by N lines."
  (interactive "p")
  (tc/move-line (if (null n) -1 (- n))))

(defun tc/move-line-down (n)
  "Move the current line down by N lines."
  (interactive "p")
  (tc/move-line (if (null n) 1 n)))

(global-set-key (kbd "M-<up>") 'tc/move-line-up)
(global-set-key (kbd "M-<down>") 'tc/move-line-down)

(provide 'tc-edit)
;;; tc-edit.el ends there
