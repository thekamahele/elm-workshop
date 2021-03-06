Part 8
======

The instructor will paste notes from the lesson, including code examples from
Q&A, in [this document](https://docs.google.com/document/d/1ApuSOk9DP0YsQrxhW7-WE8UOEAV4PPnLDDeqUOL2o5k/edit?usp=sharing).

## Installation

```bash
elm-package install
```

(Answer `y` at the prompt. In rare cases a known issue can cause the download
to fail; in that case, just run `elm-package install` again.)

## Building

```bash
elm-live Main.elm --open --output=elm.js
```

## Running Tests

```bash
cd test
elm-package install
elm-test Test.elm
```

## References

* [Using Elm packages](https://github.com/elm-lang/elm-package/blob/master/README.md#basic-usage)
* [elm-test documentation](http://package.elm-lang.org/packages/project-fuzzball/test/latest)
* [`(<|)` documentation](http://package.elm-lang.org/packages/elm-lang/core/4.0.0/Basics#<|)
