source 'https://rubygems.org'
gem 'asciidoctor'
# or specify the version explicitly
# gem 'asciidoctor', '1.5.8'

content = '_Zen_ in the art of writing https://asciidoctor.org[AsciiDoc].'
Asciidoctor.convert content, safe: :safe
