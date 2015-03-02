exec {'apt-update':
    command => '/usr/bin/apt-get update'
}

#user_homedir {'dev':
  #group    => 'sudo',
  #fullname => 'developer',
  #ingroups => []
#}
#users {'dev':
  #ensure => present
#}



package{'zsh':
  require => Exec['apt-update'],
  ensure  => installed,
}
package{'git':
  require => Exec['apt-update'],
  ensure  => installed,
}
