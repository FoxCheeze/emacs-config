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

