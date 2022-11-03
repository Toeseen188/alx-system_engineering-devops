# install and configure an Nginx server using Puppet instead of Bash
# automation with puppet

exec { 'http config':
  provider => shell,
  command  => 'sudo apt-get update -y && sudo apt-get install -y nginx && echo "Hello World!" | sudo tee /var/www/html/index.nginx-debian.html && sudo sed -i "19i rewrite ^/redirect_me https://twitter.com/Toeseen188 permanent;" /etc/nginx/sites-enabled/default && sudo service nginx restart',
}
