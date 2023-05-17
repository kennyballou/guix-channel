(define-module (kbg packages jdtls)
  #:use-module (gnu)
  #:use-module (guix)
  #:use-module (guix build utils)
  #:use-module (guix build-system)
  #:use-module (guix build-system copy)
  #:use-module (guix download)
  #:use-module (guix gexp)
  #:use-module (guix packages)
  #:use-module (gnu packages bash)
  #:use-module (gnu packages compression)
  #:use-module (gnu packages python)
  #:use-module ((guix licenses) #:prefix license:))

(define-public jdtls
  (let* ((baseurl "https://download.eclipse.org/jdtls/milestones/")
         (version-base "1.23.0")
         (version-date "202304271346")
         (version (string-append version-base "-" version-date))
         (name "jdt-language-server"))
    (package
     (name name)
     (version version)
     (source (origin
              (method url-fetch)
              (uri (string-append baseurl version "/" name "-" version ".tar.gz"))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "07vh3bl1wix4zkx77cgrmjqaf9ldh84a13szsnin10js3p0dhqr3"))))
     (inputs (list python-wrapper))
     (build-system copy-build-system)
     (arguments
      '(#:install-plan '(("../bin" "bin")
                         ("../config_linux" "config_linux")
                         ("../features" "features")
                         ("../plugins" "plugins"))))
     (synopsis "Java Development Toolkit (JDT) Language Server (LS)")
     (description "Eclipse JDT Language Server Jar")
     (home-page "https://eclipse.org")
     (license license:epl2.0))))
