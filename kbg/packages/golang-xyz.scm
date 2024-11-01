(define-module (kbg packages golang-xyz)
  #:use-module (guix)
  #:use-module (guix build-system go)
  #:use-module (guix download)
  #:use-module (guix git-download)
  #:use-module (guix packages)
  #:use-module (gnu packages golang)
  #:use-module (gnu packages golang-xyz)
  #:use-module ((guix licenses) #:prefix license:))

(define-public go-github-com-spf13-cobra-cli
  (package
    (name "go-github-com-spf13-cobra-cli")
    (version "1.3.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/spf13/cobra-cli")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0hg944irnjbxl629dk9y8z3ffm9qa1lwr5d1xnpj6viq3hzkyhhk"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/spf13/cobra-cli"))
    (propagated-inputs `(("go-github-com-spf13-viper" ,go-github-com-spf13-viper)
                         ("go-github-com-spf13-cobra" ,go-github-com-spf13-cobra)))
    (home-page "https://github.com/spf13/cobra-cli")
    (synopsis "Cobra Generator")
    (description
     "Cobra provides its own program that will create your application and add any
commands you want.  It's the easiest way to incorporate Cobra into your
application.")
    (license license:asl2.0)))
