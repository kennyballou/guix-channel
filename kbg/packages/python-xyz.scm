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
  #:use-module (gnu packages tree-sitter)
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
   (version "1.5.0")
   (source (origin
            (method url-fetch)
            (uri (pypi-uri "yalafi" version))
            (sha256
             (base32
              "0wwp2cdkngvk671yg43y1fywx7imis4lf6qlvhd8c2868qvcir7y"))))
   (build-system pyproject-build-system)
   (native-inputs (list python-setuptools python-wheel))
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
   (version "1.5.0")
   (source (origin
            (method url-fetch)
            (uri (pypi-uri "yalafi" version))
            (sha256
             (base32
              "0wwp2cdkngvk671yg43y1fywx7imis4lf6qlvhd8c2868qvcir7y"))
            (patches (search-patches "./kbg/patches/yalafi/allow-setting-a-custom-server.patch"
                                     "./kbg/patches/yalafi/daemonize-with-pidfile.patch"))))))

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

(define-public python-odfpy-1.3
  (package
    (name "python-odfpy")
    (version "1.3.4")
    (source
     (origin
       (method url-fetch)
       (uri (pypi-uri "odfpy" version))
       (sha256
        (base32 "1y2ikdblxi8nzfv1pnyhgiqz1qz3zh0df06si6ykv7mlrspdgrhk"))))
    (build-system pyproject-build-system)
    (native-inputs (list python-setuptools python-wheel))
    (arguments
     (list #:tests? #f))
    (home-page "https://github.com/eea/odfpy")
    (synopsis "Python API and tools to manipulate OpenDocument files")
    (description
     "Python API and tools to manipulate @code{OpenDocument} files.")
    (license license:gpl2)))

(define-public python-rmtoo
  (package
    (name "python-rmtoo")
    (version "26.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (pypi-uri "rmtoo" version))
       (sha256
        (base32 "19c8zh3b7c0df1v4by9pyy6f06bvviin85543ynpx2kicwly1iq8"))))
    (build-system pyproject-build-system)
    (propagated-inputs (list python-gitdb
                             python-gitpython
                             python-jinja2
                             python-numpy
                             python-odfpy-1.3
                             python-pylint
                             python-pyyaml
                             python-scipy
                             python-stevedore))
    (native-inputs (list python-setuptools python-wheel))
    (arguments
     (list #:tests? #f))
    (home-page "http://rmtoo.florath.net")
    (synopsis "Free and OpenSource Requirements Management Tool")
    (description "Free and @code{OpenSource} Requirements Management Tool.")
    (license license:gpl3)))

(define-public python-tree-sitter-cpp
  (package
    (name "python-tree-sitter-cpp")
    (version "0.23.4")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/tree-sitter/tree-sitter-cpp")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0sbvvfa718qrjmfr53p8x3q2c19i4vhw0n20106c8mrvpsxm7zml"))))
    (build-system pyproject-build-system)
    (arguments
     (list #:tests? #f))
    (native-inputs (list tree-sitter-cpp python-setuptools python-wheel))
    (home-page "https://github.com/tree-sitter/tree-sitter-cpp")
    (synopsis "C++ grammar for tree-sitter")
    (description "C++ grammar for tree-sitter.")
    (license license:expat)))

(define-public python-textx
  (package
    (name "python-textx")
    (version "4.3.0")
    (source
     (origin
       (method url-fetch)
       (uri (pypi-uri "textx" version))
       (sha256
        (base32 "104qi9165zgm90sym5pfzjg1443zns7dsf2q3vr4w4md560arb0g"))))
    (build-system pyproject-build-system)
    (arguments
     (list #:tests? #f))
    (propagated-inputs (list python-arpeggio python-importlib-metadata))
    (native-inputs (list python-flit-core))
    (home-page "https://textx.github.io/textX/")
    (synopsis "Meta-language for DSL implementation inspired by Xtext")
    (description "Meta-language for DSL implementation inspired by Xtext.")
    (license license:expat)))

(define-public python-owlrl
  (package
    (name "python-owlrl")
    (version "7.1.4")
    (source
     (origin
       (method url-fetch)
       (uri (pypi-uri "owlrl" version))
       (sha256
        (base32 "1xysf4wi3d9876avwawbp6anbb4pzrd5c91918gi3fa6wdkl1gb0"))))
    (build-system pyproject-build-system)
    (arguments
     (list #:tests? #f))
    (native-inputs (list python-poetry-core))
    (home-page #f)
    (synopsis
     "A simple implementation of the OWL2 RL Profile, as well as a basic RDFS inference, on top of RDFLib. Based mechanical forward chaining.")
    (description
     "This package provides a simple implementation of the OWL2 RL Profile, as well as
a basic RDFS inference, on top of RDFLib.  Based mechanical forward chaining.")
    (license license:w3c)))

(define-public python-pyshacl
  (package
    (name "python-pyshacl")
    (version "0.31.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/RDFLib/pySHACL")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1ilh7ba4qbj6fqj97wwrxfa9j5rc6d6r0y410bv07z1pv9l94dg4"))))
    (build-system pyproject-build-system)
    (arguments
     (list #:tests? #f))
    (propagated-inputs (list python-importlib-metadata python-owlrl
                             python-packaging python-prettytable python-rdflib))
    (native-inputs (list python-poetry-core))
    (home-page "https://github.com/RDFLib/pySHACL")
    (synopsis "Python SHACL Validator")
    (description "Python SHACL Validator.")
    (license license:expat)))

(define-public python-uritools
  (package
    (name "python-uritools")
    (version "6.0.1")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/tkem/uritools/")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "115a8xphnv0ykd4c0pjh5rd4zy92znpdv4nwbn7n2d6irznvk00v"))))
    (build-system pyproject-build-system)
    (native-inputs (list python-setuptools python-wheel))
    (home-page "https://github.com/tkem/uritools/")
    (synopsis "URI parsing, classification and composition")
    (description "URI parsing, classification and composition.")
    (license license:expat)))

(define-public python-spdx-tools
  (package
    (name "python-spdx-tools")
    (version "0.8.4")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/spdx/tools-python")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1ljf175yx7zd4lrm4gsq0ljkn86xp0vfr7z2kir884a2fihzx04n"))))
    (build-system pyproject-build-system)
    (arguments
     (list #:tests? #f
           #:phases #~(modify-phases %standard-phases
                        (add-before 'build 'pretend-version
                          (lambda _
              (setenv "SETUPTOOLS_SCM_PRETEND_VERSION" #$version))))))
    (propagated-inputs (list python-beartype
                             python-click
                             python-license-expression
                             python-ply
                             python-pyyaml
                             python-rdflib
                             python-semantic-version
                             python-uritools
                             python-xmltodict))
    (native-inputs (list python-pyshacl
                         python-pytest
                         python-setuptools
                         python-setuptools-scm
                         python-tzdata
                         python-wheel))
    (home-page "https://github.com/spdx/tools-python")
    (synopsis "SPDX parser and tools.")
    (description "SPDX parser and tools.")
    (license license:asl2.0)))

(define-public python-reqif
  (package
    (name "python-reqif")
    (version "0.0.48")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/strictdoc-project/reqif")
             (commit version)))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1s9m2yzgr0n3p82gar55v38ylrynqgxsjpklchc1m7pr56vwhdkc"))))
    (build-system pyproject-build-system)
    (arguments
     (list #:tests? #f))
    (propagated-inputs (list python-jinja2 python-lxml python-openpyxl
                             python-xmlschema))
    (native-inputs (list python-hatchling))
    (home-page "https://github.com/strictdoc-project/reqif")
    (synopsis "Python library for ReqIF format. ReqIF parsing and unparsing.")
    (description
     "Python library for @code{ReqIF} format. @code{ReqIF} parsing and unparsing.")
    (license license:asl2.0)))

(define-public python-datauri
  (package
    (name "python-datauri")
    (version "3.0.2")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/fcurella/python-datauri/")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "19m5jwggww30m6m1wblf300nfh7jibq24wa88z9a5gbx8qyr1css"))))
    (build-system pyproject-build-system)
    (arguments
     (list #:tests? #f))
    (propagated-inputs (list python-cached-property python-typing-extensions))
    (native-inputs (list python-setuptools python-wheel))
    (home-page "https://github.com/fcurella/python-datauri/")
    (synopsis "A li'l class for data URI manipulation in Python")
    (description
     "This package provides a li'l class for data URI manipulation in Python.")
    (license license:unlicense)))

(define-public python-webdriver-manager
  (package
    (name "python-webdriver-manager")
    (version "4.0.2")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/SergeyPirogov/webdriver_manager")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1h9bwial2hcjpihyx9jp6n5i23lnw95nadzn98h0cgxgzmmx0sk6"))))
    (build-system pyproject-build-system)
    (arguments
     (list #:tests? #f))
    (propagated-inputs (list python-packaging python-dotenv python-requests))
    (native-inputs (list python-setuptools python-wheel))
    (home-page "https://github.com/SergeyPirogov/webdriver_manager")
    (synopsis
     "Library provides the way to automatically manage drivers for different browsers")
    (description
     "Library provides the way to automatically manage drivers for different browsers.")
    (license license:asl2.0)))

(define-public python-html2pdf4doc
  (package
    (name "python-html2pdf4doc")
    (version "0.0.31")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/mettta/html2pdf_python/")
             (commit version)))
       (file-name (git-file-name name version))
       (sha256
        (base32 "020hri23amim51cx569x6ypdxffrb5mmk6v04sfddn4fz9jn4aba"))))
    (build-system pyproject-build-system)
    (propagated-inputs (list python-pypdf python-requests python-selenium
                             python-webdriver-manager))
    (native-inputs (list python-hatchling))
    (home-page "https://github.com/mettta/html2pdf_python/")
    (synopsis "Python client for HTML2PDF4Doc JavaScript library.")
    (description "Python client for HTML2PDF4Doc @code{JavaScript} library.")
    (license license:expat)))

(define-public python-docutils-0.22
  (package
    (name "python-docutils")
    (version "0.22.2")
    (source
     (origin
       (method url-fetch)
       (uri (pypi-uri "docutils" version))
       (sha256
        (base32 "0g91pkgz9daxlyayydw1sqrmjc4iqsr7rdi84y7lqy680wbpgnwz"))))
    (build-system pyproject-build-system)
    (native-inputs (list python-flit-core))
    (home-page "https://docutils.sourceforge.io")
    (synopsis "Docutils -- Python Documentation Utilities")
    (description "Docutils -- Python Documentation Utilities.")
    (license license:bsd-3)))

(define-public python-strictdoc
  (package
    (name "python-strictdoc")
    (version "0.16.2")
    (source
     (origin
       (method url-fetch)
       (uri (pypi-uri "strictdoc" version))
       (sha256
        (base32 "0lbv19vpnkxp093ynzdmppyyb8akpf03fp0w6cx16fh49vds68s9"))
       (patches (search-patches "./kbg/patches/strictdoc/version-compat.patch"))))
    (build-system pyproject-build-system)
    (propagated-inputs (list python-beautifulsoup4
                             python-docutils-0.22
                             python-fastapi
                             python-html2pdf4doc
                             python-html5lib
                             python-jinja2
                             python-lark
                             python-openpyxl
                             python-orjson
                             python-pandas
                             python-plotly
                             python-pygments
                             python-datauri
                             python-multipart
                             python-reqif
                             python-robotframework
                             python-spdx-tools
                             python-textx
                             python-toml
                             python-tree-sitter
                             python-tree-sitter-cpp
                             python-tree-sitter-python
                             python-uvicorn
                             python-websockets
                             python-xlrd
                             python-xlsxwriter))
    (native-inputs (list python-hatchling tree-sitter-cpp tree-sitter-python))
    (arguments
     (list #:tests? #f))
    (home-page "https://strictdoc.readthedocs.io/en/stable/")
    (synopsis
     "StrictDoc is open-source software for technical documentation and requirements management.")
    (description
     "@code{StrictDoc} is open-source software for technical documentation and
requirements management.")
    (license license:asl2.0)))
