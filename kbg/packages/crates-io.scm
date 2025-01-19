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
  #:use-module (gnu packages crates-graphics)
  #:use-module (gnu packages crates-windows)
  #:use-module (guix utils)
  #:use-module (guix)
  #:use-module ((guix licenses) #:prefix license:))

(define-public rust-mach-0.3
  (package
    (name "rust-mach")
    (version "0.3.2")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "mach" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1yksa8lwzqh150gr4417rls1wk20asy9vhp8kq5g9n7z58xyh8xq"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-libc" ,rust-libc-0.2)
                       ("rust-rustc-std-workspace-core" ,rust-rustc-std-workspace-core-1))))
    (home-page "https://github.com/fitzgen/mach")
    (synopsis
     "A Rust interface to the user-space API of the Mach 3.0 kernel that underlies OSX.")
    (description
     "This package provides a Rust interface to the user-space API of the Mach 3.0
kernel that underlies OSX.")
    (license license:bsd-2)))

(define-public rust-winapi-0.3
  (package
    (name "rust-winapi")
    (version "0.3.9")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "winapi" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "06gl025x418lchw1wxj64ycr7gha83m44cjr5sarhynd9xkrm0sw"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-winapi-i686-pc-windows-gnu" ,rust-winapi-i686-pc-windows-gnu-0.4)
                       ("rust-winapi-x86-64-pc-windows-gnu" ,rust-winapi-x86-64-pc-windows-gnu-0.4))))
    (home-page "https://github.com/retep998/winapi-rs")
    (synopsis "Raw FFI bindings for all of Windows API.")
    (description "Raw FFI bindings for all of Windows API.")
    (license (list license:expat license:asl2.0))))

(define-public rust-core-foundation-sys-0.7
  (package
    (name "rust-core-foundation-sys")
    (version "0.7.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "core-foundation-sys" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1b5qfnnmg49sawwfsb0c0wbj81bqi7h7lh68pmhbidf0jjs1m9xk"))))
    (build-system cargo-build-system)
    (home-page "https://github.com/servo/core-foundation-rs")
    (synopsis "Bindings to Core Foundation for macOS")
    (description "Bindings to Core Foundation for @code{macOS}")
    (license (list license:expat license:asl2.0))))

(define-public rust-winapi-i686-pc-windows-gnu-0.4
  (package
    (name "rust-winapi-i686-pc-windows-gnu")
    (version "0.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "winapi-i686-pc-windows-gnu" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1dmpa6mvcvzz16zg6d5vrfy4bxgg541wxrcip7cnshi06v38ffxc"))))
    (build-system cargo-build-system)
    (home-page "https://github.com/retep998/winapi-rs")
    (synopsis
     "Import libraries for the i686-pc-windows-gnu target. Please don't use this crate directly, depend on winapi instead.")
    (description
     "Import libraries for the i686-pc-windows-gnu target.  Please don't use this
crate directly, depend on winapi instead.")
    (license (list license:expat license:asl2.0))))

(define-public rust-winapi-x86-64-pc-windows-gnu-0.4
  (package
    (name "rust-winapi-x86-64-pc-windows-gnu")
    (version "0.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "winapi-x86-64-pc-windows-gnu" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0gqq64czqb64kskjryj8isp62m2sgvx25yyj3kpc2myh85w24bki"))))
    (build-system cargo-build-system)
    (home-page "https://github.com/retep998/winapi-rs")
    (synopsis
     "Import libraries for the x86-64-pc-windows-gnu target. Please don't use this crate directly, depend on winapi instead.")
    (description
     "Import libraries for the x86-54-pc-windows-gnu target.  Please don't use this
crate directly, depend on winapi instead.")
    (license (list license:expat license:asl2.0))))

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

(define-public rust-jod-thread-0.1
  (package
    (name "rust-jod-thread")
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "jod-thread" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1bj7g6l59ybcf33znf80ccqbxvs1cmd8ynd4m8h7ywdqk473c8wb"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t))
    (home-page "https://github.com/matklad/jod-thread")
    (synopsis "std::thread which joins on drop by default.")
    (description "std::thread which joins on drop by default.")
    (license (list license:expat license:asl2.0))))

