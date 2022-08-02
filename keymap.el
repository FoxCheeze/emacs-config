;;; Keymaping
(global-set-key (kbd "<escape>") 'keyboard-escape-quit)

;; Buffer Switching
(global-set-key (kbd "C-M-j") 'switch-to-prev-buffer)
(global-set-key (kbd "C-M-k") 'switch-to-next-buffer)

;; Buffer Killing
(global-set-key (kbd "C-c k b") 'kill-this-buffer)

;; Commenting
(global-set-key (kbd "C-\\") 'comment-or-uncomment-region)

;; Window Switching
(global-set-key (kbd "C-<tab>") 'other-window)

;; Window Killing
(global-set-key (kbd "C-c k w") 'delete-window)

    
;;; Package dependent
;; (define-key evil-normal-state-map (kbd ">") 'evil-shift-right-line)
;; (define-key evil-normal-state-map (kbd "<") 'evil-shift-left-line)


;; Tab key insert tabs
;; (global-set-key [tab] 'tab-to-tab-stop)
;; (global-set-key (kbd "TAB") 'tab-to-tab-stop)

    
