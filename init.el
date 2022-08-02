;;; Load Configs
(load (locate-user-emacs-file "packages.el"))
(load (locate-user-emacs-file "theme.el"))
(load (locate-user-emacs-file "ui.el"))
(load (locate-user-emacs-file "keymap.el"))
(load (locate-user-emacs-file "buffer.el"))
(load (locate-user-emacs-file "mini-buffer.el"))
(load (locate-user-emacs-file "editing.el"))

;; File System
(setq custom-file (locate-user-emacs-file "custom-vars.el"))
(load custom-file 'noerror 'nomessage)

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

