  prev_setting = OpenSSL::SSL.send(:remove_const, :VERIFY_PEER)
  OpenSSL::SSL.const_set(:VERIFY_PEER, OpenSSL::SSL::VERIFY_NONE)
  OpenSSL::SSL.send(:remove_const, :VERIFY_PEER)
  OpenSSL::SSL.const_set(:VERIFY_PEER, prev_setting)