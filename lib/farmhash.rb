# frozen_string_literal: true

require 'farmhash/version'
require 'farmhash/farmhash'

module FarmHash
  def self.fingerprint64(input)
    input = input.to_s

    Internal.fingerprint64(input)
  end
end
