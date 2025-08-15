;;; -*- lexical-binding: t; -*-

;; Init package 
(require 'package)
;; If you use in Emacs<27, you may want to add something like
;; Reference: https://elpa.gnu.org/
(unless (fboundp 'package-activate-all) (package-initialize))
(package-initialize)
(setq package-archives '(("gnu" . "https://mirrors.ustc.edu.cn/elpa/gnu/")
                         ("melpa" . "https://mirrors.ustc.edu.cn/elpa/melpa/")))
;; Not use this ("nongnu" . "https://mirrors.ustc.edu.cn/elpa/nongnu/")

(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name
        "straight/repos/straight.el/bootstrap.el"
        (or (bound-and-true-p straight-base-dir)
            user-emacs-directory)))
      (bootstrap-version 7))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/radian-software/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

(straight-use-package 'use-package)

(provide 'init-package)

