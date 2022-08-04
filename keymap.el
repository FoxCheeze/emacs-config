;;; Keymaping
(global-set-key (kbd "<escape>") 'keyboard-escape-quit)

;; Buffer Switching
(global-set-key (kbd "C-M-j") 'switch-to-prev-buffer)
(global-set-key (kbd "C-M-k") 'switch-to-next-buffer)

;; Commenting
(global-set-key (kbd "C-\\") 'comment-or-uncomment-region)

;; Window Switching
(global-set-key (kbd "C-<tab>") 'other-window)

(fox/space-leader-keys
  ; Find
  "f" '(:ignore t :which-key "find")
    "ff" '(find-file :which-key "file")

  ; Flycheck
  "F" '(:ignore t :which-key "flycheck")
    "Fl" '(flycheck-list-errors :which-key "list-errors")
  
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

  ; Treemacs
  "T" '(treemacs :which-key "treemacs"))

    
;;; Package dependent
;; (define-key evil-normal-state-map (kbd ">") 'evil-shift-right-line)
;; (define-key evil-normal-state-map (kbd "<") 'evil-shift-left-line)

;; Tab key insert tabs
;; (global-set-key [tab] 'tab-to-tab-stop)
;; (global-set-key (kbd "TAB") 'tab-to-tab-stop)

    
