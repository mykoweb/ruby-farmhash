# frozen_string_literal: true

require 'test_helper'

describe FarmHash do
  it 'returns 64-bit fingerprint' do
    assert_equal 17_830_165_298_764_423_847, FarmHash.fingerprint64('0121f8a1-cb65-45cd-9192-fd75b1784a8a')
  end
end
