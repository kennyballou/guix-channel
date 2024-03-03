(define-module (kbg packages crates-io)
  #:use-module (gnu)
  #:use-module (guix build utils)
  #:use-module (guix build-system copy)
  #:use-module (guix build-system)
  #:use-module (guix build-system cargo)
  #:use-module (guix download)
  #:use-module (guix gexp)
  #:use-module (guix download)
  #:use-module (guix packages)
  #:use-module (gnu packages crates-io)
  #:use-module (guix utils)
  #:use-module (guix)
  #:use-module ((guix licenses) #:prefix license:))

(define-public rust-core-foundation-0.7
  (package
    (name "rust-core-foundation")
    (version "0.7.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "core-foundation" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0wbias8f0m5kyn2pcksi0h58fdslams6nmf16w78fgn42dx4rljp"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-chrono" ,rust-chrono-0.4)
                       ("rust-core-foundation-sys" ,rust-core-foundation-sys-0.7)
                       ("rust-libc" ,rust-libc-0.2)
                       ("rust-uuid" ,rust-uuid-0.5))))
    (home-page "https://github.com/servo/core-foundation-rs")
    (synopsis "Bindings to Core Foundation for macOS")
    (description "Bindings to Core Foundation for @code{macOS}")
    (license (list license:expat license:asl2.0))))

(define-public rust-uom-0.30
  (package
    (name "rust-uom")
    (version "0.30.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "uom" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1vg59hnb7hh0p8kjjhgmrsnn3597722lkfdkp481wksq6vk06rg7"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-num-bigint" ,rust-num-bigint-0.3)
                       ("rust-num-rational" ,rust-num-rational-0.3)
                       ("rust-num-traits" ,rust-num-traits-0.2)
                       ("rust-serde" ,rust-serde-1)
                       ("rust-typenum" ,rust-typenum-1))))
    (home-page "https://github.com/iliekturtles/uom")
    (synopsis "Units of measurement")
    (description "Units of measurement")
    (license (list license:asl2.0 license:expat))))

(define-public rust-crossterm-terminal-0.2
  (package
    (name "rust-crossterm-terminal")
    (version "0.2.6")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "crossterm_terminal" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0di6468avyc82zm579xrfk5flhfbbjj4wjisyjhnmhp036sld1fv"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-crossterm-cursor" ,rust-crossterm-cursor-0.2)
                       ("rust-crossterm-utils" ,rust-crossterm-utils-0.2)
                       ("rust-crossterm-winapi" ,rust-crossterm-winapi-0.1)
                       ("rust-libc" ,rust-libc-0.2))))
    (home-page "https://github.com/crossterm-rs/crossterm-terminal")
    (synopsis "A cross-platform library for doing terminal related actions.")
    (description
     "This package provides a cross-platform library for doing terminal related
actions.")
    (license license:expat)))

(define-public rust-crossterm-style-0.3
  (package
    (name "rust-crossterm-style")
    (version "0.3.3")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "crossterm_style" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1xv13gj6x4anwavpk1h8pylf1riz0xkbcmjnck4slf77bx09cdcq"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-crossterm-utils" ,rust-crossterm-utils-0.2)
                       ("rust-crossterm-winapi" ,rust-crossterm-winapi-0.1)
                       ("rust-winapi" ,rust-winapi-0.3))))
    (home-page "https://github.com/crossterm-rs/crossterm-style")
    (synopsis "A cross-platform library styling the terminal output.")
    (description
     "This package provides a cross-platform library styling the terminal output.")
    (license license:expat)))

(define-public rust-crossterm-screen-0.2
  (package
    (name "rust-crossterm-screen")
    (version "0.2.5")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "crossterm_screen" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0xkv1ynf3l8693zbavjdll7f2x6fjw5zq6n42kaj4k639x499whb"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-crossterm-utils" ,rust-crossterm-utils-0.2)
                       ("rust-crossterm-winapi" ,rust-crossterm-winapi-0.1)
                       ("rust-winapi" ,rust-winapi-0.3))))
    (home-page "https://github.com/crossterm-rs/crossterm-screen")
    (synopsis "A cross-platform library for raw and alternate screen.")
    (description
     "This package provides a cross-platform library for raw and alternate screen.")
    (license license:expat)))

(define-public rust-crossterm-input-0.3
  (package
    (name "rust-crossterm-input")
    (version "0.3.9")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "crossterm_input" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0qxn9n0n4svwyc03y8b7nydm0ad8czdjyfgc66p6nnasl1f2bpf6"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-crossterm-screen" ,rust-crossterm-screen-0.2)
                       ("rust-crossterm-utils" ,rust-crossterm-utils-0.2)
                       ("rust-crossterm-winapi" ,rust-crossterm-winapi-0.1)
                       ("rust-libc" ,rust-libc-0.2)
                       ("rust-winapi" ,rust-winapi-0.3))))
    (home-page "https://github.com/crossterm-rs/crossterm-input")
    (synopsis "A cross-platform library for reading userinput.")
    (description
     "This package provides a cross-platform library for reading userinput.")
    (license license:expat)))

(define-public rust-crossterm-winapi-0.1
  (package
    (name "rust-crossterm-winapi")
    (version "0.1.5")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "crossterm_winapi" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0i8x72ffypprf2lnqi6zfgzz1didibs24w4pkdm2wibwcb6ffmdh"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-winapi" ,rust-winapi-0.3))))
    (home-page "https://github.com/crossterm-rs/crossterm-winapi")
    (synopsis
     "WinAPI wrapper that provides some basic simple abstractions around common WinAPI calls")
    (description
     "@code{WinAPI} wrapper that provides some basic simple abstractions around common
@code{WinAPI} calls")
    (license license:expat)))

