(use-package monokai-pro-theme
  :ensure
  :init
  (custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
  '(custom-enabled-themes '(monokai-pro-theme))
  '(custom-safe-themes
    '("5846b39f2171d620c45ee31409350c1ccaddebd3f88ac19894ae15db9ef23035" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" default)))
    (custom-set-faces
    ;; custom-set-faces was added by Custom.
    ;; If you edit it by hand, you could mess it up, so be careful.
    ;; Your init file should contain only one such instance.
    ;; If there is more than one, they won't work right.
    '(org-level-1 ((t (:inherit outline-1 :height 1.5))))
    '(org-level-2 ((t (:inherit outline-2 :height 1.25))))
    '(org-level-3 ((t (:inherit outline-3 :height 1.1))))
    '(org-level-4 ((t (:inherit outline-4 :height 1.1))))
    '(secondary-selection ((t (:background "#ffffb3"))))
    '(trailing-whitespace ((t (:background "#ff0000"))))
    '(web-mode-jsx-depth-1-face ((t nil)))
    '(web-mode-jsx-depth-2-face ((t nil)))
    '(web-mode-jsx-depth-3-face ((t nil)))
    '(web-mode-jsx-depth-4-face ((t nil)))
    '(web-mode-jsx-depth-5-face ((t nil))))
)

(enable-theme 'monokai-pro)
(load-theme 'monokai-pro)

(provide 'init-theme)
