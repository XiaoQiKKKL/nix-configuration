{ config, ... }:
{
  nix = {
    settings = {
      experimental-features = [
        "nix-command"
        "flakes"
      ];
      substituters = [
        "https://mirrors.tuna.tsinghua.edu.cn/nix-channels/store"
        "https://mirrors.ustc.edu.cn/nix-channels/store"
      ];
      http-connections = 16;
      auto-optimise-store = true;
      trusted-users = [
        "root"
        "xiaoqi"
      ];
    };
    extraOptions = "!include ${config.sops.secrets.github_token.path}";
    gc = {
      automatic = true;
      dates = "daily";
      options = "--delete-older-than 7d";
    };
  };
  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;
}
