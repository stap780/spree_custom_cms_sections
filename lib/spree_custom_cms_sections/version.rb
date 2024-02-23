module SpreeCustomCmsSections
  VERSION = '0.0.5'.freeze

  module_function

  # Returns the version of the currently loaded SpreeCustomCmsSections as a
  # <tt>Gem::Version</tt>.
  def version
    Gem::Version.new VERSION
  end
end
