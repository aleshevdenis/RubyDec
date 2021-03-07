






[![Build status](https://ci.appveyor.com/api/projects/status/fb01sojss2q1gwot?svg=true)](https://ci.appveyor.com/project/denistreshchev/RubyDec)




)
[![License](https://img.shields.io/badge/license-MIT-green.svg)](https://github.com/denistreshchev/RubyDec/blob/master/LICENSE.txt)

First, install it:

```bash
$ gem install RubyDec
```

Then, use it like this:

```ruby
require 'RubyDec'
obj = Obk.new(obj, pause: 500)
obj.foo
# Forced 500ms delay here
obj.foo
```

There will be a forced delay of 500 milliseconds between `.foo` calls.

Keep in mind that `Obk` is _not_ thread-safe.

## How to contribute


Make sure you build is green before you contribute
your pull request. You will need to have [Ruby](https://www.ruby-lang.org/en 2.3+ and
[Bundler](https://bundler.io installed. Then:

```
$ bundle update
$ bundle exec rake
```

If it's clean and you don't see any error messages, submit your pull request.
