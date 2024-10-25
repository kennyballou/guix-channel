(define-module (kbg packages node-xyz)
  #:use-module (guix build-system node)
  #:use-module (guix download)
  #:use-module (guix gexp)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (guix packages))

(define-public node-fast-deep-equal-3.1.3
  (package
    (name "node-fast-deep-equal")
    (version "3.1.3")
    (source
     (origin
       (method url-fetch)
       (uri
        "https://registry.npmjs.org/fast-deep-equal/-/fast-deep-equal-3.1.3.tgz")
       (sha256
        (base32 "13vvwib6za4zh7054n3fg86y127ig3jb0djqz31qsqr71yca06dh"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases #~(modify-phases %standard-phases
                   (delete 'build)
                   (add-after 'patch-dependencies 'delete-dev-dependencies
                     (lambda _
                       (delete-dependencies '("coveralls" "dot"
                                              "eslint"
                                              "mocha"
                                              "nyc"
                                              "pre-commit"
                                              "react"
                                              "react-test-renderer"
                                              "sinon"
                                              "typescript")))))))
    (home-page "https://github.com/epoberezkin/fast-deep-equal#readme")
    (synopsis "Fast deep equal")
    (description "Fast deep equal")
    (license license:expat)))

(define-public node-fast-uri-3.0.3
  (package
    (name "node-fast-uri")
    (version "3.0.3")
    (source
     (origin
       (method url-fetch)
       (uri "https://registry.npmjs.org/fast-uri/-/fast-uri-3.0.3.tgz")
       (sha256
        (base32 "0ad8y5pbarw20364a3sc4rjvkn06l649qsfcy326nq9y7vvi701k"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases #~(modify-phases %standard-phases
                   (delete 'build)
                   (add-after 'patch-dependencies 'delete-dev-dependencies
                     (lambda _
                       (delete-dependencies '("@fastify/pre-commit" "ajv"
                                              "benchmark"
                                              "coveralls"
                                              "snazzy"
                                              "standard"
                                              "tape"
                                              "tsd"
                                              "uri-js")))))))
    (home-page "https://github.com/fastify/fast-uri")
    (synopsis "Dependency free RFC 3986 URI toolbox")
    (description "Dependency free RFC 3986 URI toolbox")
    (license license:bsd-3)))

(define-public node-json-schema-traverse-1.0.0
  (package
    (name "node-json-schema-traverse")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri
        "https://registry.npmjs.org/json-schema-traverse/-/json-schema-traverse-1.0.0.tgz")
       (sha256
        (base32 "08cvg5wysj4r0ax2lvhx7j74l7da8w75klz5pmsc57zj5mi24ch2"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases #~(modify-phases %standard-phases
                   (delete 'build)
                   (add-after 'patch-dependencies 'delete-dev-dependencies
                     (lambda _
                       (delete-dependencies '("eslint" "mocha" "nyc"
                                              "pre-commit")))))))
    (home-page "https://github.com/epoberezkin/json-schema-traverse#readme")
    (synopsis "Traverse JSON Schema passing each schema object to callback")
    (description "Traverse JSON Schema passing each schema object to callback")
    (license license:expat)))

(define-public node-require-from-string-2.0.2
  (package
    (name "node-require-from-string")
    (version "2.0.2")
    (source
     (origin
       (method url-fetch)
       (uri
        "https://registry.npmjs.org/require-from-string/-/require-from-string-2.0.2.tgz")
       (sha256
        (base32 "10ldp2bzb86czf47kmvirn9x2976yh6g0my7l1spg3whcm4llsfb"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases #~(modify-phases %standard-phases
                   (delete 'build)
                   (add-after 'patch-dependencies 'delete-dev-dependencies
                     (lambda _
                       (delete-dependencies '("mocha")))))))
    (home-page "https://github.com/floatdrop/require-from-string#readme")
    (synopsis "Require module from string")
    (description "Require module from string")
    (license license:expat)))

(define-public node-ajv-8.17.1
  (package
    (name "node-ajv")
    (version "8.17.1")
    (source
     (origin
       (method url-fetch)
       (uri "https://registry.npmjs.org/ajv/-/ajv-8.17.1.tgz")
       (sha256
        (base32 "0203fwcg3y0bmzrhh1crgigrxzwvn6kr5flf2yzlv66cp1wax7gh"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases #~(modify-phases %standard-phases
                   (delete 'build)
                   (add-after 'patch-dependencies 'delete-dev-dependencies
                     (lambda _
                       (delete-dependencies '("@ajv-validator/config"
                                              "@rollup/plugin-commonjs"
                                              "@rollup/plugin-json"
                                              "@rollup/plugin-node-resolve"
                                              "@rollup/plugin-typescript"
                                              "@types/chai"
                                              "@types/mocha"
                                              "@types/node"
                                              "@types/require-from-string"
                                              "@typescript-eslint/eslint-plugin"
                                              "@typescript-eslint/parser"
                                              "ajv-formats"
                                              "browserify"
                                              "chai"
                                              "cross-env"
                                              "dayjs"
                                              "dayjs-plugin-utc"
                                              "eslint"
                                              "eslint-config-prettier"
                                              "glob"
                                              "husky"
                                              "if-node-version"
                                              "jimp"
                                              "js-beautify"
                                              "json-schema-test"
                                              "karma"
                                              "karma-chrome-launcher"
                                              "karma-mocha"
                                              "lint-staged"
                                              "mocha"
                                              "module-from-string"
                                              "node-fetch"
                                              "nyc"
                                              "prettier"
                                              "re2"
                                              "rollup"
                                              "rollup-plugin-terser"
                                              "ts-node"
                                              "tsify"
                                              "typescript"
                                              "uri-js")))))))
    (inputs (list node-require-from-string-2.0.2
                  node-json-schema-traverse-1.0.0 node-fast-uri-3.0.3
                  node-fast-deep-equal-3.1.3))
    (home-page "https://ajv.js.org")
    (synopsis "Another JSON Schema Validator")
    (description "Another JSON Schema Validator")
    (license license:expat)))

(define-public node-lodash-4.17.21
  (package
    (name "node-lodash")
    (version "4.17.21")
    (source
     (origin
       (method url-fetch)
       (uri "https://registry.npmjs.org/lodash/-/lodash-4.17.21.tgz")
       (sha256
        (base32 "017qragyfl5ifajdx48lvz46wr0jc1llikgvc2fhqakhwp4pl23a"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases #~(modify-phases %standard-phases
                   (delete 'build))))
    (home-page "https://lodash.com/")
    (synopsis "Lodash modular utilities.")
    (description "Lodash modular utilities.")
    (license license:expat)))

(define-public node-request-light-0.5.8
  (package
    (name "node-request-light")
    (version "0.5.8")
    (source
     (origin
       (method url-fetch)
       (uri
        "https://registry.npmjs.org/request-light/-/request-light-0.5.8.tgz")
       (sha256
        (base32 "1fbm8gr69sr9nx2bna7svpkf1jxs0kwsb900ncsn8185z944nvab"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases #~(modify-phases %standard-phases
                   (delete 'build)
                   (add-after 'patch-dependencies 'delete-dev-dependencies
                     (lambda _
                       (delete-dependencies '("ava" "proxy"
                                              "rimraf"
                                              "webpack"
                                              "ts-loader"
                                              "typescript"
                                              "vscode-nls"
                                              "@types/node"
                                              "webpack-cli"
                                              "http-proxy-agent"
                                              "https-proxy-agent")))))))
    (home-page "https://github.com/microsoft/node-request-light#readme")
    (synopsis
     "Lightweight request library. Promise based, with proxy support.")
    (description
     "Lightweight request library. Promise based, with proxy support.")
    (license license:expat)))

(define-public node-jsonc-parser-3.3.1
  (package
    (name "node-jsonc-parser")
    (version "3.3.1")
    (source
     (origin
       (method url-fetch)
       (uri "https://registry.npmjs.org/jsonc-parser/-/jsonc-parser-3.3.1.tgz")
       (sha256
        (base32 "1jfbwd48cfrqvz16vcwyldxsms8rvwn18z5gwyx66x0ycyw1a0sa"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases #~(modify-phases %standard-phases
                   (delete 'build)
                   (add-after 'patch-dependencies 'delete-dev-dependencies
                     (lambda _
                       (delete-dependencies '("@types/mocha" "@types/node"
                                              "@typescript-eslint/eslint-plugin"
                                              "@typescript-eslint/parser"
                                              "eslint"
                                              "mocha"
                                              "rimraf"
                                              "typescript")))))))
    (home-page "https://github.com/microsoft/node-jsonc-parser#readme")
    (synopsis "Scanner and parser for JSON with comments.")
    (description "Scanner and parser for JSON with comments.")
    (license license:expat)))

(define-public node-vscode-json-languageservice-4.1.8
  (package
    (name "node-vscode-json-languageservice")
    (version "4.1.8")
    (source
     (origin
       (method url-fetch)
       (uri
        "https://registry.npmjs.org/vscode-json-languageservice/-/vscode-json-languageservice-4.1.8.tgz")
       (sha256
        (base32 "041nb74f79ayadvhsjzhi3yilmsf0hsd3wh4vp09047r2pjasb68"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases #~(modify-phases %standard-phases
                   (delete 'build)
                   (add-after 'patch-dependencies 'delete-dev-dependencies
                     (lambda _
                       (delete-dependencies '("mocha" "eslint"
                                              "rimraf"
                                              "typescript"
                                              "@types/node"
                                              "@types/mocha"
                                              "@typescript-eslint/parser"
                                              "@typescript-eslint/eslint-plugin")))))))
    (inputs (list node-vscode-languageserver-textdocument-1.0.12
                  node-vscode-languageserver-types-3.17.5
                  node-jsonc-parser-3.3.1 node-vscode-uri-3.0.8
                  node-vscode-nls-5.2.0))
    (home-page
     "https://github.com/Microsoft/vscode-json-languageservice#readme")
    (synopsis "Language service for JSON")
    (description "Language service for JSON")
    (license license:expat)))

(define-public node-vscode-jsonrpc-6.0.0
  (package
    (name "node-vscode-jsonrpc")
    (version "6.0.0")
    (source
     (origin
       (method url-fetch)
       (uri
        "https://registry.npmjs.org/vscode-jsonrpc/-/vscode-jsonrpc-6.0.0.tgz")
       (sha256
        (base32 "0g1v62c9dqzp9mdl9nz56ily9fj6b1n8k83xi28zd31xj4xqjiji"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases #~(modify-phases %standard-phases
                   (delete 'build)
                   (add-after 'patch-dependencies 'delete-dev-dependencies
                     (lambda _
                       (delete-dependencies '("msgpack-lite"
                                              "@types/msgpack-lite")))))))
    (home-page
     "https://github.com/Microsoft/vscode-languageserver-node#readme")
    (synopsis "A json rpc implementation over streams")
    (description "A json rpc implementation over streams")
    (license license:expat)))

(define-public node-vscode-languageserver-types-3.16.0
  (package
    (name "node-vscode-languageserver-types")
    (version "3.16.0")
    (source
     (origin
       (method url-fetch)
       (uri
        "https://registry.npmjs.org/vscode-languageserver-types/-/vscode-languageserver-types-3.16.0.tgz")
       (sha256
        (base32 "0b3ajk37d3lr0w72cl03qc0ra5z15f90d1xf45fnpzd6xnjlx4zb"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases #~(modify-phases %standard-phases
                   (delete 'build))))
    (home-page
     "https://github.com/Microsoft/vscode-languageserver-node#readme")
    (synopsis "Types used by the Language server for node")
    (description "Types used by the Language server for node")
    (license license:expat)))

(define-public node-vscode-languageserver-protocol-3.16.0
  (package
    (name "node-vscode-languageserver-protocol")
    (version "3.16.0")
    (source
     (origin
       (method url-fetch)
       (uri
        "https://registry.npmjs.org/vscode-languageserver-protocol/-/vscode-languageserver-protocol-3.16.0.tgz")
       (sha256
        (base32 "19d3j2v3khl93l4ffgjgs6yb1hb3d698g056mwkh86bd2far67bf"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases #~(modify-phases %standard-phases
                   (delete 'build))))
    (inputs (list node-vscode-languageserver-types-3.16.0
                  node-vscode-jsonrpc-6.0.0))
    (home-page
     "https://github.com/Microsoft/vscode-languageserver-node#readme")
    (synopsis "VSCode Language Server Protocol implementation")
    (description "VSCode Language Server Protocol implementation")
    (license license:expat)))

(define-public node-vscode-languageserver-7.0.0
  (package
    (name "node-vscode-languageserver")
    (version "7.0.0")
    (source
     (origin
       (method url-fetch)
       (uri
        "https://registry.npmjs.org/vscode-languageserver/-/vscode-languageserver-7.0.0.tgz")
       (sha256
        (base32 "12bp2f43ljs7idk37ssbxp6gijnq5hb1mkccyln1mnhxj8w2zr9p"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases #~(modify-phases %standard-phases
                   (delete 'build))))
    (inputs (list node-vscode-languageserver-protocol-3.16.0))
    (home-page
     "https://github.com/Microsoft/vscode-languageserver-node#readme")
    (synopsis "Language server implementation for node")
    (description "Language server implementation for node")
    (license license:expat)))

(define-public node-vscode-languageserver-textdocument-1.0.12
  (package
    (name "node-vscode-languageserver-textdocument")
    (version "1.0.12")
    (source
     (origin
       (method url-fetch)
       (uri
        "https://registry.npmjs.org/vscode-languageserver-textdocument/-/vscode-languageserver-textdocument-1.0.12.tgz")
       (sha256
        (base32 "1nxhygxja2js6ih8kr3dxcihlsmv434whnrgymki5s3f9n0jh7cz"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases #~(modify-phases %standard-phases
                   (delete 'build))))
    (home-page
     "https://github.com/Microsoft/vscode-languageserver-node#readme")
    (synopsis "A simple text document implementation for Node LSP servers")
    (description "A simple text document implementation for Node LSP servers")
    (license license:expat)))

(define-public node-vscode-languageserver-types-3.17.5
  (package
    (name "node-vscode-languageserver-types")
    (version "3.17.5")
    (source
     (origin
       (method url-fetch)
       (uri
        "https://registry.npmjs.org/vscode-languageserver-types/-/vscode-languageserver-types-3.17.5.tgz")
       (sha256
        (base32 "1h6a173990rn6g36pf7bf2k9gynwshr8ziaipr8i7rdvz3kzjwyn"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases #~(modify-phases %standard-phases
                   (delete 'build))))
    (home-page
     "https://github.com/Microsoft/vscode-languageserver-node#readme")
    (synopsis "Types used by the Language server for node")
    (description "Types used by the Language server for node")
    (license license:expat)))

(define-public node-vscode-nls-5.2.0
  (package
    (name "node-vscode-nls")
    (version "5.2.0")
    (source
     (origin
       (method url-fetch)
       (uri "https://registry.npmjs.org/vscode-nls/-/vscode-nls-5.2.0.tgz")
       (sha256
        (base32 "0yd7kkd6wif95acfp7d61gf17v92llch4xv95zzlwap5d8wra7s4"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases #~(modify-phases %standard-phases
                   (delete 'build)
                   (add-after 'patch-dependencies 'delete-dev-dependencies
                     (lambda _
                       (delete-dependencies '("@types/mocha" "@types/node"
                                              "@typescript-eslint/parser"
                                              "eslint"
                                              "mocha"
                                              "rimraf"
                                              "typescript")))))))
    (home-page "https://github.com/Microsoft/vscode-nls#readme")
    (synopsis "NPM module to externalize and localize VSCode extensions")
    (description "NPM module to externalize and localize VSCode extensions")
    (license license:expat)))

(define-public node-vscode-uri-3.0.8
  (package
    (name "node-vscode-uri")
    (version "3.0.8")
    (source
     (origin
       (method url-fetch)
       (uri "https://registry.npmjs.org/vscode-uri/-/vscode-uri-3.0.8.tgz")
       (sha256
        (base32 "1wvmyh8bw0yy02adq2pfz8h7l4a3xqyzh1zhgmarr9jv1gxx45m7"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases #~(modify-phases %standard-phases
                   (delete 'build)
                   (add-after 'patch-dependencies 'delete-dev-dependencies
                     (lambda _
                       (delete-dependencies '("@types/mocha" "@types/node"
                                              "mocha"
                                              "path-browserify"
                                              "rimraf"
                                              "ts-loader"
                                              "typescript"
                                              "webpack"
                                              "webpack-cli")))))))
    (home-page "https://github.com/microsoft/vscode-uri#readme")
    (synopsis
     "The URI implementation that is used by VS Code and its extensions")
    (description
     "The URI implementation that is used by VS Code and its extensions")
    (license license:expat)))

(define-public node-yaml-2.2.2
  (package
    (name "node-yaml")
    (version "2.2.2")
    (source
     (origin
       (method url-fetch)
       (uri "https://registry.npmjs.org/yaml/-/yaml-2.2.2.tgz")
       (sha256
        (base32 "1yqcgbrqa26j0h6g72k0wl9mdj9gmqj0v8xrd5r9fgqkkqzg5kxr"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases #~(modify-phases %standard-phases
                   (delete 'build)
                   (add-after 'patch-dependencies 'delete-dev-dependencies
                     (lambda _
                       (delete-dependencies '("jest" "tslib"
                                              "eslint"
                                              "rollup"
                                              "prettier"
                                              "cross-env"
                                              "babel-jest"
                                              "fast-check"
                                              "typescript"
                                              "@babel/core"
                                              "@types/jest"
                                              "@types/node"
                                              "@babel/preset-env"
                                              "@rollup/plugin-babel"
                                              "@rollup/plugin-replace"
                                              "eslint-config-prettier"
                                              "@rollup/plugin-typescript"
                                              "@typescript-eslint/parser"
                                              "jest-ts-webcompat-resolver"
                                              "@typescript-eslint/eslint-plugin"
                                              "@babel/plugin-transform-typescript"
                                              "@babel/plugin-proposal-class-properties"
                                              "@babel/plugin-proposal-nullish-coalescing-operator")))))))
    (home-page "https://eemeli.org/yaml/")
    (synopsis "JavaScript parser and stringifier for YAML")
    (description "JavaScript parser and stringifier for YAML")
    (license license:isc)))

(define-public node-yaml-language-server-1.15.0
  (package
    (name "node-yaml-language-server")
    (version "1.15.0")
    (source
     (origin
       (method url-fetch)
       (uri
        "https://registry.npmjs.org/yaml-language-server/-/yaml-language-server-1.15.0.tgz")
       (sha256
        (base32 "1gbrymx0v2qvyjvb0gj7377j57snq1hawi2d2bmmaws3hnlv4gdr"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases #~(modify-phases %standard-phases
                   (delete 'build)
                   (add-after 'patch-dependencies 'delete-dev-dependencies
                     (lambda _
                       (delete-dependencies '("@microsoft/eslint-formatter-sarif"
                                              "@types/chai"
                                              "@types/mocha"
                                              "@types/node"
                                              "@types/prettier"
                                              "@types/sinon"
                                              "@types/sinon-chai"
                                              "@typescript-eslint/eslint-plugin"
                                              "@typescript-eslint/parser"
                                              "chai"
                                              "coveralls"
                                              "eslint"
                                              "eslint-config-prettier"
                                              "eslint-plugin-import"
                                              "eslint-plugin-prettier"
                                              "http-proxy-agent"
                                              "https-proxy-agent"
                                              "mocha"
                                              "mocha-lcov-reporter"
                                              "nyc"
                                              "rimraf"
                                              "sinon"
                                              "sinon-chai"
                                              "source-map-support"
                                              "ts-node"
                                              "typescript")))))))
    (inputs (list node-yaml-2.2.2
                  node-vscode-uri-3.0.8
                  node-vscode-nls-5.2.0
                  node-vscode-languageserver-types-3.17.5
                  node-vscode-languageserver-textdocument-1.0.12
                  node-vscode-languageserver-7.0.0
                  node-vscode-json-languageservice-4.1.8
                  node-request-light-0.5.8
                  node-lodash-4.17.21
                  node-ajv-8.17.1))
    (home-page "https://www.npmjs.com/package/node-yaml-language-server")
    (synopsis "YAML language server")
    (description "YAML language server")
    (license license:expat)))

(define-public yaml-language-server
  (package
   (inherit node-yaml-language-server-1.15.0)
   (name "yaml-language-server")))
