;; Editing

(blink-cursor-mode -1)

;;; Indentation
(setq-default electric-indent-inhibit t) ; Don't reindent previous line
(setq backward-delete-char-untabify-method 'hungry) ; Making Backspace Properly Delete Tabs

;; Tab key insert tabs
(setq tab-width 4)
