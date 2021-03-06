                                        ; *** elisp ***
;;
;; convenience
;; (normal-erase-is-backspace-mode)
;; (setq x-select-enable-clipboard t)
;; (setq interprogram-paste-function 'x-cut-buffer-or-selection-value) 
;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;   Set Window Font, Size and Position
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
(setq default-frame-alist '( (left . -1) (top . 0) (width . 170)  (height . 40) )) 
(setq initial-frame-alist '( (left . 0)  (top . 0) (width . 190) (height . 50) ))

;;(setq myfont "-bitstream-Bitstream Vera Sans Mono-normal-normal-normal-*-15-*-*-*-m-0-fontset-startup")
;;(set-default-font "fixed")
(setq myfont "Bitstream Vera Sans Mono-11:bold")
;;(set-default-font "-bitstream-Bitstream Vera Sans Mono-normal-normal-normal-*-15-*-*-*-m-0-fontset-startup")
(if emacs22up 
    (progn (set-default-font myfont)
           (add-to-list 'default-frame-alist (cons 'font myfont)) )
  else
  (set-default-font "fixed") ) 

;; Several mysterious but important customizations.
(set-input-mode t nil t)
(put 'eval-expression	 'disabled nil)
(put 'narrow-to-region	 'disabled nil)
(put 'upcase-region	 'disabled nil)
(put 'downcase-region	 'disabled nil)
(prefer-coding-system    'utf-8)
(column-number-mode t)		;; Display column number on mode line	

(setq ns-pop-up-frames nil)

;; yasnippet
;; (yas/initialize)
;; (yas/load-directory "~/.emacs.d/snippets")

(provide 'mrflip-dot-emacs)
