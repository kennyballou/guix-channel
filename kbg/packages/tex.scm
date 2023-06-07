(define-module (kbg packages tex)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module ((srfi srfi-1) #:hide (zip))
  #:use-module (gnu)
  #:use-module (guix build utils)
  #:use-module (guix build-system copy)
  #:use-module (guix build-system)
  #:use-module (guix download)
  #:use-module (guix git-download)
  #:use-module (guix gexp)
  #:use-module (guix packages)
  #:use-module (guix utils)
  #:use-module (guix)
  #:export (texlive-bsu-cs-thesis))

(define texlive-bsu-cs-thesis
  (let ((url "https://github.com/BoiseState/thesis-dissertation-template.git")
        (version "20230607")
        (commit "161b8808e5b8eb11a09f92864c816cae48c280fe"))
    (package
      (name "texlive-bsu-cs-thesis")
      (version (string-append version "-" commit))
      (source (origin
                (method git-fetch)
                (uri (git-reference
                      (url url)
                      (commit commit)))
                (sha256
                 (base32 "0hhial5q6ciz07k65r5dp9h5n4j8fw37fdgsyjn23fww23yjb4c2"))
                (file-name (git-file-name name version))))
      (build-system copy-build-system)
      (arguments
       `(#:install-plan '(("bsu-cs.cls" "tex/generic/bsu-cs/bsu-cs.cls"))))
      (home-page url)
      (synopsis "Customized BSU CS Thesis/Dissertation \\LaTeX class.")
      (description "Approved BSU CS Masters Thesis/PhD dissertation class file.")
      (license license:expat))))
