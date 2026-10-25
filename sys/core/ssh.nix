{
  #Enable the OpenSSH daemon.
  services.openssh.enable = true;

  users.users.root.openssh.authorizedKeys.keys = [
    "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIJ/slSWXsUJwAq+SNxiwZvhEGjRxbL69ngV7mLn8Kyb7 xiaoq21731057382021@outlook.com"
  ];
  users.users.xiaoqi.openssh.authorizedKeys.keys = [
    "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIJ/slSWXsUJwAq+SNxiwZvhEGjRxbL69ngV7mLn8Kyb7 xiaoq21731057382021@outlook.com"
  ];
}
