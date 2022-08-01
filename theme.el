;;; Theme

;; Completions
(setq modus-themes-completions '(minimal))

;; Selection Region
(setq modus-themes-region '(bg-only))

;; Org mode
(setq modus-themes-headings
      '((1 . (rainbow bold 1.8))
	(2 . (rainbow bold 1.6))
	(3 . (rainbow bold 1.4))
	(4 . (rainbow bold 1.2))
	(t . (medium 1.1))))

(setq modus-themes-scale-headings t)
(setq modus-themes-org-blocks 'tinted-background)

;; Status Line
(setq modus-themes-mode-line '(accented borderless))

;; Text
(setq modus-themes-bold-constructs t)
(setq modus-themes-paren-match '(bold intense))
(setq modus-themes-syntax '(alt-syntax))


(load-theme 'dracula t)

;; (load-theme 'modus-vivendi t)
