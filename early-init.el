;;; -*- lexical-binding: t; -*-
;;; early-init.el

;; code

;; Config GC
(setq gc-cons-threshold most-positive-fixnum)
(setq read-process-output-max (* 2 1024 1024)) ; 1024kb

;; Native compilation and Byte compilation
(if (and (featurep 'native-compile)
	 (fboundp 'native-comp-available-p)
	 (native-comp-available-p))
    (setq package-native-compile t)
  (setq features (delq 'native-compile features)))
    

;; Init package
(require 'package)
(setq package-archives '(("gnu" . "https://mirrors.ustc.edu.cn/elpa/gnu/")
                         ("melpa" . "https://mirrors.ustc.edu.cn/elpa/melpa/")))
;; If you use in Emacs<27, you may want to add something like
;; Reference: https://elpa.gnu.org/
(unless (fboundp 'package-activate-all) (package-initialize))
(package-initialize)
(unless package-archive-contents
  (package-refresh-contents))

;; Use-package
(unless (package-installed-p 'use-package)
  (package-install 'use-package))
(setq use-package-compute-statistics t)

;;; early-init.el ends here
