# frozen_string_literal: true

require 'mkmf'

cxx = ENV['CXX'] || with_config('CXX')
RbConfig::MAKEFILE_CONFIG['CXX'] = cxx if cxx

%w[g O3 Wall].each do |flag|
  flag = "-#{flag}"
  $CPPFLAGS += " #{flag}" unless $CPPFLAGS.split.include? flag
end

create_makefile('ruby-farmhash/farmhash')
