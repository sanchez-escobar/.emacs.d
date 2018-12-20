;; emacs init file for drew, with thanks to gleit.

;; for emacsclient support
(server-start)

(when (member "Menlo" (font-family-list))
  (set-face-attribute 'default nil
                      :family "Menlo"
                      :height 120))

;; Helper to load files based on relative paths
(defun relative-to-full-path (filename)
  (concat (file-name-directory (or load-file-name buffer-file-name)) filename))

(load (relative-to-full-path "custom-functions.el"))
(load (relative-to-full-path "general-config.el"))
(load (relative-to-full-path "init-packages.el"))
(load (relative-to-full-path "init-ui.el"))
(load (relative-to-full-path "init-keys.el"))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (material-theme yaml-mode web-mode twittering-mode tide puppet-mode projectile multiple-cursors markdown-mode magit json-mode js2-mode jedi helm haskell-mode hackernews go-eldoc go-autocomplete expand-region enh-ruby-mode elpy cython-mode company-web ag))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
