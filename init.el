;;; init.el --- The main init entry for Emacs -*- lexical-binding: t -*-
;;; Commentary:

;;; Code:

;; set straight.el
(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 6))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/radian-software/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))


;; setting mirror site
(setq package-archives '(("gnu"    . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
                         ("nongnu" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/nongnu/")
                         ("melpa"  . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")))

(setq package-enable-at-startup nil)

;; open pixel-scroll
(pixel-scroll-mode t)
(pixel-scroll-precision-mode t)

;; open display-line-numbers
(add-hook 'prog-mode-hook 'display-line-numbers-mode)

;; open electric pair
(electric-pair-mode 1)

;; loading lisp directory
(let ((dir (locate-user-emacs-file "lisp")))
  (add-to-list 'load-path (file-name-as-directory dir)))

;; loading other packages
;; not showing meassgae in`*message*' buffer
(with-temp-message ""
  (require 'init-package)
  (require 'init-treesit)
  (require 'init-theme)
  (require 'init-dashboard)
  (require 'init-nerd-icons)
  (require 'init-all-the-icons)
  (require 'init-org)
  (require 'init-org-roam)
  (require 'init-latex)
  (require 'init-org-download)
  (require 'init-texfrag)
  (require 'init-fragtog)
  (require 'init-cdlatex)
  (require 'init-vertico)
  (require 'init-orderless)
  (require 'init-marginalia)
  (require 'init-yasnippet)
  (require 'init-lsp-bridge)
  )


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; init.el ends here