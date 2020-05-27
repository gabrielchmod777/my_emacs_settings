(require 'package)
;;; either the stable version:

(add-to-list 'package-archives
  ;; choose either the stable or the latest git version:
  '("melpa-stable" . "http://stable.melpa.org/packages/")
   ;; '("melpa-unstable" . "http://melpa.org/packages/")
  )
(package-initialize)

(add-to-list 'load-path "~/.emacs.d/elpa/use-package-2.4")
(add-to-list 'load-path "~/.emacs.d/elpa/bind-key-2.4")

(require 'bind-key)
(require 'use-package)
(with-eval-after-load 'info
  (info-initialize)
  (add-to-list 'Info-directory-list
               "~/.emacs.d/elpa/use-package-2.4/"))
(use-package flycheck
  :ensure t
  :init (global-flycheck-mode))


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(custom-enabled-themes (quote (deeper-blue)))
 '(package-selected-packages (quote (flycheck auto-complete geiser))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(ac-config-default)
