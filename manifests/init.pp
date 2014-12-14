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
  ssh_authorized_key { 'gabe@puppetlabs.com':
    key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDGQQQpjUTzPoSy3UzELRiW8wNyg+tTZCu+Ic1/hiBaWkh5gNeFY8sAIKGGrpUu0EQaJVNLCTVZMP23Ok0uVCtkxJP2KAtu3VQXQYjcB8E1VTzaarbEmySlAjWvFTTPr020qcMddeYFYIURZSw6wv69ufrV1QMCES8mZCLlA/mwDpn8Mwd0R72KcGGcV8IeHoJPD6a1hVMa8xpT2KE9nBCg3HqXausOEgYKM9Cz1nrWaGSPFhconztqypMgq3nf25eMtviJJ2r5IlTvWOaOMxFJzxEe82oT8amff2eUOT+Co4M7kaxkJ/l9RnVLI5D31JzcfRJBIDLyuuF9iHTesSNN',
  }


}
