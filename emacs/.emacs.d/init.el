
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.

(setq package-enable-at-startup nil)

(setq user-full-name "Max Kiehnscherf")
(setq user-mail-address "max.kiehnscherf@googlemail.com")
(setq custom-safe-themes t)

(add-to-list 'load-path (expand-file-name "subconfigs" user-emacs-directory))
(add-to-list 'load-path (expand-file-name "overrides" user-emacs-directory))

(require 'init-subconfigs)
(require 'init-overrides)




;; esc quits
(defun minibuffer-keyboard-quit ()
      "Abort recursive edit.
In Delete Selection mode, if the mark is active, just deactivate it;
then it takes a second \\[keyboard-quit] to abort the minibuffer."
      (interactive)
      (if (and delete-selection-mode transient-mark-mode mark-active)
          (setq deactivate-mark  t)
        (when (get-buffer "*Completions*") (delete-windows-on "*Completions*"))
        (abort-recursive-edit)))




(define-key evil-normal-state-map [escape] 'keyboard-quit)
(define-key evil-visual-state-map [escape] 'keyboard-quit)
(define-key minibuffer-local-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-ns-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-completion-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-must-match-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-isearch-map [escape] 'minibuffer-keyboard-quit)

(global-set-key [escape] 'evil-exit-emacs-state)

; C-u scroll up like in vim
(define-key global-map (kbd "C-f") 'universal-argument)
(define-key universal-argument-map (kbd "C-u") nil)
(define-key universal-argument-map (kbd "C-f") 'universal-argument-more)
(define-key global-map (kbd "C-u") 'nil)
(eval-after-load 'evil-maps
  '(progn
     (define-key evil-motion-state-map (kbd "C-f") nil)
          (define-key evil-motion-state-map (kbd "C-u") 'evil-scroll-up)))


(set-frame-font "Fira Mono For Powerline 12")

(setq x-select-enable-clipboard t)
(setq custom-file "/dev/null")


(global-linum-mode t)
