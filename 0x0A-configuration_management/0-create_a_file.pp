# This Puppet manifest creates a file at /tmp/school with specific permissions, ownership, and content.
file { '/tmp/school':
  ensure  => 'file',
  content => 'I love Puppet',
  owner   => 'www-data',
  group   => 'www-data',
  mode    => '0744',
}
