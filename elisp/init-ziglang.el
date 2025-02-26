;; Ziglang
(use-package zig-mode
  :ensure t)

;; Eglot
(with-eval-after-load 'eglot
  (add-to-list 'eglot-server-programs
	       '(zig-mode . ("/usr/bin/zls"
			     :initializationOptions (;; :enable_build_on_save t
						     :zig_exe_path "/usr/bin/zig")))))
(add-hook 'zig-mode-hook 'eglot-ensure)

(provide 'init-ziglang)

