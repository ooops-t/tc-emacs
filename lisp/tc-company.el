;;; tc-company.el

;;; Code:

(use-package company
  :straight (:type git :repo "company-mode/company-mode")
  :init
  (setq company-minimum-prefix-length 1)
  (setq company-idle-delay 0)
  :hook ((prog-mode . global-company-mode)
	 (prog-mode . company-tng-mode)))

(provide 'tc-company)
;;; tc-company.el ends here

