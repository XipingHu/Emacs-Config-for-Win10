(setq package-archives '(("gnu"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
                         ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")))
(package-initialize) ;; You might already have this line
(add-hook 'LaTeX-mode-hook 'turn-on-cdlatex)
(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq-default TeX-engine 'xetex)
    
;; correlate
(setq TeX-source-correlate-mode t)

(custom-set-variables '(TeX-source-correlate-method (quote synctex)) '(TeX-source-correlate-mode t) '(TeX-source-correlate-start-server t) '(TeX-view-program-list (quote (("Sumatra PDF" "\"C:/Program Files (x86)/SumatraPDF/SumatraPDF.exe\" -reuse-instance %o")))))(custom-set-faces)
(setq TeX-view-program-selection '((output-pdf "SumatraPDF")))

;; Update PDF buffers after successful LaTeX runs
(add-hook 'TeX-after-compilation-finished-functions
           #'TeX-revert-document-buffer)

;; Show line numbers
;; (global-linum-mode t)

;; Enable yasnippet
(yas-global-mode t)

(setq package-check-signature nil)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-archives
   (quote
    (("GNU ELPA" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
     ("MELPA" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")
     ("MELPA Stable" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa-stable/")
     ("Marmalade" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/marmalade/")
     ("Org" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/org/"))))
 '(package-selected-packages (quote (yasnippet-snippets cdlatex auctex))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
