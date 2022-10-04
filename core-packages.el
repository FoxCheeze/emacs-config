;;; Package
(require 'package)
(setq package-enable-at-startup nil)

;; Repositiories
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(add-to-list 'package-archives '("elpa" . "https://elpa.gnu.org/packages/"))
(add-to-list 'package-archives '("org" . "https://orgmode.org/elpa/"))

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

;;; Company
;; Autocomplete framework for text and LSP
(use-package company
  :after lsp-mode
  :config
  (setq company-idle-delay 0.05)
  (setq company-minimum-prefix-length 1)
  (global-company-mode t)
  :bind (:map company-active-map
	      ("<tab>" . company-complete-selection))
  :hook (lsp-mode . company-mode))

; Company style improvement
(use-package company-box
  :after company
  :hook (company-mode . company-box-mode))

;;; Counsel
;; Improved emacs functionalities eg: find-file
(use-package counsel
  :bind
  (("M-x" . counsel-M-x)
  ("C-x b" . counsel-ibuffer)
  ("C-x C-f" . counsel-find-file)
    :map minibuffer-local-map
    ("C-r" . counsel-minibuffer-history)))

;;; Evil
;; Vim emulation layer
(use-package evil
  :init
  (setq evil-want-C-h-delete t)
  (setq evil-want-C-u-scroll t)
  (setq evil-want-integration t)
  (setq evil-want-keybinding nil)
  (setq evil-undo-system 'undo-redo)
  :config
  (evil-mode 1))

; Evil Collection makes vim bidings work everywhere
(use-package evil-collection
  :after evil
  :config
  (evil-collection-init))

;;; Ffip
;; Recursive file finder (it search into the subfolders)
(use-package find-file-in-project)

;;; Flycheck
;; Code error chcker for LSP
(use-package flycheck
  :init (global-flycheck-mode))

;;; General
;; Helper to manage keybidings with a leader key
(use-package general
  :after which-key
  :config
  (general-create-definer fox/space-leader-keys
    :keymaps '(normal insert visual emacs)
    :prefix "SPC"
    :global-prefix "C-SPC"))

;;; Helpful
;; Imroved help pages for emacs
(use-package helpful
  :bind
  (([remap describe-symbol] . helpful-symbol)
   ([remap describe-variable] . counsel-describe-variable)
   ([remap describe-function] . counsel-describe-function)
   ([remap describe-key] . helpful-key)
   ([remap describe-command] . helpful-command)))

;;; Ivy
;; better minibuffer completition
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

; Enhaced completitions
(use-package ivy-rich
  :after ivy
  :init
  (ivy-rich-mode 1))

;;; Mood Line
;; Simple and clean status line
(use-package mood-line
  :init (mood-line-mode 1))

;;; Treesitter
;; Better systax highlight for coding
(use-package tree-sitter
  :config
  (global-tree-sitter-mode))

(use-package tree-sitter-indent)
; languages grammar bundle
(use-package tree-sitter-langs)

;;; Which-key
;; Graphical helper for key bidings with leader keys
(use-package which-key
  :config (which-key-mode 1))

;;; Lsp
;; Language Server Protocal support for intelisense
(use-package lsp-mode
  :commands (lsp lsp-deferred)
  :init
  (setq lsp-keymap-prefix "C-c l"))