(define-public rust-assert-unordered-0.3
  (package
    (name "rust-assert-unordered")
    (version "0.3.5")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "assert_unordered" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0r123d4az6rhivpsymwmg0k4hn9iagp0hkhka6rkwcl1g0xk4x0w"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-ansi-term" ,rust-ansi-term-0.12))))
    (home-page "https://github.com/nu11ptr/assert_unordered")
    (synopsis "A direct replacement for `assert_eq` for unordered collections")
    (description
     "This package provides a direct replacement for `assert_eq` for unordered
collections")
    (license (list license:expat license:asl2.0))))

(define-public rust-typed-builder-0.11
  (package
    (name "rust-typed-builder")
    (version "0.11.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "typed-builder" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "07nlizmjyya5f792qy0zdrqa4lz0ildxc34h421rxwxz1nj2d8a7"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-proc-macro2" ,rust-proc-macro2-1)
                       ("rust-quote" ,rust-quote-1)
                       ("rust-syn" ,rust-syn-1))))
    (home-page "https://github.com/idanarye/rust-typed-builder")
    (synopsis "Compile-time type-checked builder derive")
    (description "Compile-time type-checked builder derive")
    (license (list license:expat license:asl2.0))))

(define-public rust-joinery-2
  (package
    (name "rust-joinery")
    (version "2.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "joinery" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1xg4cjnz8cd6ya9hynb9wx79ijd3j6307f47aijviqzwyml7s5kj"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-proc-macro2" ,rust-proc-macro2-1)
                       ("rust-quote" ,rust-quote-1)
                       ("rust-syn" ,rust-syn-1))))
    (home-page "https://github.com/Lucretiel/joinery")
    (synopsis
     "A small crate for generically joining iterators with a separator")
    (description
     "This package provides a small crate for generically joining iterators with a
separator")
    (license license:expat)))

(define-public rust-titlecase-2
  (package
    (name "rust-titlecase")
    (version "2.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "titlecase" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0hi0hkh2x78rvq7rhdgdzsgwcnlpvvb59hgnifsgwz01vf67lf9q"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-joinery" ,rust-joinery-2)
                       ("rust-lazy-static" ,rust-lazy-static-1)
                       ("rust-regex" ,rust-regex-1))))
    (home-page "https://github.com/wezm/titlecase")
    (synopsis
     "Capitalize text according to a style defined by John Gruber for Daring Fireball.")
    (description
     "Capitalize text according to a style defined by John Gruber for Daring Fireball.")
    (license license:expat)))

(define-public rust-serde-millis-0.1
  (package
    (name "rust-serde-millis")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "serde_millis" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "002d8dk3fwidh5j44aixjbzw80q24w0d208xklv2rvm51iwdrqp6"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-serde" ,rust-serde-1))))
    (home-page "https://github.com/tailhook/serde-millis")
    (synopsis
     "    A serde wrapper that stores integer millisecond value for timestamps
    and durations (used similarly to serde_bytes)
")
    (description
     "This package provides a serde wrapper that stores integer millisecond value for
timestamps and durations (used similarly to serde_bytes)")
    (license (list license:expat license:asl2.0))))

(define-public rust-rowan-0.15
  (package
    (name "rust-rowan")
    (version "0.15.15")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "rowan" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0j9b340gsyf2h7v1q9xb4mqyqp4qbyzlbk1r9zn2mzyclyl8z99j"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-countme" ,rust-countme-3)
                       ("rust-hashbrown" ,rust-hashbrown-0.14)
                       ("rust-memoffset" ,rust-memoffset-0.9)
                       ("rust-rustc-hash" ,rust-rustc-hash-1)
                       ("rust-serde" ,rust-serde-1)
                       ("rust-text-size" ,rust-text-size-1))))
    (home-page "https://github.com/rust-analyzer/rowan")
    (synopsis "Library for generic lossless syntax trees")
    (description "Library for generic lossless syntax trees")
    (license (list license:expat license:asl2.0))))

(define-public rust-petgraph-0.6
  (package
    (name "rust-petgraph")
    (version "0.6.4")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "petgraph" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1ac6wfq5f5pzcv0nvzzfgjbwg2kwslpnzsw5wcmxlscfcb9azlz1"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-fixedbitset" ,rust-fixedbitset-0.4)
                       ("rust-indexmap" ,rust-indexmap-2)
                       ("rust-quickcheck" ,rust-quickcheck-0.8)
                       ("rust-serde" ,rust-serde-1)
                       ("rust-serde-derive" ,rust-serde-derive-1))))
    (home-page "https://github.com/petgraph/petgraph")
    (synopsis
     "Graph data structure library. Provides graph types and graph algorithms.")
    (description
     "Graph data structure library.  Provides graph types and graph algorithms.")
    (license (list license:expat license:asl2.0))))

