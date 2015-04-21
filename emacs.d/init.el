(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(load-theme 'solarized t)
(add-hook 'after-make-frame-functions
	  (lambda (frame)
	    (set-frame-parameter frame
				 'background-mode
				 (if (display-graphic-p frame) 'light 'dark))
	    (enable-theme 'solarized)))
