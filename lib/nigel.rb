
def require_all(path)
  glob = File.join(File.dirname(__FILE__), path, '*.rb')
  Dir[glob].each do |f|
    require f
  end
end

require 'nigel/version'
require_all 'nigel/commands'

require 'google-search'
require 'open-uri'