(define-public rust-lsp-types-0.93
  (package
    (name "rust-lsp-types")
    (version "0.93.2")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "lsp-types" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0lfawrvxq3k6jpblyikfvzh1759zf3zpl39pfhcnb3yiwb3ykrlv"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-bitflags" ,rust-bitflags-1)
                       ("rust-serde" ,rust-serde-1)
                       ("rust-serde-json" ,rust-serde-json-1)
                       ("rust-serde-repr" ,rust-serde-repr-0.1)
                       ("rust-url" ,rust-url-2))))
    (home-page "https://github.com/gluon-lang/lsp-types")
    (synopsis
     "Types for interaction with a language server, using VSCode's Language Server Protocol")
    (description
     "Types for interaction with a language server, using VSCode's Language Server
Protocol")
    (license license:expat)))

(define-public rust-lsp-server-0.6
  (package
    (name "rust-lsp-server")
    (version "0.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "lsp-server" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0nkp6sy5dmvishsg5rjvv3q57h87ald21zmq5506bxlwqb0p01gp"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-crossbeam-channel" ,rust-crossbeam-channel-0.5)
                       ("rust-log" ,rust-log-0.4)
                       ("rust-serde" ,rust-serde-1)
                       ("rust-serde-json" ,rust-serde-json-1))))
    (home-page
     "https://github.com/rust-lang/rust-analyzer/tree/master/lib/lsp-server")
    (synopsis "Generic LSP server scaffold.")
    (description "Generic LSP server scaffold.")
    (license (list license:expat license:asl2.0))))

(define-public rust-logos-derive-0.12
  (package
    (name "rust-logos-derive")
    (version "0.12.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "logos-derive" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0v295x78vcskab88hshl530w9d1vn61cmlaic4d6dydsila4kn51"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-beef" ,rust-beef-0.5)
                       ("rust-fnv" ,rust-fnv-1)
                       ("rust-proc-macro2" ,rust-proc-macro2-1)
                       ("rust-quote" ,rust-quote-1)
                       ("rust-regex-syntax" ,rust-regex-syntax-0.6)
                       ("rust-syn" ,rust-syn-1))))
    (home-page "https://logos.maciej.codes/")
    (synopsis "Create ridiculously fast Lexers")
    (description "Create ridiculously fast Lexers")
    (license (list license:expat license:asl2.0))))

(define-public rust-logos-0.12
  (package
    (name "rust-logos")
    (version "0.12.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "logos" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1w82qm3hck5cr6ax3j3yzrpf4zzbffahz126ahyqwyn6h8b072xz"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-logos-derive" ,rust-logos-derive-0.12))))
    (home-page "https://logos.maciej.codes/")
    (synopsis "Create ridiculously fast Lexers")
    (description "Create ridiculously fast Lexers")
    (license (list license:expat license:asl2.0))))

(define-public rust-isocountry-0.3
  (package
    (name "rust-isocountry")
    (version "0.3.2")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "isocountry" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "011y6sb6rs2i85g2jvifx5s54clw7nprinzzhfx08jgvy15xr88y"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-serde" ,rust-serde-1)
                       ("rust-thiserror" ,rust-thiserror-1))))
    (home-page "https://github.com/sifton/isocountry-rs")
    (synopsis "ISO 3166-1 enumeration for Rust")
    (description "ISO 3166-1 enumeration for Rust")
    (license license:expat)))

