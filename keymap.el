;;; Keymaping
(global-set-key (kbd "<escape>") 'keyboard-escape-quit)

;; Buffer Switching
(global-set-key (kbd "C-j") 'switch-to-prev-buffer)
(global-set-key (kbd "C-k") 'switch-to-next-buffer)

;; Buffer Killing
(global-set-key (kbd "C-c k b") 'kill-this-buffer)

;; Commenting
(global-set-key (kbd "C-/") 'comment-or-uncomment-region)

;; Window Switching
(global-set-key (kbd "C-<tab>") 'other-window)

;; Window Killing
(global-set-key (kbd "C-c k w") 'delete-window)

;; Tab key insert tabs
;; (global-set-key [tab] 'tab-to-tab-stop)
;; (global-set-key (kbd "TAB") 'tab-to-tab-stop)

