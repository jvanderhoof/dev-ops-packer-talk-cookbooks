include_recipe "apache2"

directory '/var/www/test' do
  owner 'www-data'
  group 'www-data'
end

cookbook_file '/var/www/test/index.php' do
  owner 'www-data'
  group 'www-data'
  source 'index.php'
end

web_app "test-site" do
  server_name "test-site.localhost"
  server_aliases ["www.test-site.localhost"]
  docroot "/var/www/test"
end

