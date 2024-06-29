# This Puppet manifest installs Flask version 2.1.0 using pip3.

package {'Flask':
  ensure   => '2.1.0',
  provider => 'pip3',
}

package { 'Werkzeug':
  ensure   => '2.1.2',
  provider => 'pip3',
  require  => Package['Flask'],
}
