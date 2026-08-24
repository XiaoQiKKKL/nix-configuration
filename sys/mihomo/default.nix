{ config, ... }:
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
}