(define-public rust-unicode-case-mapping-0.4
  (package
    (name "rust-unicode-case-mapping")
    (version "0.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "unicode-case-mapping" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "17rrnk7vbk995qdcm0jdj0hhslrvx59s7bzx41i5pg7zc8f3jsli"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t))
    (home-page "https://github.com/yeslogic/unicode-case-mapping")
    (synopsis
     "Fast lowercase, uppercase, and titlecase mapping for characters")
    (description
     "Fast lowercase, uppercase, and titlecase mapping for characters")
    (license license:asl2.0)))

(define-public rust-human-name-2
  (package
    (name "rust-human-name")
    (version "2.0.3")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "human_name" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1fcr2kcbagfvmz9yq8wlgp8vp0dlrfqdww2h3pmlj6f33fhx6h3x"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-compact-str" ,rust-compact-str-0.7)
                       ("rust-crossbeam-utils" ,rust-crossbeam-utils-0.8)
                       ("rust-libc" ,rust-libc-0.2)
                       ("rust-phf" ,rust-phf-0.11)
                       ("rust-phf-codegen" ,rust-phf-codegen-0.11)
                       ("rust-serde" ,rust-serde-1)
                       ("rust-serde" ,rust-serde-1)
                       ("rust-serde-json" ,rust-serde-json-1)
                       ("rust-serde-json" ,rust-serde-json-1)
                       ("rust-smallvec" ,rust-smallvec-1)
                       ("rust-unicode-case-mapping" ,rust-unicode-case-mapping-0.4)
                       ("rust-unicode-normalization" ,rust-unicode-normalization-0.1)
                       ("rust-unicode-segmentation" ,rust-unicode-segmentation-1)
                       ("rust-unidecode" ,rust-unidecode-0.3))))
    (home-page "https://github.com/djudd/human-name")
    (synopsis "A library for parsing and comparing human names")
    (description
     "This package provides a library for parsing and comparing human names")
    (license license:asl2.0)))

