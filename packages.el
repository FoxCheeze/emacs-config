;;; Package
(require 'package)
(setq package-enable-at-startup nil)

;; Repositiories
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(add-to-list 'package-archives '("elpa" . "https://elpa.gnu.org/packages/"))

(package-initialize)

;; Install use-package
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)

;;; Packages

;; All the Icons
(use-package all-the-icons)

;; Company
(use-package company
  :config
  (setq company-idle-delay 0.05)
  (setq company-minimum-prefix-length 1)
  (global-company-mode t))

;; Counsel
(use-package counsel
  :bind
  (("M-x" . counsel-M-x)
  ("C-x b" . counsel-ibuffer)
  ("C-x C-f" . counsel-find-file)
    :map minibuffer-local-map
    ("C-r" . counsel-minibuffer-history)))

;; Evil
(use-package evil
  :init
  (setq evil-want-C-h-delete t)
  (setq evil-want-C-u-scroll t)
  (setq evil-want-integration t)
  (setq evil-want-keybinding nil)
  (setq evil-undo-system 'undo-redo)
  :config
  (evil-mode 1))

;; Evil Collection (vim bidings everywhere)
(use-package evil-collection
  :after evil
  :config
  (evil-collection-init))

;; Ffip
(use-package find-file-in-project)

;; Flx
(use-package flx)

(use-package company-flx
  :after (company flx))
    (with-eval-after-load 'company
    (company-flx-mode +1))

(use-package flx-ido
  :after flx)

    (require 'flx-ido)
    (ido-mode 1)
    (ido-everywhere 1)
    (flx-ido-mode 1)
    ;; disable ido faces to see flx highlights.
    (setq ido-enable-flex-matching t)
    (setq ido-use-faces nil)

;; Flycheck
(use-package flycheck
  :init (global-flycheck-mode))

;; General
(use-package general
  :after which-key
  :config
  (general-create-definer fox/space-leader-keys
    :keymaps '(normal insert visual emacs)
    :prefix "SPC"
    :global-prefix "C-SPC"))

;; Helpful
(use-package helpful
  :bind
  (([remap describe-symbol] . helpful-symbol)
   ([remap describe-variable] . counsel-describe-variable)
   ([remap describe-function] . counsel-describe-function)
   ([remap describe-key] . helpful-key)
   ([remap describe-command] . helpful-command)))

;; Ivy
(use-package ivy
  :bind (("C-s" . swiper)
    :map ivy-minibuffer-map
    ("TAB" . ivy-alt-done)
    ("C-l" . ivy-alt-done)
    ("C-j" . ivy-next-line)
    ("C-k" . ivy-previous-line)
    :map ivy-switch-buffer-map
    ("C-k" . ivy-previous-line)
    ("C-l" . ivy-done)
    ("C-d" . ivy-switch-buffer-kill)
    :map ivy-reverse-i-search-map
    ("C-k" . ivy-previous-line)
    ("C-d" . ivy-reverse-i-search-kill))
  :config
  (ivy-mode 1))

(ivy-mode 1)

(use-package ivy-rich
  :after ivy
  :init
  (ivy-rich-mode 1))

;; Mood Line
(use-package mood-line
  :init (mood-line-mode 1))

;; Treemacs
(use-package treemacs
  :defer t)

(use-package treemacs-evil
  :after (treemacs evil))

;; Treesitter
(use-package tree-sitter
  :config
  (global-tree-sitter-mode))

(use-package tree-sitter-indent)
(use-package tree-sitter-langs)

;; Vterm
(use-package vterm)

;; Which-key
(use-package which-key
  :config (which-key-mode 1))

;;; Lsp
(use-package lsp-mode
  :commands (lsp lsp-deferred)
  :init
  (setq lsp-keymap-prefix "C-c l"))

;; C#
(use-package csharp-mode
  :mode "\\.cs\\'"
  :config
  (add-to-list 'auto-mode-alist '("\\.cs\\'" . csharp-tree-sitter-mode))
  :hook (csharp-mode . lsp-deferred))

;; GDScript
(use-package gdscript-mode
  :mode "\\.gd\\'"
  :hook (gdscript-mode . lsp-deferred))

;; Python
(use-package python-mode
  :mode "\\.py\\'"
  :hook (python-mode . lsp-deferred))  ; or lsp-deferred
  

;; (use-package lsp-pyright)

;; Rust
(use-package rustic
  :mode "\\.rs\\'"
  :hook (rustic-mode . lsp-deferred))

;;; Themes
(use-package doom-themes
  :config
  (setq doom-themes-enable-bold t    ; if nil, bold is universally disabled
        doom-themes-enable-italic nil) ; if nil, italics is universally disabled

  (setq doom-themes-treemacs-theme "doom-colors") ; use "doom-colors" for less minimal icon theme
  (doom-themes-treemacs-config))


