{ config, pkgs, ... }:
{
  services.mihomo = {
    enable = true;
    configFile = config.sops.secrets.mihomo_config.path;
    tunMode = false;
  };
  sops.secrets.mihomo_config = {
    sopsFile = ./config.yaml;
    format = "yaml";
    key = "";
  };
  systemd.services.mihomo = {
    serviceConfig = {
      User = "sing-box";
      Group = "sing-box";
      AmbientCapabilities = [
        "CAP_NET_ADMIN"
        "CAP_NET_BIND_SERVICE"
        "CAP_NET_RAW"
      ];
      CapabilityBoundingSet = [
        "CAP_NET_ADMIN"
        "CAP_NET_RAW"
        "CAP_NET_BIND_SERVICE"
      ];
    };
  };
}
