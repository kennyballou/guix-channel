(define-module (kbg packages statistics)
  #:use-module (gnu)
  #:use-module (gnu packages statistics)
  #:use-module (guix build utils)
  #:use-module (guix build-system r)
  #:use-module (guix download)
  #:use-module (guix gexp)
  #:use-module (guix utils)
  #:use-module (guix)
  #:use-module ((guix licenses) #:prefix license:))

(define-public r-ascii
  (package
    (name "r-ascii")
    (version "2.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ascii" version))
              (sha256
               (base32
                "0k675an7sl00bslx4yb6vvvgnp1kl244cfjljv632asqdm3rkmrv"))))
    (properties `((upstream-name . "ascii")))
    (build-system r-build-system)
    (propagated-inputs (list r-codetools r-digest r-survival))
    (home-page "https://github.com/mclements/ascii")
    (synopsis "Export R Objects to Several Markup Languages")
    (description
     "Coerce R object to 'asciidoc', 'txt2tags', 'restructuredText', 'org',
'textile' or 'pandoc' syntax.  Package comes with a set of drivers for
'Sweave'.")
    (license license:gpl2+)))
