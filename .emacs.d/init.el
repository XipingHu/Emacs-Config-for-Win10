(package-initialize)

(add-hook 'LaTeX-mode-hook 'turn-on-cdlatex)
(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq-default TeX-engine 'xetex)
    
;; correlate
(setq TeX-source-correlate-mode t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(TeX-source-correlate-method (quote synctex))
 '(TeX-source-correlate-mode t)
 '(TeX-source-correlate-start-server t)
 '(TeX-view-program-list
   (quote
    (("Sumatra PDF" "\"C:/Program Files (x86)/SumatraPDF/SumatraPDF.exe\" -reuse-instance %o"))))
 '(ispell-personal-dictionary "~/.emacs.d/dict/dict.txt")
 '(package-archives
   (quote
    (("GNU ELPA" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
     ("MELPA" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")
     ("MELPA Stable" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa-stable/")
     ("Marmalade" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/marmalade/")
     ("Org" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/org/"))))
 '(package-selected-packages (quote (auto-complete yasnippet-snippets cdlatex auctex))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(setq TeX-view-program-selection '((output-pdf "SumatraPDF")))

;; Update PDF buffers after successful LaTeX runs
(add-hook 'TeX-after-compilation-finished-functions
           #'TeX-revert-document-buffer)

;; Show line numbers
;; (global-linum-mode t)

;; Enable yasnippet
(yas-global-mode t)

;; Enable auto-complete
(add-hook 'text-mode-hook 'auto-complete-mode)
(add-hook 'prog-mode-hook 'auto-complete-mode)

;; Spell Check
(setq-default ispell-program-name "C:/msys64/mingw64/bin/hunspell.exe")
(setq ispell-local-dictionary "en_US") 
(setq ispell-local-dictionary-alist
      '(("en_US" "[[:alpha:]]" "[^[:alpha:]]" "[']" nil ("-d" "en_US") nil utf-8)))
(add-hook 'text-mode-hook 'flyspell-mode)
(add-hook 'prog-mode-hook 'flyspell-prog-mode)


(setq package-check-signature nil)


