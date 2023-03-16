(if (< emacs-major-version 27)
    ;;; Reference: <https://elpa.gnu.org/>
    (unless (fboundp 'package-activate-all)
      (package-initialize))
  (package-initialize))

;;; Load configs path
(add-to-list 'load-path "~/.emacs.d/lisp")

;;; Save custom cariables to other file
(setq custom-file
      (concat user-emacs-directory "custom.el"))
(load custom-file 'noerror)

(require 'tc-packages)

(require 'tc-tools)

(require 'tc-faces)

(require 'tc-edits)
