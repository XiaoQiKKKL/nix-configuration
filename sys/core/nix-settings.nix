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
        "https://noctalia.cachix.org"
        "https://cache.lantian.pub/lantian"
      ];
      trusted-public-keys = [
        "noctalia.cachix.org-1:pCOR47nnMEo5thcxNDtzWpOxNFQsBRglJzxWPp3dkU4="
        "lantian:WVGO7vsRMSEN+h7Lp7kv6SAmrkEXgUGbbXm7jMDjBuQ="
      ];
      http-connections = 16;
      auto-optimise-store = true;
      trusted-users = [
        "root"
        "xiaoqi"
      ];
    };
    extraOptions = "!include ${config.sops.secrets.github_token.path}";
  };
  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;
}
