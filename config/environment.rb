require 'bundler'
Bundler.require

module Concerns
end

require_relative "../lib/concerns/concerns_findable"
require_relative "../lib/music_library_cli_methods"
require_relative "../lib/music_library_controller"
require_all 'lib'
