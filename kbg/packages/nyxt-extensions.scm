(define-module (kbg packages nyxt-extensions)
  #:use-module (gnu)
  #:use-module (guix)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (guix build utils)
  #:use-module (guix build-system)
  #:use-module (guix build-system copy)
  #:use-module (guix git-download)
  #:use-module (guix gexp)
  #:use-module (guix packages)
  #:use-module (gnu packages compression))

(define-public nx-freestance-handler
  (let ((commit "83aea7f0b650c6dab2ceb2b227301e86459a6e5b"))
    (package
      (name "nx-freestance-handler")
      (version commit)
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/kssytsrk/nx-freestance-handler")
               (commit commit)))
         (file-name (git-file-name name version))
         (sha256
          (base32 "16c9g8frcr5c9rzfdq9hhm55qbvs6msgccdgv2rwzfk5j97aky79"))))
      (build-system copy-build-system)
      (home-page "https://github.com/kssytsrk/nx-freestance-handler")
      (synopsis "A @package{nyxt} browser extension for Freedom!")
      (description "A @package{nyxt} browser extension which redirects troublesom websites to free and tracker-free alternatives.")
      (license license:gpl3))))
