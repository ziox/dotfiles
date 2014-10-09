;; Mac specific settings

;; Sets paths from shell in OS X
(exec-path-from-shell-initialize)

(setq ns-right-alternate-modifier nil)

;; MouseWheel!
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1) ((control) . nil)))
(setq mouse-wheel-progressive-speed nil)

;; on Mac, there's always a menu bar drown, don't have it empty
(when (display-graphic-p)
  (menu-bar-mode t))

(setq ns-pop-up-frames nil)

;;
;; Some usefull key-bindings
;;

; Smex
(bind-key "s-p" 'smex)
(bind-key "s-P" 'smex-major-mode-commands)

; Text
(bind-key "s-d" 'kill-whole-line)

; Search
(bind-key "s-F" 'helm-ag)

; Movements
(bind-key "<s-left>" 'move-beginning-of-line)
(bind-key "<s-right>" 'move-end-of-line)
(bind-key "<s-up>" 'beginning-of-buffer)
(bind-key "<s-down>" 'end-of-buffer)

