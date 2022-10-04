;;; Themes

;; Ui
(setq inhibit-startup-message t)

(scroll-bar-mode -1)
(menu-bar-mode -1)
(tool-bar-mode -1)

;; Buffer
(blink-cursor-mode -1)
(global-display-line-numbers-mode 1)

;; Color Themes
(use-package doom-themes
  :config
  (setq doom-themes-enable-bold t    ; if nil, bold is universally disabled
        doom-themes-enable-italic nil) ; if nil, italics is universally disabled

  (setq doom-themes-treemacs-theme "doom-colors") ; use "doom-colors" for less minimal icon theme
  (doom-themes-treemacs-config))


;;; Modus-vivendi
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


(load-theme 'doom-Iosvkem t)

