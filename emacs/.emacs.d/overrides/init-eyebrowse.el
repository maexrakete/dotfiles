(use-package eyebrowse :ensure t)
(eyebrowse-mode t)

(defun rename-current-workspace ()
  (eyebrowse-rename-window-config (eyebrowse--get 'current-slot) (projectile-project-name))
)

(add-hook 'projectile-after-switch-project-hook #'rename-current-workspace)
(eyebrowse-setup-opinionated-keys)

(provide 'init-eyebrowse)
