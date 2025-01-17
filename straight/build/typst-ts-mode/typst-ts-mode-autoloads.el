;;; typst-ts-mode-autoloads.el --- automatically extracted autoloads (do not edit)   -*- lexical-binding: t -*-
;; Generated by the `loaddefs-generate' function.

;; This file is part of GNU Emacs.

;;; Code:



;;; Generated autoloads from typst-ts-compile.el

(autoload 'typst-ts-compile-and-preview "typst-ts-compile" "\
Compile & Preview.
Assuming the compile output file name is in default style." t)
(autoload 'typst-ts-compilation-mode "typst-ts-compile" "\
Customized major mode for typst watch compilation.

(fn)")
(register-definition-prefixes "typst-ts-compile" '("typst-ts-"))


;;; Generated autoloads from typst-ts-edit-indirect.el

(register-definition-prefixes "typst-ts-edit-indirect" '("typst-ts-edit-indirect"))


;;; Generated autoloads from typst-ts-embedding-lang-settings.el

(autoload 'typst-ts-els--add-lang-tags-relationship "typst-ts-embedding-lang-settings" "\
Add or modify language tags relationship.
This function will make changes to `typst-ts-els-lang-tags-map' and
`typst-ts-els-tag-lang-map'.
LANG: either a symbol or string.
TAGS: either a string or a list of strings.

(fn LANG TAGS)")
(autoload 'typst-ts-els--lang-name-remap "typst-ts-embedding-lang-settings" "\
Remap language name to a new language name.
This function will remap lang to newlang for `typst-ts-els-lang-tags-map' and
`typst-ts-els-tag-lang-map'.
LANG and NEWLANG: either a symbol or string.

(fn LANG NEWLANG)")
(register-definition-prefixes "typst-ts-embedding-lang-settings" '("typst-ts-"))


;;; Generated autoloads from typst-ts-faces.el

(register-definition-prefixes "typst-ts-faces" '("typst-ts-markup-header-s"))


;;; Generated autoloads from typst-ts-mode.el

(autoload 'typst-ts-mode-heading-up "typst-ts-mode" "\
Switch the current heading with the heading above." t)
(autoload 'typst-ts-mode-heading-down "typst-ts-mode" "\
Switch the current heading with the heading below." t)
(autoload 'typst-ts-mode-heading-increase "typst-ts-mode" "\
Increase the heading level." t)
(autoload 'typst-ts-mode-heading-decrease "typst-ts-mode" "\
Decrease heading level." t)
(autoload 'typst-ts-mode-cycle "typst-ts-mode" "\
Cycle.

(fn &optional ARG)" t)
(autoload 'typst-ts-mode-preview "typst-ts-mode" "\
Open the result compile file.
FILE: file path for the result compile file.

(fn FILE)" t)
(defvar typst-ts-mode-map (let ((map (make-sparse-keymap))) (define-key map (kbd "C-c C-c c") #'typst-ts-compile-and-preview) (define-key map (kbd "C-c C-c C") #'typst-ts-compile) (define-key map (kbd "C-c C-c w") #'typst-ts-watch-mode) (define-key map (kbd "C-c C-c p") #'typst-ts-mode-preview) (define-key map (kbd "M-<left>") #'typst-ts-mode-heading-decrease) (define-key map (kbd "M-<right>") #'typst-ts-mode-heading-increase) (define-key map (kbd "M-<down>") #'typst-ts-mode-heading-down) (define-key map (kbd "M-<up>") #'typst-ts-mode-heading-up) (define-key map (kbd "M-<return>") #'typst-ts-mode-meta-return) (define-key map (kbd "<return>") #'typst-ts-mode-return) (define-key map (kbd "TAB") #'typst-ts-mode-cycle) (define-key map (kbd "C-c '") #'typst-ts-edit-indirect) map))
(autoload 'typst-ts-mode "typst-ts-mode" "\
Major mode for editing Typst, powered by tree-sitter.

(fn)" t)
(add-to-list 'auto-mode-alist '("\\.typ\\'" . typst-ts-mode))
(register-definition-prefixes "typst-ts-mode" '("typst-ts-mode-"))


;;; Generated autoloads from typst-ts-utils.el

(register-definition-prefixes "typst-ts-utils" '("typst-ts-utils-"))


;;; Generated autoloads from typst-ts-watch-mode.el

(autoload 'typst-ts-watch-display-buffer "typst-ts-watch-mode" "\
Display typst watch process buffer." t)
(autoload 'typst-ts-watch-start "typst-ts-watch-mode" "\
Watch(hot compile) current typst file." t)
(autoload 'typst-ts-watch-stop "typst-ts-watch-mode" "\
Stop watch process." t)
(register-definition-prefixes "typst-ts-watch-mode" '("typst-ts-"))

;;; End of scraped data

(provide 'typst-ts-mode-autoloads)

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; no-native-compile: t
;; coding: utf-8-emacs-unix
;; End:

;;; typst-ts-mode-autoloads.el ends here
