;; C#
(use-package csharp-mode
  :mode "\\.cs\\'"
  :config
  (add-to-list 'auto-mode-alist '("\\.cs\\'" . csharp-tree-sitter-mode))
  :hook (csharp-mode . (lambda ()
                          (require 'csharp-mode)
                          (lsp)
			  (tree-sitter-mode 1)
			  (tree-sitter-hl-mode 1))))  ; or lsp-deferred

