{ inputs, ... }:
{
  imports = [
    inputs.sops-nix.nixosModules.sops
  ];
  sops = {
    age.sshKeyPaths = [ "/home/xiaoqi/.ssh/id_ed25519" ];
    defaultSopsFile = ../../secrets.yaml;
  };
}
