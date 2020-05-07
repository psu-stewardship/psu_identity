require "psu_identity/version"

module PsuIdentity
  class Error < StandardError; end
  VERSION = '0.1.0'

  require 'penn_state'
end
