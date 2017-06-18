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
}