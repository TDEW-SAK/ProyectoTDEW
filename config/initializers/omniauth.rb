ca_file = File.expand_path("lib/assets/cacert.pem", Rails.root)
  
ssl_options = {}
ssl_options[:ca_path] = '/lib/assets' if Rails.env.staging?
ssl_options[:ca_file] = ca_file

Rails.application.config.middleware.use OmniAuth::Builder do
#provider :twitter, YOUR_CONSUMER_KEY, YOUR_CONSUMER_SECRET  :client_options => { :ssl => { :ca_file => "#{Rails.root}/config/" } }
# :client_options => {:ssl => {:ca_file => '/usr/lib/ssl/certs/ca-certificates.crt'}}} 
  provider  :facebook, '254002848026312', '658ec6f91f6646659543cd1044ff7cd2',
:client_options => { :ssl => ssl_options }
end