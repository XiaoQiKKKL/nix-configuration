{ config, pkgs, ... }:
{
  services.sing-box = {
    enable = true;
  };
  systemd.services.sing-box = {
    after = [ "mihomo.service" ];
  };
  sops = {
    secrets.sing-box = {
      sopsFile = ./config.json;
      format = "json";
      key = "";
    };
    templates."sing-box.json" = {
      content = "${config.sops.placeholder.sing-box}";
      path = "/etc/sing-box/config.json";
      owner = "sing-box";
      group = "sing-box";
      mode = "0600";
    };
  };
}
