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
  #:export (languagetool languagetool-ngram-en))

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

(define languagetool-ngram-en
  (let ((baseurl "https://languagetool.org/download/ngram-data/")
        (version "20150817")
        (name "LanguageTool-ngrams-en"))
    (package
     (name name)
     (version version)
     (source (origin
              (method url-fetch)
              (uri (string-append baseurl "ngrams-en-" version ".zip"))
              (file-name (string-append "ngrams-en-" version ".zip"))
              (sha256
               (base32
                "0b13pgwganvv3wnv96qdv8qbw0spd1zkymbaqfgihn4z3mrlir8h"))))
     (inputs (list unzip))
     (build-system copy-build-system)
     (arguments
      '(#:install-plan '(("1grams" "/share/LanguageTool-ngrams/en/1grams/")
                         ("2grams" "/share/LanguageTool-ngrams/en/2grams/")
                         ("3grams" "/share/LanguageTool-ngrams/en/3grams/"))))
     (home-page "https://languagetool.org")
     (synopsis "LanguageTool ngrams language data.")
     (description "LanguageTool ngrams language data for more advanced checks.")
     (license #f))))
