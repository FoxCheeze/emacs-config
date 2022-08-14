;; Editing

(blink-cursor-mode -1)

;; Auto Pair
(electric-pair-mode t)

;;; Indentation
;; (setq-default electric-indent-inhibit t) ; Don't reindent previous line
(setq backward-delete-char-untabify-method 'hungry) ; Making Backspace Properly Delete Tabs

;; LSP Performance Enhance
(setq gc-cons-threshold 200000000)
(setq read-process-output-max (* 1024 1024)) ;; 1mb
(setq company-flx-limit 100)

(setq tab-width 4)
