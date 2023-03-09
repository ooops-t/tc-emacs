(if (< emacs-major-version 27)
    ;;; Reference: <https://elpa.gnu.org/>
    (unless (fboundp 'package-activate-all)
      (package-initialize))
  (package-initialize))

;;; Load configs path
(add-to-list 'load-path "~/.emacs.d/lisp")

(require 'tc-packages)

(require 'tc-faces)

(require 'tc-edits)
