(define-module (kbg packages python-xyz)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (gnu packages)
  #:use-module (gnu packages algebra)
  #:use-module (gnu packages adns)
  #:use-module (gnu packages aidc)
  #:use-module (gnu packages attr)
  #:use-module (gnu packages backup)
  #:use-module (gnu packages bash)
  #:use-module (gnu packages bioinformatics)
  #:use-module (gnu packages check)
  #:use-module (gnu packages cmake)
  #:use-module (gnu packages compression)
  #:use-module (gnu packages crypto)
  #:use-module (gnu packages databases)
  #:use-module (gnu packages dbm)
  #:use-module (gnu packages django)
  #:use-module (gnu packages djvu)
  #:use-module (gnu packages docker)
  #:use-module (gnu packages documentation)
  #:use-module (gnu packages enchant)
  #:use-module (gnu packages file)
  #:use-module (gnu packages fontutils)
  #:use-module (gnu packages fonts)
  #:use-module (gnu packages freedesktop)
  #:use-module (gnu packages gdb)
  #:use-module (gnu packages gcc)
  #:use-module (gnu packages geo)
  #:use-module (gnu packages ghostscript)
  #:use-module (gnu packages gl)
  #:use-module (gnu packages glib)
  #:use-module (gnu packages gnome)
  #:use-module (gnu packages gnupg)
  #:use-module (gnu packages graphviz)
  #:use-module (gnu packages graphics)
  #:use-module (gnu packages gsasl)
  #:use-module (gnu packages gstreamer)
  #:use-module (gnu packages gtk)
  #:use-module (gnu packages haskell-xyz)
  #:use-module (gnu packages icu4c)
  #:use-module (gnu packages inkscape)
  #:use-module (gnu packages image)
  #:use-module (gnu packages image-processing)
  #:use-module (gnu packages imagemagick)
  #:use-module (gnu packages jupyter)
  #:use-module (gnu packages kerberos)
  #:use-module (gnu packages libevent)
  #:use-module (gnu packages libffi)
  #:use-module (gnu packages libidn)
  #:use-module (gnu packages libusb)
  #:use-module (gnu packages linux)
  #:use-module (gnu packages llvm)
  #:use-module (gnu packages man)
  #:use-module (gnu packages markup)
  #:use-module (gnu packages maths)
  #:use-module (gnu packages monitoring)
  #:use-module (gnu packages multiprecision)
  #:use-module (gnu packages networking)
  #:use-module (gnu packages ncurses)
  #:use-module (gnu packages node)
  #:use-module (gnu packages ninja)
  #:use-module (gnu packages openstack)
  #:use-module (gnu packages pcre)
  #:use-module (gnu packages pdf)
  #:use-module (gnu packages perl)
  #:use-module (gnu packages photo)
  #:use-module (gnu packages pkg-config)
  #:use-module (gnu packages protobuf)
  #:use-module (gnu packages python)
  #:use-module (gnu packages python-xyz)
  #:use-module (gnu packages python-build)
  #:use-module (gnu packages python-check)
  #:use-module (gnu packages python-compression)
  #:use-module (gnu packages python-crypto)
  #:use-module (gnu packages python-science)
  #:use-module (gnu packages python-web)
  #:use-module (gnu packages qt)
  #:use-module (gnu packages rdf)
  #:use-module (gnu packages readline)
  #:use-module (gnu packages regex)
  #:use-module (gnu packages sdl)
  #:use-module (gnu packages scanner)
  #:use-module (gnu packages search)
  #:use-module (gnu packages serialization)
  #:use-module (gnu packages shells)
  #:use-module (gnu packages sphinx)
  #:use-module (gnu packages ssh)
  #:use-module (gnu packages swig)
  #:use-module (gnu packages terminals)
  #:use-module (gnu packages tex)
  #:use-module (gnu packages texinfo)
  #:use-module (gnu packages textutils)
  #:use-module (gnu packages time)
  #:use-module (gnu packages tls)
  #:use-module (gnu packages version-control)
  #:use-module (gnu packages video)
  #:use-module (gnu packages web)
  #:use-module (gnu packages wxwidgets)
  #:use-module (gnu packages base)
  #:use-module (gnu packages xml)
  #:use-module (gnu packages xorg)
  #:use-module (gnu packages xdisorg)
  #:use-module (gnu packages tcl)
  #:use-module (gnu packages bdw-gc)
  #:use-module (gnu packages serialization)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (guix gexp)
  #:use-module (guix git-download)
  #:use-module (guix hg-download)
  #:use-module (guix gexp)
  #:use-module (guix utils)
  #:use-module (guix build-system gnu)
  #:use-module (guix build-system cmake)
  #:use-module (guix build-system python)
  #:use-module (guix build-system pyproject)
  #:use-module (guix build-system trivial)
  #:use-module (srfi srfi-1)
  #:use-module (srfi srfi-26))

(define-public python-yalafi
  (package
   (name "python-yalafi")
   (version "1.4.0")
   (source (origin
            (method url-fetch)
            (uri (pypi-uri "yalafi" version))
            (sha256
             (base32
              "02bn21prgd81gr28vl211dp9mkqfgrrbiz2sqp29y72av6p88lfj"))))
   (build-system pyproject-build-system)
   (arguments
      '(#:tests? #f))
   (home-page "https://github.com/torik42/YaLafi")
   (synopsis "Yet another LaTeX filter")
   (description "Yet another LaTeX filter")
   (license license:gpl3)))

(define-public python-yalafi-custom-server
  (package
   (inherit python-yalafi)
   (name "python-yalafi-custom-server")
   (version "1.4.0")
   (source (origin
            (method url-fetch)
            (uri (pypi-uri "yalafi" version))
            (sha256
             (base32
              "02bn21prgd81gr28vl211dp9mkqfgrrbiz2sqp29y72av6p88lfj"))
            (patches (search-patches "./kbg/patches/allow-setting-a-custom-server.patch"
                                     "./kbg/patches/daemonize-with-pidfile.patch"))))))

(define-public python-backports.functools-lru-cache
  (package
    (name "python-backports.functools-lru-cache")
    (version "2.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (pypi-uri "backports.functools_lru_cache" version))
       (sha256
        (base32 "16bggzq8n97xg3xw2xmgylfxgsiysckf1j87i0b19878vbhabgyw"))))
    (build-system pyproject-build-system)
    (arguments
     '(#:phases (modify-phases %standard-phases
                  (delete 'check))))
    (home-page "https://github.com/jaraco/backports.functools_lru_cache")
    (synopsis "Backport of functools.lru_cache")
    (description "Backport of functools.lru_cache")
    (license license:expat)))

(define-public python-addict
  (package
    (name "python-addict")
    (version "2.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (pypi-uri "addict" version))
       (sha256
        (base32 "1574sicy5ydx9pvva3lbx8qp56z9jbdwbj26aqgjhyh61q723cmk"))))
    (build-system pyproject-build-system)
    (home-page "https://github.com/mewwts/addict")
    (synopsis
     "Addict is a dictionary whose items can be set using both attribute and item syntax.")
    (description
     "Addict is a dictionary whose items can be set using both attribute and item
syntax.")
    (license license:expat)))

(define-public python-prefixed
  (package
    (name "python-prefixed")
    (version "0.7.0")
    (source
     (origin
       (method url-fetch)
       (uri (pypi-uri "prefixed" version))
       (sha256
        (base32 "1sdvxwy4kvcxvnq1nx70j1ccx5ga6wdb478vqd5azf1fc1gd2m0b"))))
    (build-system pyproject-build-system)
    (home-page "https://github.com/Rockhopper-Technologies/prefixed")
    (synopsis "Prefixed alternative numeric library")
    (description "Prefixed alternative numeric library")
    (license license:mpl2.0)))

(define-public python-enlighten
  (package
    (name "python-enlighten")
    (version "1.12.4")
    (source
     (origin
       (method url-fetch)
       (uri (pypi-uri "enlighten" version))
       (sha256
        (base32 "0psvglhi0c7d7pdk9rfb8scnv3xbq2fz78619x2mxvz094mxkwvm"))))
    (build-system pyproject-build-system)
    (propagated-inputs (list python-backports.functools-lru-cache
                             python-blessed
                             python-prefixed))
    (home-page "https://github.com/Rockhopper-Technologies/enlighten")
    (synopsis "Enlighten Progress Bar")
    (description "Enlighten Progress Bar")
    (license license:mpl2.0)))

(define-public python-pypubsub
  (let ((version "4.0.3")
        (baseurl "https://github.com/schollii/pypubsub/archive/refs/tags/"))
    (package
      (name "python-pypubsub")
      (version version)
      (source
       (origin
         (method url-fetch)
         (uri (string-append baseurl "v" version ".tar.gz"))
         (file-name (string-append "v" version ".tar.gz"))
         (sha256
          (base32
           "18l97965bfw832z74lcslpg155vchcnq3xlghnmin0mh3jm3vy0d"))))
      (build-system python-build-system)
      (home-page "https://github.com/schollii/pypubsub")
      (synopsis "Provides a publish-subscribe API to facilitate event-based or message-based architecture in a single-process application")
      (description "Provides a publish-subscribe API to facilitate event-based or message-based architecture in a single-process application. It is pure Python and works on Python 3.3+. It is centered on the notion of a topic; senders publish messages of a given topic, and listeners subscribe to messages of a given topic, all inside the same process. The package also supports a variety of advanced features that facilitate debugging and maintaining topics and messages in larger desktop- or server-based applications.")
      (license license:bsd-2))))

(define-public python-oauth2token
  (package
    (name "python-oauth2token")
    (version "0.0.3")
    (source
     (origin
       (method url-fetch)
       (uri (pypi-uri "oauth2token" version))
       (sha256
        (base32 "1y7yn1dv6anad98yamwys3i0yg5grfg2km87m3fv9qpvhcylf0nz"))))
    (build-system pyproject-build-system)
    (propagated-inputs (list python-google-auth-oauthlib python-pyxdg))
    (home-page "https://github.com/VannTen/oauth2token")
    (synopsis "Oauth2 token management for cli applications")
    (description "Oauth2 token management for cli applications.")
    (license license:gpl3)))