(define-public rust-crossterm-utils-0.2
  (package
    (name "rust-crossterm-utils")
    (version "0.2.4")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "crossterm_utils" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "05q6iazwqacdmsramxnpx5njy6iapk4hby6zkmk31is040dsfx7q"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-crossterm-winapi" ,rust-crossterm-winapi-0.1)
                       ("rust-libc" ,rust-libc-0.2)
                       ("rust-winapi" ,rust-winapi-0.3))))
    (home-page "https://github.com/crossterm-rs/crossterm-utils")
    (synopsis "Common logic used by the crossterm crates.")
    (description "Common logic used by the crossterm crates.")
    (license license:expat)))

(define-public rust-crossterm-cursor-0.2
  (package
    (name "rust-crossterm-cursor")
    (version "0.2.6")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "crossterm_cursor" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1p33mwpijrhr1mss3nz8bm31wcxlsd802gwls9n3xn0pbw4gsjzv"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-crossterm-utils" ,rust-crossterm-utils-0.2)
                       ("rust-crossterm-winapi" ,rust-crossterm-winapi-0.1)
                       ("rust-winapi" ,rust-winapi-0.3))))
    (home-page "https://github.com/crossterm-rs/crossterm-cursor")
    (synopsis "A cross-platform library for moving the terminal cursor.")
    (description
     "This package provides a cross-platform library for moving the terminal cursor.")
    (license license:expat)))

(define-public rust-crossterm-0.9
  (package
    (name "rust-crossterm")
    (version "0.9.6")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "crossterm" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1rb14fq7nldvdzwzjjbnvcb67di9hw9ycxx32xcw7cw1g4spkb11"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-crossterm-cursor" ,rust-crossterm-cursor-0.2)
                       ("rust-crossterm-input" ,rust-crossterm-input-0.3)
                       ("rust-crossterm-screen" ,rust-crossterm-screen-0.2)
                       ("rust-crossterm-style" ,rust-crossterm-style-0.3)
                       ("rust-crossterm-terminal" ,rust-crossterm-terminal-0.2)
                       ("rust-crossterm-utils" ,rust-crossterm-utils-0.2))))
    (home-page "https://github.com/crossterm-rs/crossterm")
    (synopsis "A crossplatform terminal library for manipulating terminals.")
    (description
     "This package provides a crossplatform terminal library for manipulating
terminals.")
    (license license:expat)))

(define-public rust-tui-0.6
  (package
    (name "rust-tui")
    (version "0.6.2")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "tui" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1vnqw3nqvxhb26l8c9vhx0zqm4agcl3pjn1b4wrms1l697zj5d3k"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-bitflags" ,rust-bitflags-1)
                       ("rust-cassowary" ,rust-cassowary-0.3)
                       ("rust-crossterm" ,rust-crossterm-0.9)
                       ("rust-easycurses" ,rust-easycurses-0.12)
                       ("rust-either" ,rust-either-1)
                       ("rust-itertools" ,rust-itertools-0.8)
                       ("rust-log" ,rust-log-0.4)
                       ("rust-pancurses" ,rust-pancurses-0.16)
                       ("rust-rustbox" ,rust-rustbox-0.11)
                       ("rust-termion" ,rust-termion-1)
                       ("rust-unicode-segmentation" ,rust-unicode-segmentation-1)
                       ("rust-unicode-width" ,rust-unicode-width-0.1))))
    (home-page "https://github.com/fdehau/tui-rs")
    (synopsis "A library to build rich terminal user interfaces or dashboards
")
    (description
     "This package provides a library to build rich terminal user interfaces or
dashboards")
    (license license:expat)))

(define-public rust-battery-0.7
  (package
    (name "rust-battery")
    (version "0.7.8")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "battery" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1r1641dyks76p39i1iihswhc6iz5z51pihmpxniy1h1pi4k29dml"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-cfg-if" ,rust-cfg-if-1)
                       ("rust-core-foundation" ,rust-core-foundation-0.7)
                       ("rust-lazycell" ,rust-lazycell-1)
                       ("rust-libc" ,rust-libc-0.2)
                       ("rust-mach" ,rust-mach-0.3)
                       ("rust-nix" ,rust-nix-0.19)
                       ("rust-num-traits" ,rust-num-traits-0.2)
                       ("rust-uom" ,rust-uom-0.30)
                       ("rust-winapi" ,rust-winapi-0.3))))
    (home-page "https://github.com/svartalf/rust-battery")
    (synopsis "Cross-platform information about the notebook batteries")
    (description "Cross-platform information about the notebook batteries")
    (license (list license:asl2.0 license:expat))))

(define-public rust-battop-0.2
  (package
    (name "rust-battop")
    (version "0.2.4")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "battop" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1f5d3y9f179aljp94bl3al45g6n2bfnhw5mdmffm2rr6hraa31kn"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-battery" ,rust-battery-0.7)
                       ("rust-humantime" ,rust-humantime-1)
                       ("rust-itertools" ,rust-itertools-0.8)
                       ("rust-log" ,rust-log-0.4)
                       ("rust-stderrlog" ,rust-stderrlog-0.4)
                       ("rust-structopt" ,rust-structopt-0.2)
                       ("rust-termion" ,rust-termion-1)
                       ("rust-tui" ,rust-tui-0.6))))
    (home-page "https://github.com/svartalf/rust-battop")
    (synopsis "Interactive batteries viewer")
    (description "Interactive batteries viewer")
    (license (list license:asl2.0 license:expat))))
