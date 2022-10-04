;;; Rust Major Mode

(use-package rustic
  :hook (rustic . (lambda ()
                          (require 'rustic)
                          (lsp)
			  (tree-sitter-mode 1)
			  (tree-sitter-hl-mode 1))))  ; or lsp-deferred
