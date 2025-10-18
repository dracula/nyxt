
;; For version 3
(in-package #:nyxt-user)

(define-configuration browser
    ((theme
      (make-instance 'theme:theme
                     :background-color "#282a36"
                     :on-background-color "#f8f8f2"
                     :accent-color "#ff5555"
                     :on-accent-color "#282a36"
                     :primary-color "#50fa7b"
                     :on-primary-color "#282a36"
                     :secondary-color "#bd93f9"
                     :on-secondary-color "#282a36"))))

(define-configuration prompt-buffer
    ((style
      (str:concat
       %slot-value%
       (theme:themed-css
        (theme *browser*)
        '("#prompt"
          :background-color "#282a36" :color "#f8f8f2")
        '("#prompt-extra"
          :background-color "#282a36" :color "#f8f8f2")
        '("#selection"
          :background-color "#44475a" :color "#f8f8f2")
        '("#input"
          :background-color "#6272a4" :color "#f8f8f2" :border-color "#44475a")
        '("#input:focus" :border-color "#6272a4"))))))
