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
  (let* ((baseurl "https://download.eclipse.org/jdtls/milestones")
         (version-base "1.46.1")
         (version-date "202504011455")
         (version (string-append version-base "-" version-date))
         (name "jdt-language-server"))
    (package
     (name name)
     (version version)
     (source (origin
              (method url-fetch)
              (uri (string-append baseurl "/" version-base "/" name "-" version ".tar.gz"))
              (file-name (string-append name "-" version ".tar.gz"))
              (sha256
               (base32
                "0b70gpqfy4y334kkh0ch01krxq10pf01zwghircx381svgvgsdgl"))))
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

(define-public java-junit-platform-console-standalone
  (let* ((baseurl "https://repo1.maven.org/maven2/org/junit/platform/")
         (version "1.13.0")
         (name "junit-platform-console-standalone")
         (filename (string-append name "-" version ".jar")))
    (package
      (name name)
      (version version)
      (source (origin
                (method url-fetch)
                (uri (string-append baseurl name "/" version "/" filename))
                (file-name filename)
                (sha256
                 (base32
                  "0y8qfazz8lvc4bzjy76yk4yajawpx2f47glzp3if97nq1kbxhcv1"))))
      (inputs '())
      (build-system copy-build-system)
      (synopsis "JUnit Console Runner")
      (description "Standalone (uberjar) JUnit Console Runner")
      (home-page "https://junit.org/junit5/")
      (license license:epl2.0))))
