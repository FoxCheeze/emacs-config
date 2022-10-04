;;; Python Major Mode

(use-package lsp-pyright)
(use-package python-mode
  :mode "\\.py\\'"
  :hook (python-mode . (lambda ()
                          (require 'python-mode)
                          (lsp)
			  (tree-sitter-mode 1)
			  (tree-sitter-hl-mode 1))))  ; or lsp-deferred
  
