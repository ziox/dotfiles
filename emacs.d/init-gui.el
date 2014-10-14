;; GUI Specific settings

;; MouseWheel!
(setq mouse-wheel-scroll-amount '(2 ((shift) . 4) ((control) . nil)))
(setq mouse-wheel-progressive-speed nil)

;; CUA mode for fuck sake!
(cua-mode t)
(setq cua-auto-tabify-rectangles nil)
(transient-mark-mode 1)
(setq cua-keep-region-after-copy t)
