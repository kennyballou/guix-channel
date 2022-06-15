(define-module (kbg packages gwl)
  #:use-module (gnu)
  #:use-module ((gnu packages package-management) #:prefix pm:)
  #:use-module (guix build utils)
  #:use-module (guix build-system gnu)
  #:use-module (guix build-system)
  #:use-module (guix download)
  #:use-module (guix gexp)
  #:use-module (guix packages)
  #:use-module (guix utils)
  #:use-module (guix)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module ((srfi srfi-1) #:hide (zip))
  #:export (gwl))

(define gwl
  (package
    (inherit pm:gwl)
    (version "a7baa72194b4ebbec190615d1dc1114964d2f5ae")
    (source (origin
              (method url-fetch)
              (uri (string-append "https://git.savannah.gnu.org/cgit/gwl.git/snapshot/gwl-" version ".tar.gz"))
              (sha256
               (base32
                "04sbl7i6az1jv0a7j890646ks3zbwgjlq94458w3nnbn2mdidkw2"))))))
