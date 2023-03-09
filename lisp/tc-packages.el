(require 'package)

;;; Reference: <https://emacs.stackexchange.com/questions/233/how-to-proceed-on-package-el-signature-check-failure>
(setq package-check-signature nil)

;;; "nongnu" . "http://mirrors.ustc.edu.cn/elpa/nongnu/"
;;; "gnu" . "http://mirrors.ustc.edu.cn/elpa/gnu/"
;;; "melpa" . "http://mirrors.ustc.edu.cn/elpa/melpa/"
(setq package-archives '(("gnu" . "http://mirrors.ustc.edu.cn/elpa/gnu/")
                         ("melpa" . "http://mirrors.ustc.edu.cn/elpa/melpa/")
			 ("nongnu" . "http://mirrors.ustc.edu.cn/elpa/nongnu/")))
(package-refresh-contents)

(provide 'tc-packages)
;;; end of tc-packages.el
