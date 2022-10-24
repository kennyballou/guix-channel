(define-module (kbg packages languagetool)
  #:use-module (gnu)
  #:use-module (guix)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (guix build utils)
  #:use-module (guix build-system)
  #:use-module (guix build-system copy)
  #:use-module (guix download)
  #:use-module (guix gexp)
  #:use-module (guix packages)
  #:use-module (gnu packages compression)
  #:export (languagetool))

(define languagetool
  (let ((baseurl "https://languagetool.org/download/")
        (version "5.9")
        (name "LanguageTool"))
    (package
     (name name)
     (version version)
     (source (origin
              (method url-fetch)
              (uri (string-append baseurl name "-" version ".zip"))
              (file-name (string-append name "-" version ".zip"))
              (sha256
               (base32
                "1b6493dxjfqi247gp5gwgy7wr919ffba8ai49b90bh8nn3lc41hd"))))
     (inputs (list unzip))
     (build-system copy-build-system)
     (synopsis "Offline LanguageTool implementation")
     (description "A proof-reading tool for English, Spanish, German,
French, Portuguese, Dutch, Ukrainian
and [more languages](https://dev.languagetool.org/languages)")
     (home-page "https://languagetool.org/")
     (license license:lgpl2.1+))))
