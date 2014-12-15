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
  
  ssh_authorized_key { 'james.jones@puppetlabs.com':
    key  => 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC5mHT+7JTGIq2PzFauCMMMr/bB2u/KCRPUYAGpHpcme8XBHi6Gy9FO5qzj6LsPquQV7hAM73c05zlZHnnBx/6uoqkKZeiJIIIVlBHlM8De7G0P8Elt/mHQW5I+KZHvLPTQJVNa7RjzxBdbzLMDLzhSxuTtsJeTJrjmCEw6YMDnW7jHs4XkA4f2pn4qqU0fEC+5sMhxmj26Ea0z3bE4SWnrJxqbvcl4xVL3LWuvd4IUGRbbix+ljqNBBjY51WahEjtbsvMrM42tO4bLPlV1NCuI6JvSmltABMoC/8sno323/zjYrsaCkfYXunWScOsR9hM6/mZygCktZHmduQ19uj25'
  }
  
}
