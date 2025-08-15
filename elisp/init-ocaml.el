;; -*- lexical-binding: t; -*-
(add-to-list 'load-path "/home/hcfa/nfs/personal/ocaml/opam-path/default/share/emacs/site-lisp")
(require 'ocp-indent)

(use-package tuareg
  :ensure t
  :mode (("\\.ocamlint\\'" . tuareg-mode)))

(use-package eglot
  :ensure t
  :defer t)

(use-package ocaml-eglot
  :ensure t
  :after tuareg
  :defer t
  :hook
  (tuareg-mode . ocaml-eglot)
  (ocaml-eglot . eglot-ensure))

;;(use-package merlin
;;  :ensure t
;;  :config
;;  (setq merlin-command 'opam)
;;  :hook
;;  (tuareg-mode . merlin-mode)
;;  (caml-mode . merlin-mode))
;;
(provide 'init-ocaml)

