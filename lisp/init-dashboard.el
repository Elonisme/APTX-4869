;;; init-dashbord.el -- hugo settings -*-  lexical-binding: t -*-
;;; Commentary:

;;; Code:

;;; setting Dashboard
(use-package dashboard
  :ensure t
  :init
  (progn
    ;; Set the title
    (setq dashboard-banner-logo-title "コードネーム?シェリー")
    ;; Set the banner
    (setq dashboard-startup-banner "~/.emacs.d/logo.png")
    ;; Content is not centered by default. To center, set
    (setq dashboard-center-content t)
    (setq dashboard-display-icons-p t) ;; display icons on both GUI and terminal
    (setq dashboard-icon-type 'nerd-icons) ;; use `nerd-icons' package
    (setq dashboard-set-heading-icons t)
    (setq dashboard-set-file-icons t)
    )
  :config
  (dashboard-setup-startup-hook)
  (setq dashboard-items '((recents . 5)
                          (bookmarks . 5)
                          ))
  (setq dashboard-navigation-cycle t)
  (add-hook 'dashboard-mode-hook #'which-key-mode)
  )


(provide 'init-dashboard)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; init-dashboard.el ends here
