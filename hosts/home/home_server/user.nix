{ config, pkgs, ... }:
{
  users.users.xiaoqi = {
    isNormalUser = true;
    description = "xiaoqi";
    extraGroups = [
      "networkmanager"
      "wheel"
      "docker"
    ];
    shell = pkgs.fish;
    hashedPasswordFile = config.sops.secrets.xiaoqi_password.path;
  };
  sops.secrets.xiaoqi_password.neededForUsers = true;
}
