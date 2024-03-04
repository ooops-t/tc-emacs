;;; init.el

;; Code:

;; User custom file path
(setq custom-file
      (concat user-emacs-directory "custom.el"))
(load custom-file 'noerror)

;; Load other configure files
(add-to-list 'load-path "~/.emacs.d/lisp")

(require 'tc-use-package)
(require 'tc-faces)
(require 'tc-org)
(require 'tc-edit)

;;; init.el ends here
