class puppetnode::agent(
  $server,
  $runinterval = '14400'
) {
  package { ['puppet-common', 'puppet']:
    ensure => 'latest'
  }

  file { '/etc/puppet/puppet.conf':
    ensure  => 'file',
    content => template("puppetnode/agent.erb"),
    require => Package['puppet-common'],
    notify  => Service['puppet']
  }

  service { 'puppet':
    ensure  => 'running',
    enable  => true,
    require => Package['puppet']
  }
  
  # it look like we dont need this
  #apt::key { 'puppetlabs':
  #  id      => '7F438280EF8D349F',
  #  server  => 'pgp.mit.edu',
  #}
}
