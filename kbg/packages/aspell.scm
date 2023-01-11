(define-module (kbg packages aspell)
  #:use-module ((gnu packages aspell) #:prefix gnu:aspell:)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module ((srfi srfi-1) #:hide (zip))
  #:use-module (gnu)
  #:use-module (guix build utils)
  #:use-module (guix build-system copy)
  #:use-module (guix build-system)
  #:use-module (guix download)
  #:use-module (guix gexp)
  #:use-module (guix packages)
  #:use-module (guix utils)
  #:use-module (guix))

(define-public aspell-dict-en-computers
  (package
   (name "aspell-dict-en-computers")
   (version "2023-01-11")
   (source (local-file "./dicts/en-computers.rws"))
   (build-system copy-build-system)
   (arguments
    '(#:install-plan '(("en-computers.rws" "lib/aspell/en-computers.rws"))))
   (home-page "https://mrsatterly.com/spelling.html")
   (synopsis "Dictionary for Computer Jargon")
   (description synopsis)
   (license #f)))

(define-public aspell-dict-en-science
  (package
   (name "aspell-dict-en-science")
   (version "2023-01-11")
   (source (local-file "./dicts/en_US-science.rws"))
   (build-system copy-build-system)
   (arguments
    '(#:install-plan '(("en_US-science.rws" "lib/aspell/en_US-science.rws"))))
   (home-page "http://www.jpetrie.net/scientific-word-list-for-spell-checkersspelling-dictionaries/")
   (synopsis "Dictionary of Scientific Jargon")
   (description "LARGE Dictionary of scientific jargon")
   (license #f)))
