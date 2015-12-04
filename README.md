# rubo-format - gofmt like ruby code formatting in atom

![Action shot](https://cdn.rawgit.com/pariz/rubo-format/master/rubo-format.gif)

## What is it?

This package is inspired by the way gofmt formats golang code. I wanted something similar for Ruby. This is a simple wrapper around ``rubocop`` which formats the current `.rb` file on save.

`rubo-format` comes with no settings or configuration options. Formatting is applied when the document is saved.

## How do i install it?

Make sure `rubocop` is installed:

>`rubocop -v` should output the currently installed version of `rubocop`.
`rubo-format` is tested with `rubocop` version 0.3 and higher.

If `rubocop` isn't installed, install it using:
```
gem install rubocop
```

Then either install `rubo-format` using the atom built in package manager or
install it from the command line with
```
apm install rubo-format
```

## How do i use it?

`rubo-format` does one thing, and one thing well: It optimizes your ruby code on save.
It fixes indentation, code design mistakes and improves code readability thanks to `rubocop`.

Once `rubocop` and `rubo-format` is installed. Pop open a `.rb` file, save it and watch
`rubo-format` take care of the rest.
