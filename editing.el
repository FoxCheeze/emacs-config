;; Editing

(blink-cursor-mode -1)

;;; Indentation
(setq-default electric-indent-inhibit t) ; Don't reindent previous line
(setq backward-delete-char-untabify-method 'hungry) ; Making Backspace Properly Delete Tabs

;; LSP Performance Enhance
(setq gc-cons-threshold 100000000)
(setq read-process-output-max (* 1024 1024)) ;; 1mb

;; (setq ac-fuzzy-enable t)
;; (setq ac-delay 0.001)

;; Tab key insert tabs
(setq tab-width 4)
