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
    (version "71417e556241ebd7157805cdf0db67bd7e3e5eaf")
    (source (origin
              (method url-fetch)
              (uri (string-append "https://git.savannah.gnu.org/cgit/gwl.git/snapshot/gwl-" version ".tar.gz"))
              (sha256
               (base32
                "0azw51x9c7xkqzhm30izmaimbzxiir8bzxlava82lpp8wml1yz51"))))))
