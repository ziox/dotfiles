;; GUI Specific settings

;; Theme & Fonts
; https://github.com/bbatsov/zenburn-emacs
(load-theme 'sanityinc-solarized-dark t)
(set-cursor-color "lightgreen")
(set-frame-font "Source Code Pro-18" nil t)

;; MouseWheel!
(setq mouse-wheel-scroll-amount '(2 ((shift) . 4) ((control) . nil)))
(setq mouse-wheel-progressive-speed nil)

;; CUA mode for fuck sake!
(cua-mode t)
(setq cua-auto-tabify-rectangles nil)
(transient-mark-mode 1)
(setq cua-keep-region-after-copy t)


