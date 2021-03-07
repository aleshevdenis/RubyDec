# frozen_string_literal: true

# (The MIT License)
#
# Copyright (c) 2021 Denis Treshchev
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

require 'English'
Gem::Specification.new do |s|
  s.specification_version = 2 if s.respond_to? :specification_version=
  if s.respond_to? :required_rubygems_version=
    s.required_rubygems_version = Gem::Requirement.new('>= 0')
  end
  s.rubygems_version = '2.3.3'
  s.required_ruby_version = '>=2.3'
  s.name = 'RubyDec'
  s.version = '0.0.0'
  s.license = 'MIT'
  s.summary = 'Ruby decorator to throttle object method calls'
  s.description = 'Ruby decorator to throttle object method calls'
  s.authors = ['Denis Treshchev']
  s.email = 'denistreshchev@gmail.com'
  s.homepage = 'http://github.com/denistreshchev/RubyDec'
  s.files = `git ls-files`.split($RS)
  s.test_files = s.files.grep(%r{^(test)/})
  s.rdoc_options = ['--charset=UTF-8']
  s.extra_rdoc_files = ['README.md']
  s.add_development_dependency 'minitest', '5.11.3'
  s.add_development_dependency 'rake', '12.3.3'
  s.add_development_dependency 'rdoc', '4.3.0'
  s.add_development_dependency 'rubocop', '0.62.0'
  s.add_development_dependency 'rubocop-rspec', '1.31.0'
end
