class pladmins {

  $username = $operatingsystem ? {
    'Ubuntu' => 'ubuntu',
    'CentOS' => 'centos',
    default => 'ec2-user',
  }

  Ssh_authorized_key {
    user => $username,
    type => 'ssh-rsa',
  }

  ssh_authorized_key { 'cbarker@puppetlabs.com':
    key  => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCufvNyNaJo/wI2x3Goo86Qke9Lr9pINzhPLNXNqElcMTR4wrEM9134QNztfDFf+RYKTAKOWn/75d5zFxXQRm464Pay1Omx5Fh5syUWVSXGsMfWl9jWJYTxPlRon7opIGhCFFEO+87+7qMCA3wmERWvhEhionQA16qbMrGJ1Xbq4oMX2vhMJjfgihj6rQefHIPwhR7rrfzNQclqWiq4hpTeEFvaq+xB8zMyzRLRQsyvWcSkjOOiMeN9IwDLFVGM+pKZS/gFPvDGJNFdVHbNfu0AD2lvrE6WWjpa9retNnWy/XlEcYkYq3NnWSNMKlDbo/3GtX0oLJSeHEWWy9mmWwUx'
  }

}
