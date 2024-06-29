# This Puppet manifest kills any process named 'killmenow' using pkill.

exec { 'kill_killmenow_process':
  command => '/usr/bin/pkill killmenow',  # Command to kill the process
  path    => ['/usr/bin', '/bin'],        # Ensure pkill is in the PATH
  onlyif  => '/usr/bin/pgrep killmenow',  # Execute only if the process is running
}
