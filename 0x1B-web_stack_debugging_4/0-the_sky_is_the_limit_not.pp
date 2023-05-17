# increase the number of requests nginx can take

# set ULIMIT
exec {'increase nginx limit':
  commad => 'sed -i "s/15/4096/" /etc/default/nginx',
  path   => '/usr/local/bin/:/bin/'
  }

# restart nginx
exec {'nginx restart':
  command => 'nginx restart',
  path    => '/etc/init.d/'
  }
