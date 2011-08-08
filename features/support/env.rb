
require 'multi_json'

require 'citeproc/js'

CiteProc::JS::Style.root = File.expand_path('../../../fixtures/styles', __FILE__)
CiteProc::JS::Locale.root = File.expand_path('../../../fixtures/locales', __FILE__)
