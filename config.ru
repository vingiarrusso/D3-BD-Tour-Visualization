use Rack::Static, :root => "#{File.dirname(__FILE__)}/", 
                  :index => "index.html"

run lambda { |env|  
  Rack::Directory.new( "#{File.dirname(__FILE__)}/public" ).call(env) 
}