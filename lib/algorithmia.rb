$:.push File.expand_path("../lib", __FILE__)

require 'algorithmia/algorithm'
require 'algorithmia/authentication'
require 'algorithmia/errors'
require 'algorithmia/http'
require 'algorithmia/response'
require 'algorithmia/version'
require 'algorithmia/data/data_object'
require 'algorithmia/data/data_file'
require 'algorithmia/data/data_directory'

require 'singleton'

module Algorithmia

  class Client
    include Singleton
    attr_writer :api_key

    def self.algo(endpoint)
      Algorithmia::Algorithm.new(self, endpoint)
    end
  end
end