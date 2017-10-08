(require 'org)
(setq org-default-notes-file (concat org-directory "/inbox.org"))
(define-key global-map "\C-cc" 'org-capture)

(setq org-agenda-files `(,(concat org-directory "/next.org")
			 ,(concat org-directory "/calendar.org")))

(define-key global-map "\C-ca" 'org-agenda)

(setq org-refile-targets `((org-agenda-files :maxlevel . 2)
			   (,(concat org-directory "/projects.org") :maxlevel . 2)
			   (,(concat org-directory "/calendar.org") :maxlevel . 1)
			   (,(concat org-directory "/someday.org") :maxlevel . 2)
			   (,(concat org-directory "/references.org") :maxlevel . 1)))

(setq org-refile-use-outline-path 'file)
(setq org-refile-allow-creating-parent-nodes 'confirm)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(custom-enabled-themes (quote (wombat)))
 '(ring-bell-function (quote ignore)))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
