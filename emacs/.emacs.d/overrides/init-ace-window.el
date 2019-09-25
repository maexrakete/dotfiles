(use-package ace-window
  :ensure t
  :init
  :config
  (global-set-key (kbd "M-w") 'ace-window)
  )

(global-set-key (kbd "C-h")  'windmove-left)
(global-set-key (kbd "C-l") 'windmove-right)
(global-set-key (kbd "C-k")    'windmove-up)
(global-set-key (kbd "C-j")  'windmove-down)

(provide 'init-ace-window)


