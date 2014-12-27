package 'httpd'

service 'httpd' do
    action [:start, :enable]
end

file '/var/www/html/index.html' do
    content 'hello'
end

service 'iptables' do
action :stop
end
