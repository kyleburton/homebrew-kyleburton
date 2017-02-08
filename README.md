# Kyle's Homebrew Tap

This is my personal homebrew (and linuxbrew) tap.  It contains things such as:

* [bake](https://github.com/kyleburton/bake)

## How do I install these formulae?

See also: [Using `brew tap`](https://github.com/Homebrew/brew/blob/master/docs/brew-tap.md)


```
brew tap --full github/kyleburton https://github.com/kyleburton/homebrew-kyleburton.git
brew install <formula>
brew install bake                     # on OS X
brew install bake --without-bash      # Linux
```

## How do I create a new Formula?

Have a look in the `./Formula` directory at the existing formula.  Have a look at the following resources:

* https://github.com/Homebrew/brew/blob/master/docs/Formula-Cookbook.md (read this first)
* https://github.com/Homebrew/brew/blob/master/docs/Acceptable-Formulae.md

## Documentation

`brew help`, `man brew` or check [Homebrew's documentation](https://github.com/Homebrew/brew/tree/master/docs#readme).

* https://github.com/Homebrew/brew/blob/master/docs/How-to-Create-and-Maintain-a-Tap.md
