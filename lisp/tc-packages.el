(require 'package)

;;; Reference: <https://emacs.stackexchange.com/questions/233/how-to-proceed-on-package-el-signature-check-failure>
;;; When the emacs version is 27 or later, can't set
(unless (> emacs-major-version 25)
  (setq package-check-signature nil))

;;; "nongnu" . "http://mirrors.ustc.edu.cn/elpa/nongnu/"
;;; "gnu" . "http://mirrors.ustc.edu.cn/elpa/gnu/"
;;; "melpa" . "http://mirrors.ustc.edu.cn/elpa/melpa/"
;;; (setq package-archives '(("gnu" . "http://mirrors.ustc.edu.cn/elpa/gnu/")
;;;                          ("melpa" . "http://mirrors.ustc.edu.cn/elpa/melpa/")
;;; 			 ("nongnu" . "http://mirrors.ustc.edu.cn/elpa/nongnu/")))

(setq package-archives
      '(("melpa" . "http://mirrors.ustc.edu.cn/elpa/melpa/")))

;;; Install use-package packages manager
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(provide 'tc-packages)
;;; end of tc-packages.el
