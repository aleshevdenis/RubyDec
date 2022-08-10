# frozen_string_literal: true

# (The MIT License)
#
# Copyright (c) 2021-2022 Denis Treshchev
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the 'Software'), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

# Obk is a decorator that adds delays between object method calls.
#
# For more information read
# {README}[https://github.com/denistreshchev/RubyDec/blob/master/README.md] file.
#
# Author:: Denis Treshchev (denistreshchev@gmail.com)
# Copyright:: Copyright (c) 2021-2022 Denis Treshchev
# License:: MIT
class Obk
  def initialize(origin, pause: 1000)
    @origin = origin
    @pause = pause / 1000.0
    @latest = Time.now
  end

  def method_missing(*args)
    left = @pause - (Time.now - @latest)
    sleep left if left.positive?
    result = if block_given?
      @origin.__send__(*args) do |*a|
        yield(*a)
      end
    else
      @origin.__send__(*args)
    end
    @latest = Time.now
    result
  end

  def respond_to?(method, include_private = false)
    @origin.respond_to?(method, include_private)
  end

  def respond_to_missing?(_method, _include_private = false)
    true
  end
end
