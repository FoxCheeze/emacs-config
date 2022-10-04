;;; Keymaping

;; Exit/cancel
(global-set-key (kbd "<escape>") 'keyboard-escape-quit)

;; Buffer Switching
(global-set-key (kbd "C-M-j") 'switch-to-prev-buffer)
(global-set-key (kbd "C-M-k") 'switch-to-next-buffer)

;; Commenting
(global-set-key (kbd "C-\\") 'comment-or-uncomment-region)

;; Window Switching
(global-set-key (kbd "C-<tab>") 'other-window)

;; Window Sizing
(define-key evil-normal-state-map (kbd "C-<up>") 'enlarge-window)
(define-key evil-normal-state-map (kbd "C-<down>") 'shrink-window)
(define-key evil-normal-state-map (kbd "C-<right>") 'enlarge-window-horizontally)
(define-key evil-normal-state-map (kbd "C-<left>") 'shrink-window-horizontally)

;; Space leader key
(fox/space-leader-keys
  ; Find
  "f" '(:ignore t :which-key "find")
    "ff" '(ffip :which-key "file")
    "fz" '(counsel-fzf :which-key "file-fuzzy")
    "fs" '(:ignore :which-key "string")
      "fsf" '(counsel-rg :which-key "in-files")

  ; Flycheck
  "F" '(:ignore t :which-key "flycheck")
    "Fl" '(counsel-flycheck :which-key "list-errors")
  
  ; Help
  "H" '(:ignore t :which-key "help")
    "Hf" '(helpful-function :which-key "function")
    "Hk" '(helpful-key :which-key "key")
    "Ho" '(helpful-symbol :which-key "symbol")
    "Hv" '(helpful-variable :which-key "variable")
    
  ; Kill
  "k" '(:ignore t :which-key "kill")
    "kb" '(kill-this-buffer :which-key "this-buffer")
    "kw" '(delete-window :which-key "this-window")

  ; Switch
  "s" '(:ignore t :which-key "switch")
    "sf" '(counsel-switch-buffer :which-key "buffer"))
    
