;; Haskell
(use-package haskell-mode
  :mode "\\.hs\\'"
  :hook (haskell-mode . (lambda ()
                          (require 'haskell-mode)
                          (lsp)
			  (tree-sitter-mode 1)
			  (tree-sitter-hl-mode 1))))  ; or lsp-deferred

(use-package lsp-haskell)

