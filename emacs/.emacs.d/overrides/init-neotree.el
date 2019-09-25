(use-package neotree
  :ensure t
  :init
  :config
  (global-set-key (kbd "M-n") 'neotree-toggle)
  (global-set-key (kbd "M-.") 'neotree-show)
)

(define-key neotree-mode-map (kbd "M-SPC")  'neotree-enter)
(define-key neotree-mode-map (kbd "M-h")  'neotree-hidden-file-toggle)
(define-key neotree-mode-map (kbd "M-g")  'neotree-refresh)
(define-key neotree-mode-map (kbd "M-c")  'neo-smart-open)

(provide 'init-neotree)


