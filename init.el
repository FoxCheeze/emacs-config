;;; Load Configs
(load (locate-user-emacs-file "core-packages.el")) ; Load this first

(load (locate-user-emacs-file "keymap.el"))
(load (locate-user-emacs-file "themes.el"))
(load (locate-user-emacs-file "csharp.el"))
(load (locate-user-emacs-file "gdscript.el"))
(load (locate-user-emacs-file "haskell.el"))
(load (locate-user-emacs-file "markdown.el"))
(load (locate-user-emacs-file "org.el"))
(load (locate-user-emacs-file "python.el"))
(load (locate-user-emacs-file "rust.el"))

;; File System
(setq custom-file (locate-user-emacs-file "custom-vars.el"))
(load custom-file 'noerror 'nomessage)

;; Mini Buffer
(setq history-length 25)
(savehist-mode 1)

;; Auto Pair
(electric-pair-mode t)

; Making Backspace Properly Delete Tabs
(setq backward-delete-char-untabify-method 'hungry)

;; LSP Performance Enhance
(setq gc-cons-threshold 200000000)
(setq read-process-output-max (* 2048 2048))

(setq tab-width 4)

;; Auto Reload from disck changes
(setq global-auto-revert-non-file-buffers t)
(global-auto-revert-mode 1)

;;; Set emacs's files locations
;; Auto save files
(setq backup-by-copying t      ; don't clobber symlinks
      backup-directory-alist '(("." . "~/.config/emacs/auto-save-files"))    ; don't litter my fs tree
      delete-old-versions t
      kept-new-versions 6
      kept-old-versions 2
      version-control t)       ; use versioned backups
(setq auto-save-file-name-transforms
      `((".*" "~/.config/emacs/auto-save-files/" t)))

