

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
obj.bar
```

There will be a forced delay of 500 milliseconds between `.foo` and `.bar` calls.

Keep in mind that `Obk` is _not_ thread-safe.

## How to contribute


Make sure you build is green before you contribute
your pull request. You will need to have [Ruby](https://www.ruby-lang.org/en) 2.3+ and
[Bundler](https://bundler.io) installed. Then:

```
$ bundle update
$ bundle exec rake
```

If it's clean and you don't see any error messages, submit your pull request.