(define-public rust-texlab-4
  (package
    (name "rust-texlab")
    (version "4.3.2")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "texlab" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0laxg7qprbixp20cqdy824vrxq692c2x92aqigw5a84s0b69dbrn"))))
    (build-system cargo-build-system)
    (arguments
     `(#:tests? #f
       #:cargo-inputs (("rust-anyhow" ,rust-anyhow-1)
                       ("rust-byteorder" ,rust-byteorder-1)
                       ("rust-chrono" ,rust-chrono-0.4)
                       ("rust-clap" ,rust-clap-4)
                       ("rust-crossbeam-channel" ,rust-crossbeam-channel-0.5)
                       ("rust-dashmap" ,rust-dashmap-5)
                       ("rust-derive-more" ,rust-derive-more-0.99)
                       ("rust-dirs" ,rust-dirs-4)
                       ("rust-encoding-rs" ,rust-encoding-rs-0.8)
                       ("rust-encoding-rs-io" ,rust-encoding-rs-io-0.1)
                       ("rust-fern" ,rust-fern-0.6)
                       ("rust-flate2" ,rust-flate2-1)
                       ("rust-fuzzy-matcher" ,rust-fuzzy-matcher-0.3)
                       ("rust-human-name" ,rust-human-name-2)
                       ("rust-isocountry" ,rust-isocountry-0.3)
                       ("rust-itertools" ,rust-itertools-0.10)
                       ("rust-log" ,rust-log-0.4)
                       ("rust-logos" ,rust-logos-0.12)
                       ("rust-lsp-server" ,rust-lsp-server-0.6)
                       ("rust-lsp-types" ,rust-lsp-types-0.93)
                       ("rust-notify" ,rust-notify-5)
                       ("rust-once-cell" ,rust-once-cell-1)
                       ("rust-petgraph" ,rust-petgraph-0.6)
                       ("rust-regex" ,rust-regex-1)
                       ("rust-rowan" ,rust-rowan-0.15)
                       ("rust-rustc-hash" ,rust-rustc-hash-1)
                       ("rust-serde" ,rust-serde-1)
                       ("rust-serde-json" ,rust-serde-json-1)
                       ("rust-serde-millis" ,rust-serde-millis-0.1)
                       ("rust-serde-regex" ,rust-serde-regex-1)
                       ("rust-serde-repr" ,rust-serde-repr-0.1)
                       ("rust-smol-str" ,rust-smol-str-0.1)
                       ("rust-strum" ,rust-strum-0.24)
                       ("rust-tempfile" ,rust-tempfile-3)
                       ("rust-threadpool" ,rust-threadpool-1)
                       ("rust-titlecase" ,rust-titlecase-2)
                       ("rust-typed-builder" ,rust-typed-builder-0.11)
                       ("rust-unicode-normalization" ,rust-unicode-normalization-0.1)
                       ("rust-url" ,rust-url-2)
                       ("rust-uuid" ,rust-uuid-1))
       #:cargo-development-inputs (("rust-assert-unordered" ,rust-assert-unordered-0.3)
                                   ("rust-criterion" ,rust-criterion-0.4)
                                   ("rust-env-logger" ,rust-env-logger-0.9)
                                   ("rust-insta" ,rust-insta-1)
                                   ("rust-jod-thread" ,rust-jod-thread-0.1))))
    (home-page "https://github.com/latex-lsp/texlab")
    (synopsis "LaTeX Language Server")
    (description "@code{LaTeX} Language Server")
    (license license:gpl3)))

(define-public rust-stderrlog-0.4
  (package
    (inherit rust-stderrlog-0.5)
    (name "rust-stderrlog")
    (version "0.4.3")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "stderrlog" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
         (base32 "09bzvmx2lzyycr1xfcvfwnvqsjg9kb4w22hb19bjqid5j2dyxr9j"))
       (modules '((guix build utils)))
       (snippet
        '(begin (substitute* "Cargo.toml"
                  (("version = \"~([[:digit:]]+(\\.[[:digit:]]+)*)\"" _ version)
                   (string-append "version = \"^" version "\""))
                  (("version = \"\\^([[:digit:]]+\\.[[:digit:]]+), <.*\"" _ version)
                   (string-append "version = \"^" version "\"")))))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs
       (("rust-atty" ,rust-atty-0.2)
        ("rust-chrono" ,rust-chrono-0.4)
        ("rust-log" ,rust-log-0.4)
        ("rust-termcolor" ,rust-termcolor-1)
        ("rust-thread-local" ,rust-thread-local-0.3))
        #:cargo-development-inputs
        (("rust-clap" ,rust-clap-2)
         ("rust-docopt" ,rust-docopt-0.6)
         ("rust-libc" ,rust-libc-0.2)
         ("rust-rustc-serialize" ,rust-rustc-serialize-0.3)
         ("rust-structopt" ,rust-structopt-0.2))))))

(define-public rust-easycurses-0.12
  (package
    (name "rust-easycurses")
    (version "0.12.2")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "easycurses" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "10cp60lrhn1k0vg97jgzqbk03x4hmhrgxbz9m3gcmzhzbpn88m2a"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs
       (("rust-pancurses" ,rust-pancurses-0.16))))
    (home-page "https://github.com/Lokathor/easycurses-rs")
    (synopsis "Work with @code{curses} easily")
    (description
     "This package provides a crate that makes working with @code{curses}
easy.")
    (license (list license:unlicense license:zlib))))

(define-public rust-pancurses-0.16
  (package
    (name "rust-pancurses")
    (version "0.16.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "pancurses" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1w0gknaz07fzq7gw7zjg1bg9xr7srp2z3zksmjr9cc23gk1qn1fk"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs
       (("rust-libc" ,rust-libc-0.2)
        ("rust-log" ,rust-log-0.4)
        ("rust-ncurses" ,rust-ncurses-5)
        ("rust-pdcurses-sys" ,rust-pdcurses-sys-0.7)
        ("rust-winreg" ,rust-winreg-0.5))))
    (home-page "https://github.com/ihalila/pancurses")
    (synopsis "@code{curses} library for Rust")
    (description "@code{pancurses} is a @code{curses} library for Rust.")
    (license license:expat)))

(define-public rust-rustbox-0.11
  (package
    (name "rust-rustbox")
    (version "0.11.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "rustbox" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1cahyxncijdwvy9kw87ahizpfbdq76hf333y4nrhbxzssajhdzcf"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs
       (("rust-bitflags" ,rust-bitflags-0.2)
        ("rust-gag" ,rust-gag-0.1)
        ("rust-num-traits" ,rust-num-traits-0.1)
        ("rust-termbox-sys" ,rust-termbox-sys-0.2))))
    (home-page "https://github.com/gchp/rustbox")
    (synopsis "Rust implementation of the @code{termbox} library")
    (description
     "This package provides a Rust implementation of the @code{termbox}
library.")
    (license license:expat)))

(define-public rust-bitflags-0.2
  (package
    (inherit rust-bitflags-1)
    (name "rust-bitflags")
    (version "0.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "bitflags" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "09yk0lk3vjsrvfcnzljmgvz9inpjs0idykvni7kij38l5vn807x4"))))
    (build-system cargo-build-system)
    (arguments `(#:skip-build? #t))))
