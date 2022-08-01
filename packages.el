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
(use-package all-the-icons
  :ensure t)

;; Auto Complete
(use-package auto-complete
  :ensure t
  :init
  (setq ac-delay 0.05)
  (progn
    (ac-config-default)
    (global-auto-complete-mode t)))

;; Company
;(use-package company
  ;:ensure t
  ;:config
  ;(setq company-idle-delay 0)
  ;(setq company-minimum-prefix-length 1)
  ;(global-company-mode t))

;; Evil
(use-package evil
  :ensure t
  :init
  (setq evil-want-integration t)
  (setq evil-want-keybinding nil)
  (setq evil-undo-system 'undo-redo)
  :config
  (evil-mode 1))

;; Evil Collection (vim bidings everywhere)
(use-package evil-collection
  :after evil
  :ensure t
  :config
  (evil-collection-init))

;; Flycheck
(use-package flycheck
  :ensure t
  :init (global-flycheck-mode))

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

;; Mood Line
(use-package mood-line
  :ensure t
  :init (mood-line-mode 1))

;; Treemacs
(use-package treemacs
  :ensure t
  :defer t
  :bind (("C-c t" . 'treemacs)))

(use-package treemacs-evil
  :after (treemacs evil)
  :ensure t)

;; Which-key
(use-package which-key
  :ensure t
  :config (which-key-mode 1))

;;; Lsp
(use-package lsp-mode
  :commands (lsp lsp-deferred)
  :init
  (setq lsp-keymap-prefix "C-c l"))

;; GDScript
(use-package gdscript-mode)

;; Python
(use-package lsp-pyright
  :ensure t
  :hook (python-mode . (lambda ()
                          (require 'lsp-pyright)
                          (lsp-deferred))))  ; or lsp-deferred
;;; Themes
(use-package dracula-theme)


